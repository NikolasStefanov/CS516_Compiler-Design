open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

let explode (s:string) = List.init (String.length s) (String.get s)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list

let string_of_stream (ls: stream) : string =
  let string_of_elt (elem: elt) : string =
    begin match elem with
    | L lbl -> Printf.sprintf "L\t%s" lbl
    | I (lbl, ins) -> Printf.sprintf "I\t%s\t%s" lbl (Llutil.string_of_insn ins)
    | T term -> Printf.sprintf "T\t%s" (Llutil.string_of_terminator term)
    | G (lbl, gdec) -> Printf.sprintf "G\t%s\t%s" lbl (Llutil.string_of_gdecl gdec)
    | E (lbl, insn) -> Printf.sprintf "E\t%s\t%s" lbl (Llutil.string_of_insn insn)
  end in
  List.map string_of_elt ls |>
  String.concat "\n"

let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

let string_of_context (c : Ctxt.t ) =
  List.map (fun (str, (typ, op)) -> Printf.sprintf "%s\t->\t%s\t%s"
  str (Llutil.string_of_ty typ) (Llutil.string_of_operand op)) c |>
  String.concat "\n"

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let ll_deref_ty = function
| Ll.Ptr t -> t
| _ -> failwith "Dereference of not a pointer type"

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Ll.Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

let array_sub_type = function
  | Ptr Struct [I64; Array(size, sub)] -> sub
  | _ -> failwith "Bad Array type"


(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Generates a new unique identifer that has never been used before. *)
let new_sym = gensym ""

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]

    (*Given an array, fill up all the elements with those specified by the operand list argument*)
let array_stream (arr_typ: Ll.ty) (sub_typ: Ll.ty) (arr: Ll.operand list) (ptr: Ll.operand) : stream =
  List.fold_left (fun ((ind: int64), prev) elem -> (Int64.succ ind, let elem_ptr = gensym "ind" in
      prev @ [  
        I (elem_ptr, Ll.Gep (arr_typ, ptr, [Const 0L; Const 1L; Const ind] ) );
        I (new_sym, Ll.Store (sub_typ, elem, Ll.Id elem_ptr) )
      ])
    ) (0L, []) arr |>
  snd

(* Bool to Int*)
let bool_help (b:bool): int64 = 
  match b with
  | true -> 1L
  | false -> 0L

let node_err (f: unit -> 'a) (arg: 'c node) : 'a =
  try f () with
  err -> begin
    let msg = Printexc.to_string err in
    Printf.sprintf "%s\nNode Error: %s\n" msg (Astlib.string_of_exp arg)
    |> failwith
  end

  (*Given a label which corresponds to an OAT identifier, give back the LLVM
  ptr to the memory location corresponding to the identifier. *)
let cmp_id_ptr (c:Ctxt.t) (label: Ll.lbl) : Ll.ty * Ll.operand =
   Ctxt.lookup label c

(*
  Helper function for cmp_exp. Compiles a single binary operation*)
let rec cmp_binop (c:Ctxt.t) (op:Ast.binop) (first:Ast.exp node) (second:Ast.exp node): Ll.ty * Ll.operand * stream = 
  let (first_ty, first_op, first_str) = cmp_exp c first in
  let (second_ty, second_op, second_str) = cmp_exp c second in
  let ret_uid = gensym "bop" in
  let ((ret_ty:Ll.ty), (ret_op:Ll.operand), (ret_str:stream)) = begin match op with
  | Add -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Add, Ll.I64, first_op, second_op))) ] ) end 
  | Sub -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Sub, Ll.I64, first_op, second_op))) ] ) end 
  | Mul -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Mul, Ll.I64, first_op, second_op))) ] ) end 
  | Eq  -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Icmp (Ll.Eq, Ll.I64, first_op, second_op))) ] ) end 
  | Neq -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Icmp (Ll.Ne, Ll.I64, first_op, second_op))) ] ) end 
  | Lt  -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Icmp (Ll.Slt, Ll.I64, first_op, second_op))) ] ) end 
  | Lte -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Icmp (Ll.Sle, Ll.I64, first_op, second_op))) ] ) end 
  | Gt  -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Icmp (Ll.Sgt, Ll.I64, first_op, second_op))) ] ) end 
  | Gte -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Icmp (Ll.Sge, Ll.I64, first_op, second_op))) ] ) end 
  | And -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.And, Ll.I1, first_op, second_op))) ] ) end 
  | Or  -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Or, Ll.I1, first_op, second_op))) ] ) end 
  | IAnd  -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.And, Ll.I64, first_op, second_op))) ] ) end 
  | IOr -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Or, Ll.I64, first_op, second_op))) ] ) end 
  | Shl -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Shl, Ll.I64, first_op, second_op))) ] ) end 
  | Shr -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Lshr, Ll.I64, first_op, second_op))) ] ) end 
  | Sar -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Ashr, Ll.I64, first_op, second_op))) ] ) end 
  end in
  (ret_ty, ret_op, first_str @ second_str @ ret_str)
and cmp_unop (c:Ctxt.t) (op: Ast.unop) (exp: Ast.exp node): Ll.ty * Ll.operand * stream =
  let (exp_ty, exp_op, exp_str) = cmp_exp c exp in
  let ret_uid = gensym "uop" in
  let ((ret_ty:Ll.ty), (ret_op:Ll.operand), (ret_str:stream)) = begin match op with
  | Neg     -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Mul, Ll.I64, exp_op, (Ll.Const (-1L) ) ))) ] ) end 
  | Lognot  -> begin (Ll.I1, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Xor, Ll.I1, exp_op, (Ll.Const 1L)))) ] ) end 
  | Bitnot  -> begin (Ll.I64, (Id ret_uid), [ I (ret_uid, (Ll.Binop (Ll.Xor, Ll.I64, exp_op, Ll.Const 0xFFFFFFFFFFFFFFFFL))) ] ) end 
  end in
  (ret_ty, ret_op, exp_str @ ret_str)
and cmp_id (c:Ctxt.t) (label: Ll.lbl) : Ll.ty * Ll.operand * stream =
  let (ret_typ, ret_op) = cmp_id_ptr c label in
  (* Printf.printf "Working with type %s\n" (Llutil.string_of_ty ret_typ); *)
  begin match ret_typ with
  | Fun (_, _) -> ret_typ, ret_op, []
  | _ ->
    begin match ret_op with
    | Gid name -> begin
        let symb = gensym "glob" in
        let sub_type = ll_deref_ty ret_typ in
        (
          sub_type,
          Ll.Id symb,
          [ I (symb, Ll.Load (ret_typ, Ll.Gid name))]
        )
      end
    | Id name -> begin
        let symb = gensym "local" in
        let sub_type = ll_deref_ty ret_typ in
        (
          sub_type,
          Ll.Id symb,
          [ I (symb, Ll.Load (ret_typ, Ll.Id name))]
        )
      end
    | _ -> (ret_typ, ret_op, [])
    end
  end
(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)
and cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  (* Printf.printf "Current expression \n%s\n\n" (Astlib.string_of_exp exp); *)
  node_err begin fun _ -> match exp.elt with
  | CNull rty -> (cmp_rty rty, Null, [])
  | CBool b -> (I1, Const (bool_help b), []) 
  | CInt i -> (I64, Const i, [])   
  | CStr s -> begin (*Create an i8 array that represents the string. Remember the char[]
    must be completely compatible with all the C functions that can be called on it.
    It therefore has to be an 8-byte array that is null-terminated. *)
    let str_uid = gensym "strr_arr" in
    let size = String.length s in
    let str_type = cmp_ty (TRef RString) in
    let op_list = explode s |>
      List.map Char.code |>
      List.map Int64.of_int |>
      List.map (fun i -> Ll.Const i) in
      (*Create space for an int64 array*)
      let (allc_typ, allc_ptr, allc_stream) = Ll.Const (Int64.of_int size) |> oat_alloc_array Ast.TInt in
      (*This fills the i64 array*)
      let fill_stream = array_stream allc_typ Ll.I64 op_list allc_ptr in
    (
      str_type,
      Ll.Id str_uid,
      allc_stream @ fill_stream @ [
        I (str_uid, Ll.Call(str_type, Gid "string_of_array", [allc_typ, allc_ptr]) )
      ] (*Leverage the built in string-creation function to create a string from int array*)
    )
    end  
  | CArr (t,ls) -> begin
      let size = List.length ls in
      let (arr_typ, arr_ptr, allc_stream) = Ll.Const (Int64.of_int size) |> oat_alloc_array t  in
      let sub_type = arr_typ |> array_sub_type in
      let exp_list = List.map (cmp_exp c) ls in
      let op_list = List.map (fun (a,b,c) -> b) exp_list in
      let arg_stream = List.map (fun (a,b,c) -> c) exp_list |> List.flatten in
      (
        arr_typ,
        arr_ptr,
        allc_stream @ arg_stream @ array_stream arr_typ sub_type op_list arr_ptr
      )
    end
  | NewArr (t,node) -> begin
      (* The size of the array to be made*)
      let (n_ty, n_op, n_str) = cmp_exp c node  in
      let (alloc_ty, alloc_op, alloc_str) = oat_alloc_array t n_op in
      (alloc_ty, alloc_op, n_str @ alloc_str)
    end
  | Id i -> begin
    cmp_id c i
    end 
  | Index (node1,node2) -> begin
      let (ll_arr_typ, first_op, first_str) = cmp_exp c node1 in
      let (sec_ty, sec_op, sec_str) = cmp_exp c node2 in
      let ptr = gensym "ptr" in
      let elem = gensym "elem" in
      begin match ll_arr_typ with
        | Ptr( Struct [Ll.I64; Array (size, sub_typ)] ) -> begin
          let gep_ins = Ll.Gep (ll_arr_typ, first_op, [Const 0L; Const 1L; sec_op]) in
          let strm = first_str @ sec_str @ [
            I (ptr, gep_ins);
            I (elem, Ll.Load (Ptr sub_typ, Ll.Id ptr))] in
            (
              sub_typ,
              Ll.Id elem,
              strm
            )
          end
        | _ -> Printf.sprintf "Bad array type\nGiven Type: %s\nNode: %s\n" (Llutil.string_of_ty ll_arr_typ) (Astlib.string_of_exp node1)
                |> failwith
      end
    end
  | Call (node, ls) -> begin
      let (fun_ty, fun_op, fun_str) = cmp_exp c node in
      let full_arg_tups = List.map (cmp_exp c) ls in
      let arg_ls = List.map (fun (a,b,c) -> (a,b)) full_arg_tups in
      let arg_str = List.map (fun (a,b,c) -> c ) full_arg_tups |> List.flatten in
      let return = gensym "ret" in
      begin match fun_ty with
      | Fun (arg_typs, ret_typ) -> 
          (
            ret_typ,
            Ll.Id return,
            fun_str @ arg_str @ [
              I (return, Ll.Call( ret_typ, fun_op, arg_ls))
            ]
          )
      | _ -> Printf.sprintf "Bad Function Type\nGiven Type: %s\nNode: %s\n" (Llutil.string_of_ty fun_ty) (Astlib.string_of_exp node)
              |> failwith
      end
    end
  | Bop (bop, node1, node2) -> cmp_binop c bop node1 node2
  | Uop (unop, node) -> cmp_unop c unop node 
  end exp

(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)
let rec fold_cmp_stmt (initial: Ctxt.t) (rt: Ll.ty) (ls:Ast.stmt node list) : Ctxt.t * stream =
  List.fold_left (fun (cont, old_stream) stmt -> 
    let (new_cont, new_stream) = cmp_stmt cont rt stmt in
    (new_cont, old_stream @ new_stream)
    ) (initial, []) ls

and cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  (* Astlib.string_of_stmt stmt |> Printf.printf "Current Statement:\n%s\n\n"; *)
  begin match stmt.elt with
  | Assn (node1,node2) -> begin
    (*Compile what we will assign the value to. *)
    (* Printf.printf "Assigning %s to %s\n" (Astlib.string_of_exp node1) (Astlib.string_of_exp node2); *)
    (* Printf.printf "Context of \n%s\n" (string_of_context c); *)
    let (val_ty, val_op, val_stream) = cmp_exp c node2 in
      match node1.elt with
      | Id label -> begin
        let (ptr_typ, ptr_op) = cmp_id_ptr c label in

        (label, (Ll.Ptr val_ty, ptr_op) )::c,
        val_stream @ [
          I (new_sym, Ll.Store (val_ty, val_op, ptr_op) )
        ]
        end
      | Index (arr, ind) -> begin
        let (ll_arr_typ, first_op, first_str) = cmp_exp c arr in
        let (ind_typ, ind_op, ind_str) = cmp_exp c ind in
        begin match ll_arr_typ with
        | Ptr( Struct [Ll.I64; Array (size, sub_typ)] ) -> begin
          let ptr = gensym "ind_assign" in
          let gep_ins = Ll.Gep (ll_arr_typ, first_op, [Const 0L; Const 1L; ind_op]) in
          let strm = val_stream @ first_str @ ind_str @ [
            I (ptr, gep_ins);
            I (new_sym, Ll.Store (val_ty, val_op, Ll.Id ptr))] in
            (
              c,
              strm
            )
          end
        | _ -> Printf.sprintf "Bad array type\nGiven Type: %s\nNode: %s\n" (Llutil.string_of_ty ll_arr_typ) (Astlib.string_of_exp node1)
                |> failwith
        end
        end
      | _ -> failwith "Cannot assign to non-mutable type"
    end
  | Decl (id, exp_node) -> 
    begin
      (*Printf.printf "Decl node is %s\n" (Astlib.string_of_exp exp_node);*)
    let old_ty,old_oper,old_stream = cmp_exp c exp_node in
    let (new_cont: Ctxt.t) = (id, (Ptr old_ty, Id id))::c in
    (*Printf.printf "Context of \n%s\n" (string_of_context new_cont);*)
    (new_cont,
    old_stream @
    [ I (id, Alloca old_ty);
      I (new_sym, Store (old_ty,old_oper, Id id))]
    )
    end
  | Ret opt -> 
    (* Printf.printf "Return context \n%s\n" (string_of_context c); *)
    begin match opt with
    | Some node ->
      let ret_id = gensym "fun_return" in
      let old_ty,old_oper,old_stream = cmp_exp c node in
      (c, 
      old_stream @ 
      [
        I (ret_id, Ll.Bitcast (old_ty, old_oper, rt));
        T (Ret (rt, Some (Ll.Id ret_id)))]
      )
    | None -> 
      if rt = Void 
      then 
        (c, 
        [T (Ret (Void, None))]
        )
      else failwith "Bad Input"
    end
  | SCall (node, ls) ->  begin
      let (fun_ty, fun_op, fun_str) = cmp_exp c node in
      let full_arg_tups = List.map (cmp_exp c) ls in
      let arg_ls = List.map (fun (a,b,c) -> (a,b)) full_arg_tups in
      let arg_str = List.map (fun (a,b,c) -> c ) full_arg_tups |> List.flatten in
      begin match fun_ty with
      | Fun (arg_typs, ret_typ) -> 
          (
            c,
            fun_str @ arg_str @ [
              I (new_sym, Ll.Call( ret_typ, fun_op, arg_ls))
            ]
          )
      | _ -> Printf.sprintf "Bad Function Type\nGiven Type: %s\nNode: %s\n" (Llutil.string_of_ty fun_ty) (Astlib.string_of_exp node)
              |> failwith
      end
    end
  | If (node, ls1, ls2) -> begin
    (*if node then ls1, else ls2*)
    let c_ty, c_op, c_stream = cmp_exp c node in
    let ctxt_1, first_stream = ls1 |> fold_cmp_stmt c rt in
    let ctxt_2, second_stream = ls2 |> fold_cmp_stmt c rt in
    let first_label = gensym "if" in
    let second_label = gensym "else" in
    let third_label = gensym "fi" in
    c,
    begin c_stream @ [
      T (Cbr (c_op, first_label, second_label))
    ] @ [
      L first_label
    ] @ first_stream @ [
      T (Br third_label);
      L second_label
    ] @ second_stream @ [
      T (Br third_label);
      L third_label
    ] end
    end
  | For (vdecl_ls, exp_opt, stmt_opt, node_ls) -> begin
    (*Compute a For loop by converting it into a while loop*)
    let local_decl (id: uid) (node: Ast.exp node) : Ctxt.t * stream =
      begin
        let new_id = gensym id in
        let old_ty,old_oper,old_stream = cmp_exp c node in
        ( (id, (Ptr old_ty, Ll.Id new_id))::
        c,
        old_stream @
        [ I (new_id, Alloca old_ty);
          I (new_sym, Store (old_ty, old_oper, Ll.Id new_id))]
        )
        end
    in
    (*idk wtf this is, I drank too much Jack Daniel's*)
    let d_cont, d_stream = List.fold_left (fun (old_cont, old_stream) (id, node) -> 
      let (new_cont, new_stream) = local_decl id node in
      new_cont, (old_stream @ new_stream) ) (c, []) vdecl_ls in
    (*Extend what we give the while to contain the for-increment statement*)
    let do_block = begin match stmt_opt with
      | Some node -> node_ls @ [node]
      | None -> node_ls 
      end in
    
    let while_cond = begin match exp_opt with
      | Some node -> node
      | None -> (*If they don't give us a condition we continue indefinitely I guess*)
        {elt= CBool true; loc = stmt.loc}
      end in

    let while_cont, while_stream = cmp_stmt d_cont rt {
      elt = While (while_cond, do_block);
      loc = stmt.loc
    } in

    (c, d_stream @ while_stream)
      
    end
  | While (node, ls) -> 
    begin
    let con_ty, con_op, con_stream = cmp_exp c node in
    let full_ctxt, do_stream = ls |> fold_cmp_stmt c rt in
    let while_label = gensym "while" in
    let do_label = gensym "do" in
    let after_label = gensym "elihw" in
    c,
    [ T (Br while_label);
      L while_label ]
    @ con_stream @ [
      T (Cbr (con_op, do_label, after_label));
      L do_label
    ] @ do_stream @ [
      T (Br while_label);
      L after_label
    ]
    end
  end
(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code @ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)
let rec cmp_gtype (exp: Ast.exp ) : Ll.ty =
  begin match exp with
  | CNull _ -> Ptr( Ll.Void )
  | CBool b -> Ptr( cmp_ty TBool )
  | CInt i -> Ptr( cmp_ty TInt )
  | CStr s -> Ptr( cmp_ty (TRef RString) )
  | CArr (ty, ls) -> Ptr (Ptr (Struct [Ll.I64 ;Array(0, cmp_ty ty)]))
  | NewArr (ty, exp_node) -> cmp_ty (TRef (RArray ty))
  | Id i -> cmp_ty (TRef RString)
  | Index (node1, _) -> cmp_gtype node1.elt
  | Call (_, _) -> failwith "Bad Input in cmp_global_ctxt"
  | Bop(_,_,_) -> failwith "Bad Input in cmp_global_ctxt"
  | Uop (_,_) -> failwith "Bad Input in cmp_global_ctxt"
  end
  
let cmp_global_ctxt_help (c:Ctxt.t) (decl:Ast.decl) : Ctxt.t (*type t = (Ast.id * (Ll.ty * Ll.operand)) list*)=
  begin match decl with
    | Gvdecl gdecl_node ->
      let ret_id = gdecl_node.elt.name in
      let ret_ty = cmp_gtype gdecl_node.elt.init.elt in
      (ret_id, (ret_ty, Ll.Gid (Platform.mangle ret_id)))::c
    | Gfdecl fdecl_node -> 
      let ret_id = fdecl_node.elt.fname in
      let args = List.map fst fdecl_node.elt.args |> List.map cmp_ty in
      let (ret_ty: Ll.ty) = fdecl_node.elt.frtyp |> cmp_ret_ty in
      (ret_id, (Ll.Fun (args, ret_ty), Ll.Gid (Platform.mangle ret_id)))::c
  end

  let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left cmp_global_ctxt_help c p 
      
(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)
let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let {frtyp: ret_ty; fname: id; args: (ty * id) list; body: block} = f.elt in
  let ret_type = cmp_ret_ty frtyp in
  let arg_types = List.map fst args |> List.map cmp_ty in
  let cont_types = List.map (fun t -> Ll.Ptr t) arg_types in
  let arg_names = List.map snd args in
  let temp_args = List.map gensym arg_names in
  let real_names = List.map gensym arg_names in
  let arg_pairs = List.combine temp_args real_names |> List.combine arg_types in
  let (arg_stream: stream )= List.map begin fun (typ, (argument, local)) -> [
    I (local, Ll.Alloca typ);
    I (new_sym, Ll.Store (typ, Ll.Id argument, Ll.Id local))
  ]
    end arg_pairs |> List.flatten in
  let (arg_context: Ctxt.t) = List.map (fun str -> Ll.Id str) real_names |> List.combine cont_types |> List.combine arg_names in
  let full_context = arg_context @ c in
  let (new_cont, ll_stream) = cmp_block full_context ret_type body in
  let full_stream = arg_stream @ ll_stream in
  (* Printf.printf "\nStream\n%s\n" (string_of_stream full_stream); *)
  let ret_cfg, gist = List.rev full_stream |> cfg_of_stream in
  (* Printf.printf "\nCFG\n%s\n" (Llutil.string_of_cfg ret_cfg); *)
  ({f_ty=(arg_types, ret_type); f_param=temp_args; f_cfg=ret_cfg}, gist)



(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)
let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  try begin match e.elt with
  | CNull rty -> begin match cmp_rty rty with
    (*Only I8, struct, and fun types are possible returns from cmp_rty*)
    | I8 -> (Ptr (I8), GNull), []
    | Struct type_list -> (Ptr (Struct type_list), GNull), []
    | Fun (arg_list, ret_type) -> (Ptr (Fun (arg_list, ret_type)), GNull), []
    | _ -> failwith "Should not be possible"
    end
  | CBool b -> ((I1, GInt (bool_help b)), [])
  | CInt i -> ((I64, GInt i), [])     
  | CStr s -> begin
    let size = String.length s |> Int.succ in
    let str_typ, str_init = (Ll.Array (size, Ll.I8), GString s) in
    let str_glob = gensym "str_global" in
    let better_type = Ptr I8 in
    let cast_init = Ll.GBitcast ( Ll.Ptr str_typ, Ll.GGid str_glob, better_type) in
    (better_type, cast_init), [str_glob, (str_typ, str_init)]
    end
  | CArr (t,ls) -> 
    begin
    let subtype = 
      begin match t with
      | Ast.TRef (Ast.RString) -> Ll.Array ((List.length(ls)) + 1, Ll.I8)
      | _ -> cmp_ty t
    end in
    let bad_type = Ll.Struct ([Ll.I64; Ll.Array ((List.length(ls), subtype))]) in
    let arg_decls, arg_streams_ls = List.map (cmp_gexp c) ls |> List.split in
    let arg_streams = List.flatten arg_streams_ls in
    let bad_array = (Ll.Array(List.length arg_decls, subtype) ,Ll.GArray arg_decls) in
    let real_size = (Ll.I64, Ll.GInt (Int64.of_int (List.length ls))) in
    let (bad_init: Ll.ginit) = Ll.GStruct ([real_size; bad_array]) in
    let better_type = Ll.Ptr (Ll.Struct [Ll.I64; Ll.Array (0, subtype)]) in
    let temp_glob = gensym "unused_global" in
    let (pre_init: Ll.gid * Ll.gdecl) = temp_glob, (bad_type, bad_init) in
    let better_init = Ll.GBitcast ( Ll.Ptr bad_type, Ll.GGid temp_glob, better_type) in
    
    (( better_type, better_init), arg_streams @ [pre_init] )
    end

  | _ -> failwith "Bad Input in cmp_gexp"
  end with
  err -> begin
    let msg = Printexc.to_string err in
    Printf.sprintf "%s\nNode: %s\n" msg (Astlib.string_of_exp e)
    |> failwith
  end


(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) ->
      Ctxt.add c i (t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, gs' @ [(gd.name, ll_gd)] @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }
