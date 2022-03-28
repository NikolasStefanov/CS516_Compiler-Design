open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)

let rec substruct (big: Ast.field list) (small: Ast.field list) : bool =
  match small with
  | [] -> true
  | head::t -> if List.mem head big then substruct big t else false

let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  (* Printf.printf "Subtype was called.\nNode 1:\t%s\nNode 2:\t%s\n"
  (Astlib.string_of_ty t1) (Astlib.string_of_ty t2); *)
  match t2 with
  | TBool -> t1 = TBool
  | TInt -> t1 = TInt
  | TRef( rty2 ) -> begin
    match t1 with
    | TRef( rty1 ) -> subtype_ref c rty1 rty2
    | _ -> false
  end
  | TNullRef( rty2 ) ->  begin
    match t1 with
    | TRef( rty1 ) -> subtype_ref c rty1 rty2
    | TNullRef( rty1 ) -> subtype_ref c rty1 rty2
    | _ -> false
  end

(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  (* Printf.printf "Subtype ref was called.\nNode 1:\t%s\nNode 2:\t%s\n"
  (Astlib.ml_string_of_reft t1) (Astlib.ml_string_of_reft t2);  *)
  match t1 with
  | RString -> (*A string only matches with other strings*)
    begin match t2 with
    | RString -> true
    | _ -> false;
    end
  | RStruct(t1id:id) -> begin
    match lookup_struct_option t1id c with
    | None -> false
    | Some( t1fields ) -> begin match t2 with
      | RStruct(t2id: id) -> begin match lookup_struct_option t2id c with
          | None -> false
          | Some (t2fields) -> substruct t1fields t2fields
        end
      | _ -> false
      end
    end
  | RArray(typ1:ty) -> 
    begin match t2 with
    | RArray (typ2: ty) -> 
      if(typ1 = typ2)
      then true
      else false
    | _ -> false
    end
  | RFun ( (small_args: ty list), (small_return_type:ret_ty) ) -> begin
    match t2 with
    | RFun( (big_args: ty list), (big_return_type:ret_ty) ) -> begin
      if List.compare_lengths small_args big_args <> 0 then false else
      List.fold_left2 (fun (prev:bool) small big -> ((subtype c big small) && prev)) true small_args big_args
      && subtype_ret c small_return_type big_return_type
      end
    | _ -> false
    end
and subtype_ret (c : Tctxt.t) (t1 : Ast.ret_ty) (t2 : Ast.ret_ty) : bool =
    match t1 with
    | RetVoid -> begin match t2 with
      | RetVoid -> true
      | _ -> false
      end
    | RetVal( t1 ) -> begin match t2 with
      | RetVal( t2 ) -> subtype c t1 t2
      | _ -> false
      end


(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  begin match t with
  | TBool -> ()
  | TInt -> ()
  | TNullRef rty 
  | TRef rty -> 
    begin match rty with
    | RString -> ()
    | RStruct id -> 
      begin match Tctxt.lookup_struct_option id tc with
      | Some _ -> ()
      | None -> type_error l "Didn't find in context"
      end
    | RArray ty -> typecheck_ty l tc ty
    | RFun (ty_list, ret_ty) -> 
      begin match ret_ty with
      | RetVoid -> ()
      | RetVal ty -> typecheck_ty l tc ty
      end
    end
  end

(* A helper function to determine whether a type allows the null value *)
let is_nullable_ty (t : Ast.ty) : bool =
  match t with
  | TNullRef _ -> true
  | _ -> false

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oat.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)

let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  (* Printf.printf "Typechecking node %s\n" (Astlib.ml_string_of_exp e); *)
  match e.elt with
  | CNull rty -> TNullRef rty
  | CBool _ -> TBool
  | CInt _ -> TInt
  | CStr _ -> TRef RString
  | Id id ->  
    begin match Tctxt.lookup_option id c with
    | Some x -> x
    | None -> type_error e "Type id not found"
    end
  | CArr (ty, exp_node_list) -> 
    if List.map (typecheck_exp c) exp_node_list |> List.fold_left (fun prev elem -> prev && (elem=ty)) true
    then (Ast.TRef (Ast.RArray ty))
    else type_error e "Array had different types"
  | NewArr (ty, exp_node) -> 
    begin match typecheck_exp c exp_node with
    | Ast.TInt -> begin
      match ty with
        | TRef( RArray subty) -> type_error e "Multi-dimensional array without initializers"
        | _ -> Ast.TRef (Ast.RArray ty)
      end
    | _ -> type_error e "Bad NewArr"
    end
  | NewArrInit (ty, exp_node, id, exp_node2) -> 
    begin match typecheck_exp c exp_node with
      | TInt -> (*We're good for this bit*)
        let elem_typ = typecheck_exp c exp_node2 in
        if subtype c elem_typ ty
        then TRef (RArray ty)
        else Astlib.string_of_exp exp_node2 |> Printf.sprintf "Bad array Initializer typing of %s" |> type_error e
      | _ -> type_error e "Array indices must be of Int type"
    end
  | Index (exp_node, exp_node2) -> 
    let arr = typecheck_exp c exp_node in
    let int1 = typecheck_exp c exp_node2 in
    begin match arr with
    | Ast.TRef (Ast.RArray ty) -> 
      begin
        match int1 with
        | TInt -> ty
        | _ -> type_error e "Indexing with non-int"
      end
    | _ -> type_error e "Not indexing an array"
    end
  | Length exp_node -> 
    let ty = typecheck_exp c exp_node in
    begin match ty with
    | TRef (RArray ls) -> TInt
    | _ -> type_error e "Length of non-array"
    end
  | CStruct (id, given) -> 
    begin match Tctxt.lookup_struct_option id c with
    | None -> type_error e "No Struct"
    | Some expected_fields -> 
      (* Make sure all the names and types of each of the structs match perfectly *)
      if List.compare_lengths given expected_fields <> 0 then
        type_error e "Struct list lengths do not match" else

      let sorted_given = List.sort (fun (str1, _) (str2, _) -> String.compare str1 str2)
        given in
      let sorted_expected = List.sort (fun elem1 elem2 -> String.compare elem1.fieldName elem2.fieldName)
        expected_fields in
      let good_names = List.fold_left2 (fun prev left right -> prev && (fst left = right.fieldName)) true sorted_given sorted_expected in
      if not good_names then type_error e "Struct names do not match" else
      let good_types = List.split sorted_given |> snd |> List.map (typecheck_exp c) |>
        List.fold_left2 (fun prev left right -> prev && (left.ftyp=right)) true sorted_expected in
      if not good_types then type_error e "Struct types do not match" else
      TRef (RStruct id)
    end 
  | Proj (exp_node, id) -> 
    begin match typecheck_exp c exp_node with
    | TRef (RStruct id2) -> 
      begin match Tctxt.lookup_field_option id2 id c with
      | Some x -> x
      | None -> type_error e "Bad field Proj"
      end
    | _ -> type_error e "Cannot Proj on non-struct"
    end
  | Call (exp_node, exp_node_list) -> 
    let types = List.map (typecheck_exp c) exp_node_list in
    begin match typecheck_exp c exp_node with
    | TRef (RFun (args, RetVal ret)) -> 
      if List.compare_lengths types args <> 0 then type_error e "Call arg lists different lengths" else
      if(List.fold_left2 (fun previous (given:Ast.ty) (expected:Ast.ty) ->
        (* Printf.printf "Comparing %s and %s\n" (Astlib.string_of_ty given) (Astlib.string_of_ty expected); *)
        previous && subtype c given expected )
        true types args)
      then ret
      else type_error e "Args not same types"
    | _ -> type_error e "Not a function"
    end
  | Bop (binop, exp_node, exp_node2) -> 
    let first = typecheck_exp c exp_node in
    let second = typecheck_exp c exp_node2 in
    begin match binop with
    | Add -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in Add"
    | Sub -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in Sub"
    | Mul -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in Mul"
    | Eq -> if (subtype c first second) && (subtype c second first) then TBool else type_error e "Bad Typing in Eq"
    | Neq -> if (subtype c first second) && (subtype c second first) then TBool else type_error e "Bad Typing in Neq"
    | Lt -> if (first == TInt) && (second = TInt) then TBool else type_error e "Bad Typing in Lt"
    | Lte -> if (first == TInt) && (second = TInt) then TBool else type_error e "Bad Typing in Lte"
    | Gt -> if (first == TInt) && (second = TInt) then TBool else type_error e "Bad Typing in Gt"
    | Gte -> if (first == TInt) && (second = TInt) then TBool else type_error e "Bad Typing in Gte"
    | And -> if (first == TBool) && (second = TBool) then TBool else type_error e "Bad Typing in And"
    | Or -> if (first == TBool) && (second = TBool) then TBool else type_error e "Bad Typing in Or"
    | IAnd -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in IAnd"
    | IOr -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in IOr"
    | Shl -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in IShl"
    | Shr -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in Shr"
    | Sar -> if (first == TInt) && (second = TInt) then TInt else type_error e "Bad Typing in Sar"
    end
  | Uop (unop, exp_node) ->
    let first = typecheck_exp c exp_node in
    begin match unop with
    | Neg -> if (first == TInt) then TInt else type_error e "Bad Typing in Neg"
    | Lognot -> if (first == TBool) then TBool else type_error e "Bad Typing in Lognot"
    | Bitnot -> if (first == TInt) then TInt else type_error e "Bad Typing in Bitnot"
    end


(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statment typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement)

     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, the return behavior of the branching 
        statement is the conjunction of the return behavior of the two 
        branches: both both branches must definitely return in order for 
        the whole statement to definitely return.

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entire conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)

let extend2 (c: Tctxt.t) ((id,exp_node): (string * Ast.exp node)) : Tctxt.t = 
  Tctxt.add_local c id (typecheck_exp c exp_node)

let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  match s.elt with
  | Assn (exp_node, exp_node2) -> begin
      let left_type = typecheck_exp tc exp_node in
      let right_type = typecheck_exp tc exp_node2 in
      (*Check to make sure the left type is good and worth our effot*)
      if not begin match exp_node.elt with
        | Proj _ | Index _ -> true
        | Id id ->
          begin match lookup_local_option id tc with
          | Some _ -> true
          | None -> begin match lookup_global_option id tc with
              | Some TRef RFun _ -> false
              | _ -> true
            end
          end
        | _ -> false
        end then type_error exp_node "Cannot assign to global function id" else
      if subtype tc right_type left_type 
      then (tc, false)
      else type_error s "Bad Assign"
    end
  | Decl (ident, expr) -> begin
    match lookup_local_option ident tc with
    | None ->
      {
        locals = (ident, typecheck_exp tc expr)::tc.locals;
        globals = tc.globals;
        structs = tc.structs
      }, false
    | Some _ -> type_error s "Already exists"
    end
  | Ret (exp_node_option) -> 
    begin match exp_node_option with
    | Some x -> 
      begin match to_ret with
      | RetVal y -> 
        let ty = typecheck_exp tc x in
        if subtype tc ty y then (tc, true) else type_error s "Function expected something but was given something else"
      | _ -> type_error s "Returned something in void function"
      end
    | None -> 
      if to_ret = RetVoid
      then (tc, true)
      else type_error s "Returned nothing in non-void function"
    end
  | SCall (exp_node, exp_node_list) -> begin
    let arg_type_list = List.map (typecheck_exp tc) exp_node_list in
      begin 
      match typecheck_exp tc exp_node with
      | TRef (RFun (args, RetVoid)) | TNullRef (RFun (args, RetVoid)) -> 
        if List.compare_lengths arg_type_list args <> 0 then type_error s "SCall arg lists different lengths" else
        if(List.fold_left2 (fun previous (given:Ast.ty) (expected:Ast.ty) ->
          (* Printf.printf "Comparing %s and %s\n" (Astlib.string_of_ty given) (Astlib.string_of_ty expected); *)
          previous && subtype tc given expected)
          true arg_type_list args)
        then tc, false
        else type_error s "Args were not same types"
      | _ -> type_error s "Not a function"
      end
    end
  | If (exp_node, stmt_node_list, stmt_node_list2) -> begin
    if typecheck_exp tc exp_node = TBool 
    then
      let (_, then_block) = typecheck_block tc stmt_node_list to_ret in
      let (_, else_block) = typecheck_block tc stmt_node_list2 to_ret in
      tc, then_block && else_block
    else 
      type_error s "If wasn't a bool"
    end
  | Cast (rty, id, exp_node, stmt_node_list, stmt_node_list2) -> 
    begin match typecheck_exp tc exp_node with
    | TNullRef x -> 
      if subtype_ref tc x rty 
      then 
        let (_, left) = typecheck_block (Tctxt.add_local tc id (TRef rty)) stmt_node_list to_ret in
        let (_, right) = typecheck_block tc stmt_node_list2 to_ret in
        (tc, left && right)
      else type_error s "Cannot cast type to type"
    | _ -> type_error s "Cannot cast"
    end
  | For (vdecl_list, exp_node_option, stmt_node_option, stmt_node_list) -> 
    let extended_ctxt = List.fold_left extend2 tc vdecl_list in
    begin match exp_node_option with
    | Some x -> 
      if (typecheck_exp extended_ctxt x) = TBool 
      then 
        begin match stmt_node_option with
      | Some y -> 
        let (_,good) = typecheck_stmt extended_ctxt y to_ret in
        if good  
        then 
          type_error s "Tried to return early"
        else 
          let _ = typecheck_block extended_ctxt stmt_node_list to_ret in
          (tc, false)
      | None -> 
        let _ = typecheck_block extended_ctxt stmt_node_list to_ret in
        (tc, false)
      end
      else type_error s "First argument in for loop not a bool" 
    | None -> 
      begin match stmt_node_option with
      | Some y -> 
        let (_,good) = typecheck_stmt extended_ctxt y to_ret in
        if good  
        then 
          type_error s "Tried to return early"
        else 
          let _ = typecheck_block extended_ctxt stmt_node_list to_ret in
          (tc, false)
      | None -> 
        let _ = typecheck_block extended_ctxt stmt_node_list to_ret in
        (tc, false)
      end
    end
  | While (exp_node, stmt_node_list) -> 
    let cond = typecheck_exp tc exp_node in
    if cond <> TBool 
    then type_error exp_node "Condition was not Boolean"
    else 
      let (ret_context, rret_bool) = typecheck_block tc stmt_node_list to_ret in
      (ret_context, false)
  
and typecheck_block (tc: Tctxt.t) (blck: Ast.block) (return: Ast.ret_ty) : Tctxt.t * bool =
  List.fold_left (fun (context, prev_bool) statement ->
    let new_cont, new_bool = typecheck_stmt context statement return in
    (* Printf.printf "%s is %s\n" (Astlib.string_of_stmt statement) (string_of_bool new_bool); *)
    if prev_bool then type_error statement "Oopsie poopsies" else
    new_cont, new_bool )
  (tc, false) blck

(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)


let extend (c: Tctxt.t) ((ty, id): (ty * id)) : Tctxt.t = 
  Tctxt.add_local c id ty

let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  let extended_ctxt = List.fold_left extend tc f.args in
  let (tc, boolean) = typecheck_block extended_ctxt f.body f.frtyp in
  if not boolean then type_error l "Function not typed well"

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'S'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can mention only other global values that were declared earlier
*)

let create_struct_ctxt_help (ctxt: Tctxt.t) (elem: decl): Tctxt.t = 
  begin match elem with
  | Gtdecl nod -> 
    let ({elt = id, field_ls}) = nod in
    begin match lookup_struct_option id ctxt with
    | None -> Tctxt.add_struct ctxt id field_ls
    | Some _ -> type_error nod "Global Struct redeclaration"
    end
  | _ -> ctxt
  end 

let create_struct_ctxt (ctxt: Tctxt.t) (p:Ast.prog) : Tctxt.t =
  List.fold_left create_struct_ctxt_help ctxt p


let create_function_ctxt_help (ctxt: Tctxt.t) (elem: decl): Tctxt.t = 
  begin match elem with
  | Gfdecl nod -> 
    let ({elt = func}) = nod in
    begin match lookup_global_option func.fname ctxt with
    | None -> Tctxt.add_global ctxt func.fname (TRef (RFun (List.map fst func.args, func.frtyp)))
    | Some _ -> type_error nod "Function redeclaration"
    end
  | _ -> ctxt
  end 

let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  List.fold_left create_function_ctxt_help tc p


let create_global_ctxt_help (ctxt: Tctxt.t) (elem: decl): Tctxt.t = 
  begin match elem with
  | Gvdecl nod -> 
    let ({elt = var}) = nod in
    begin match lookup_global_option var.name ctxt with
    | None ->
      let var_ty = typecheck_exp ctxt var.init in
      Tctxt.add_global ctxt var.name var_ty
    | Some _ -> type_error nod "Redeclaration of global variable"
    end
  | _ -> ctxt
  end 

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  List.fold_left create_global_ctxt_help tc p


(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let initial_context = {locals=[]; globals=
  (List.map (fun (name,(args, ret)) -> name, TRef (RFun( args, ret)) ) builtins); structs=[]} in
  let sc = create_struct_ctxt initial_context p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p
