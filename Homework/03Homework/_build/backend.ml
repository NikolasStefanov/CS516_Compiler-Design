 (* 
 * File Created:  Wednesday, 10th March 2021
 * Author:    John Cinquegrana (jcinqueg@stevens.edu)
 * Stevens    2021s  CS516
 * Pledge:    I pledge my honor I have abided by the Stevens Honor system.
 *) 

(* Cool Commands
Compile an assembly file into an executable
  clang -Wno-override-module -o1 -Wall -o output_path input_path.s
Compile a .ll file into an assembly file
  ./main.native -S [filepath]
*)

(* ll ir compilation -------------------------------------------------------- *)

open Ll
open X86

(* Overview ----------------------------------------------------------------- *)

(* We suggest that you spend some time understanding this entire file and 
   how it fits with the compiler pipeline before making changes.  The suggested
   plan for implementing the compiler is provided on the project web page. 
*)


(* helpers ------------------------------------------------------------------ *)

(* Map LL comparison operations to X86 condition codes *)
let compile_cnd = function
  | Ll.Eq  -> X86.Eq
  | Ll.Ne  -> X86.Neq
  | Ll.Slt -> X86.Lt
  | Ll.Sle -> X86.Le
  | Ll.Sgt -> X86.Gt
  | Ll.Sge -> X86.Ge



(* locals and layout -------------------------------------------------------- *)

(* One key problem in compiling the LLVM IR is how to map its local
   identifiers to X86 abstractions.  For the best performance, one
   would want to use an X86 register for each LLVM %uid.  However,
   since there are an unlimited number of %uids and only 16 registers,
   doing so effectively is quite difficult.  We will see later in the
   course how _register allocation_ algorithms can do a good job at
   this.

   A simpler, but less performant, implementation is to map each %uid
   in the LLVM source to a _stack slot_ (i.e. a region of memory in
   the stack).  Since LLVMlite, unlike real LLVM, permits %uid locals
   to store only 64-bit data, each stack slot is an 8-byte value.

   [ NOTE: For compiling LLVMlite, even i1 data values should be
   represented as a 8-byte quad. This greatly simplifies code
   generation. ]

   We call the datastructure that maps each %uid to its stack slot a
   'stack layout'.  A stack layout maps a uid to an X86 operand for
   accessing its contents.  For this compilation strategy, the operand
   is always an offset from ebp (in bytes) that represents a storage slot in
   the stack.  
*)

type layout = (uid * X86.operand) list

(*A short hand for having the type tdecls outside ctxt*)
type tdecls = (tid * ty) list

(* A context contains the global type declarations (needed for getelementptr
   calculations) and a stack layout. *)
type ctxt = { tdecls : tdecls
            ; layout : layout
            }

(* useful for looking up items in tdecls or layouts *)
let lookup m x = match List.assoc_opt x m with
| Some(x) -> x
| None -> failwith "Bad lookup Option"

(*Simple helper function for creating a list*)
let rec list_make (elem: 'a) = function
   | 0 -> []
   | x -> elem::(list_make elem (x-1) )

let type_deref (t:ty) : ty =
  match t with
  | Ptr sub_type -> sub_type
  | _ -> failwith "Type cannot be dereferenced"

(* An OCAML 4.11 function that I need to make use of. *)
let rec fold_left_map (f: 'a -> 'b -> 'a * 'c) (init: 'a) (ls: 'b list) : 'a * 'c list =
  List.fold_left (fun (acc, acc_ls) elem ->
    let (new_acc, new_elem) = f acc elem in (new_acc, acc_ls@[new_elem]) ) (init, []) ls

(* compiling operands  ------------------------------------------------------ *)

(* LLVM IR instructions support several kinds of operands.

   LL local %uids live in stack slots, whereas global ids live at
   global addresses that must be computed from a label.  Constants are
   immediately available, and the operand Null is the 64-bit 0 value.

     NOTE: two important facts about global identifiers:

     (1) You should use (Platform.mangle gid) to obtain a string 
     suitable for naming a global label on your platform (OS X expects
     "_main" while linux expects "main").

     (2) 64-bit assembly labels are not allowed as immediate operands.
     That is, the X86 code: movq _gid %rax which looks like it should
     put the address denoted by _gid into %rax is not allowed.
     Instead, you need to compute an %rip-relative address using the
     leaq instruction:   leaq _gid(%rip).

   One strategy for compiling instruction operands is to use a
   designated register (or registers) for holding the values being
   manipulated by the LLVM IR instruction. You might find it useful to
   implement the following helper function, whose job is to generate
   the X86 instruction that moves an LLVM operand into a designated
   destination (usually a register).  
*)

(*let compile_operand ctxt dest : Ll.operand -> ins =*)
let compile_operand (cont: ctxt) (dest: X86.operand) (oper: Ll.operand) : ins = 
  match oper with 
    | Null -> Movq, [Imm (Lit 0L); dest]
    | Const (num: quad) ->
      Movq, [Imm (Lit num); dest]
    | Id (str: lbl) -> (*Move a local variable into the associated destination *)
      Movq, [lookup cont.layout str; dest]
    | Gid (str: lbl) -> (*Globals are always treated as pointers. So we always
    load the adress associated with it, not the value itself. *)
    Leaq, [Ind3 (Lbl (Platform.mangle str), Rip); dest]
      

(*Gives the specific size of any given type, as well as a list of type declarations.*)
let rec size_ty (typedec: tdecls) (t: ty) : int =
  match t with
  | Void | Fun _ -> failwith "Type has undefined size"
  | I1 | I8 | I64 | Ptr _ -> 8
  | Struct (ls:ty list) -> List.fold_left Int.add 0 @@ List.map (size_ty typedec) ls
  | Array((size: int), (typ: ty)) -> size * (size_ty typedec typ)
  | Namedt type_id -> size_ty typedec @@ lookup typedec type_id

(* Allocates zeroed out space on the stack for any type of any size.
At the end of this instruction, *)
let malloc (typedec: tdecls) (t: ty): X86.ins list =
  [Subq, [Imm (Lit (Int64.of_int @@ size_ty  typedec t)); Reg Rsp]]

(* compiling call  ---------------------------------------------------------- *)

(* You will probably find it helpful to implement a helper function that 
   generates code for the LLVM IR call instruction.

   The code you generate should follow the x64 System V AMD64 ABI
   calling conventions, which places the first six 64-bit (or smaller)
   values in registers and pushes the rest onto the stack.  Note that,
   since all LLVM IR operands are 64-bit values, the first six
   operands will always be placed in registers.  (See the notes about
   compiling fdecl below.)

   [ NOTE: It is the caller's responsibility to clean up arguments
   pushed onto the stack, so you must free the stack space after the
   call returns. ]

   [ NOTE: Don't forget to preserve caller-save registers (only if
   needed). ]
*)

(*Given an operand that is a function pointer, extract the
label/name of the function. Fails if this is not a function pointer. *)
let extract_label = function
 | Gid str -> str
 | _ -> failwith "Attempted to call not a function pointer."

let extract_const = function
| Const ret -> ret
| _ -> failwith "Not a constant value"

(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)

let calling_arg_create (arg: X86.operand) (n : int) : X86.ins =
  begin match n with
  | 1 -> (Movq, [arg; Reg Rdi] )
  | 2 -> (Movq, [arg; Reg Rsi] )
  | 3 -> (Movq, [arg; Reg Rdx] )
  | 4 -> (Movq, [arg; Reg Rcx] )
  | 5 -> (Movq, [arg; Reg R08] )
  | 6 -> (Movq, [arg; Reg R09] )
  | n -> (Pushq, [arg] )
end

(*compile_call
given a call instruction, generate instructions matching with CDECL protocal.
We do not have any caller-save registers. *)
let compile_call (cont: ctxt) (label: uid) (return_type: ty) (func: Ll.operand)
                    (params: (ty * Ll.operand) list) : X86.ins list = 
  
  (*Push saved register onto the stack*)
  (*let p1 = (Pushq, [(Reg Rbp)]) in
  let p2 = (Pushq, [(Reg Rsp)]) in *)
  (Pushq, [(Reg Rbx)])::
  (Pushq, [(Reg R11)])::
  (Pushq, [(Reg R12)])::
  (Pushq, [(Reg R13)])::
  (Pushq, [(Reg R14)])::
  [(Pushq, [(Reg R15)])] @

  (*let p1 = (Pushq, [(Reg Rbp)]) in
  let p2 = (Pushq, [(Reg Rsp)]) in *)
  

  (*Push all the arguments onto the stack in reversed order*)
  begin  (*Reverse the parameters because something happened??*)
  params |>
  fold_left_map (fun (ind: int) (typ, op) ->
    ( ind+1,
      (compile_operand cont (Reg R11) op)::[calling_arg_create (Reg R11) ind]
    )) 1 |>
    snd |> List.flatten
  end @
  (*Have the function be called*)
  (*The callq instruction saves the instruction pointer onto the stack.*)
  (Callq, [Imm (Lbl (extract_label func)) ])::
  (*Save the return value into the appropriate register*)
  (Movq, [Reg Rax; lookup cont.layout label])::
  (*Pop saved registers off of the stack back into their registers*)
  (Popq, [(Reg R15)])::
  (Popq, [(Reg R14)])::
  (Popq, [(Reg R13)])::
  (Popq, [(Reg R12)])::
  (Popq, [(Reg R11)])::
  [(Popq, [(Reg Rbx)])]
(* compiling getelementptr (gep)  ------------------------------------------- *)

(* The getelementptr instruction computes an address by indexing into
   a datastructure, following a path of offsets.  It computes the
   address based on the size of the data, which is dictated by the
   data's type.

   To compile getelmentptr, you must generate x86 code that performs
   the appropriate arithemetic calculations.
*)

(* [size_ty] maps an LLVMlite type to a size in bytes. 
    (needed for getelementptr)

   - the size of a struct is the sum of the sizes of each component
   - the size of an array of t's with n elements is n * the size of t
   - all pointers, I1, and I64 are 8 bytes
   - the size of a named type is the size of its definition

   - Void, i8, and functions have undefined sizes according to LLVMlite.
     Your function should simply return 0 in those cases
*)

  (*Given a specific type, return true if it is considered to be a simple
    type within LLVM*)
let rec is_simple (typedec: tdecls) (t: ty) : bool =
  match t with
  | Void | Fun _ | Struct _ | Array _ -> false
  | Namedt type_id -> is_simple typedec @@ lookup typedec type_id
  | I1 | I8 | I64 | Ptr _ -> true
  

(* Generates code that computes a pointer value.  

   1. op must be of pointer type: t*

   2. the value of op is the base address of the calculation

   3. the first index in the path is treated as the index into an array
     of elements of type t located at the base address

   4. subsequent indices are interpreted according to the type t:

     - if t is a struct, the index must be a constant n and it 
       picks out the n'th element of the struct. [ NOTE: the offset
       within the struct of the n'th element is determined by the 
       sizes of the types of the previous elements ]

     - if t is an array, the index can be any operand, and its
       value determines the offset within the array.
 
     - if t is any other type, the path is invalid

   5. if the index is valid, the remainder of the path is computed as
      in (4), but relative to the type f the sub-element picked out
      by the path so far
*)
(* GENERAL GEP STRATEGY
rbx 	Base register, pointer to data
  This register points to the initial reference of the path.
By moving forward down the path, we change the rbx register to point to the next location.*)

let named_type (typdec: tdecls) = function
  | Namedt id -> lookup typdec id
  | any -> any

let rec struct_size_to_index (cont: ctxt) (type_list: Ll.ty list) (index: int) (size_acc: quad): Ll.ty * quad =
  match index with
  | 0 -> (List.hd type_list, size_acc)
  | index -> (*I love OCaml so so so so much*)
    List.hd type_list |>
    size_ty cont.tdecls |>
    Int64.of_int |>
    Int64.add size_acc |>
    struct_size_to_index cont (List.tl type_list) (index-1)

let rec calculate_gep (cont: ctxt) (base_type: Ll.ty) (path : Ll.operand list) : ins list =
  match path with
  | [] -> []
  | h::tl -> (*We need to take a step*) begin
    match named_type cont.tdecls base_type with
    | Array( length, sub_ty ) -> begin (*Shift the pointer over by the constant amount*)
      let type_size = size_ty cont.tdecls sub_ty in
      (compile_operand cont (Reg R11) h):: (*load offset into R11*)
      (Imulq, [Imm (Lit (Int64.of_int type_size)); Reg R11]):: (*Scale offset to size*)
      (Addq, [Reg R11; Reg Rbx]):: (*Move the pointer the calculated amount*)
      (calculate_gep cont sub_ty tl)
      end
    | Struct( sub_ty_list ) -> begin
      let index = extract_const h |> Int64.to_int in
      let (sub_type, shift_size) = struct_size_to_index cont sub_ty_list index 0L in
      (Addq, [Imm (Lit shift_size); Reg Rbx])::
      (calculate_gep cont sub_type tl)
      end
    | _ -> failwith "Cannot GEP not a struct-array"
  end

let jazz_gep (cont: ctxt) (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
  let sub_type = (fst op |>
  type_deref) in
  (* The top-level gep operand must be a pointer. *)
  (compile_operand cont (Reg Rbx) (snd op) ):: (*Load pointer location*)
  (compile_operand cont (Reg R11) (List.hd path)):: (*load initial offset*)
  (Addq, [Reg R11; Reg Rbx]):: (*Index pointer as an array*)
  (List.tl path |> calculate_gep cont sub_type)

(*TODO compile_gep*)

let rec find_with_index (cont : ctxt) (index: Ll.operand) (ls: Ll.ty list) (count : int64) : ins list =
  begin match index with 
  | Const 0L -> 
    if (count <> 0L) then
      []
    else
    let elem = List.nth ls 0 in 
    [(Addq, [(Imm (Lit (Int64.of_int (size_ty (cont.tdecls) elem)))); (Reg R11)])] @ (find_with_index cont index ls (Int64.add count 1L))
  | Const x -> 
    if x = count then
      []
    else
      let elem = List.nth ls (Int64.to_int x) in 
      [(Addq, [(Imm (Lit (Int64.of_int (size_ty (cont.tdecls) elem)))); (Reg R11)])] @ (find_with_index cont index ls (Int64.add count 1L))
  | _ -> failwith "Invalid"
  end


let find_with_offset (cont : ctxt) (index: Ll.operand) (ls: Ll.ty) (count : int64): ins list=
  begin match index with 
  | Const 0L -> 
    [(Addq, [(Imm (Lit (Int64.of_int (size_ty (cont.tdecls) ls)))); (Reg R11)])]
  | Const x -> 
    [(Addq, [(Imm (Lit (Int64.of_int (size_ty (cont.tdecls) ls)))); (Reg R11)])]
  | _ -> failwith "Invalid"
  end

let compile_gep (cont: ctxt) (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
  begin match op with
  | (Ptr ty, oper) -> 
    (* Fix ty if it's a named type*)
    let good_ty = 
      begin match ty with
      | Namedt id -> lookup cont.tdecls id
      | _ -> ty
    end in
    (*Calculate the base_address (2)*)
    let base_addr = compile_operand cont (Reg R11) oper in
    
    (*Separate the path into a first element/index (3) and the rest*)
    begin match path with
    | [] -> [base_addr]
    | index::rest -> begin
      match good_ty with
      | Struct ty_list -> 
        (* (4-1) *)
        let insns = find_with_index cont index ty_list 0L in
          base_addr :: insns
      | Array (_,x) -> 
        (* (4-2) *)
        let insns = find_with_offset cont index x 0L in
        base_addr :: insns
      | _ -> 
        (* (4-3) *)
        failwith "Fuck Me"
      end
    end
  | _ -> [] (*Argument was not a pointer*)
  end


(* compiling instructions  -------------------------------------------------- *)

(* The result of compiling a single LLVM instruction might be many x86
   instructions.  We have not determined the structure of this code
   for you. Some of the instructions require only a couple assembly
   instructions, while others require more.  We have suggested that
   you need at least compile_operand, compile_call, and compile_gep
   helpers; you may introduce more as you see fit.

   Here are a few notes:

   - Icmp:  the Set instruction may be of use.  Depending on how you
     compile Cbr, you may want to ensure that the value produced by
     Icmp is exactly 0 or 1.

   - Load & Store: these need to dereference the pointers. Const and
     Null operands aren't valid pointers.  Don't forget to
     Platform.mangle the global identifier.

   - Alloca: needs to return a pointer into the stack

   - Bitcast: does nothing interesting at the assembly level
*)


(*
REGISTER MAPPING
  rax 	General purpose accumulator
  rbx 	Callee Save -> Base register, pointer to data
  rcx 	Argument 4
  rdx 	Argument 3
  rsi 	Argument 2
  rdi 	Argument 1
  rbp 	Callee Save -> Base pointer, points to the stack frame
  rsp 	Callee Save -> Stack pointer, points to the value at the top of the stack
  r08   Argument 5
  r09   Argument 6
  r10   Argument 7
  r11   Callee Save -> 
  r12   Callee Save -> 
  r13   Callee Save -> 
  r14   Callee Save -> 
  r15   Callee Save -> 
*)

(*
Take a single LLVM instruction and produce a list of X86 instructions that
perform the corresponding action. *)
let compile_insn (cont: ctxt) ( (label: uid), (i: Ll.insn) ) : X86.ins list =
  match i with
  | Binop((operation: bop), (t: ty), (op1: Ll.operand), (op2: Ll.operand)) ->
    (*Binary operations*)
    begin match operation with
    | Add -> (*Simple quad addition*)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg R12) op2)::
      (Addq, [Reg R11; Reg R12])::
      [Movq, [Reg R12; lookup cont.layout label]]
    | Sub -> (*Simple quad subtraction*)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg R12) op2)::
      (Subq, [Reg R12; Reg R11])::
      [Movq, [Reg R11; lookup cont.layout label]]
    | Mul -> (*Simple quad multiplication*)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg R12) op2)::
      (Imulq, [Reg R11; Reg R12])::
      [Movq, [Reg R12; lookup cont.layout label]]
    | Shl -> (* Shift Left *)
      (compile_operand cont (Reg R11) op1)::
      (compile_operand cont (Reg Rcx) op2)::
      (Shlq, [Reg Rcx; Reg R11])::
      [Movq, [Reg R11; lookup cont.layout label]]
    | Lshr -> (* Logical Shift Right *)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg Rcx) op2)::
      (Shrq, [Reg Rcx; Reg R11])::
      [Movq, [Reg R11; lookup cont.layout label]]
    | Ashr -> (*Arithmetic Shift Right*)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg Rcx) op2)::
      (Sarq, [Reg Rcx; Reg R11])::
      [Movq, [Reg R11; lookup cont.layout label]]
    | And -> (*Bitwise Logical And operation*)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg R12) op2)::
      (Andq, [Reg R11; Reg R12])::
      [Movq, [Reg R12; lookup cont.layout label]]
    | Or -> (*Bitwise Logical Or operation*)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg R12) op2)::
      (Orq, [Reg R11; Reg R12])::
      [Movq, [Reg R12; lookup cont.layout label]]
    | Xor ->  (*Bitwise Logical Xor operation*)
      (compile_operand cont (Reg R11) op1 )::
      (compile_operand cont (Reg R12) op2)::
      (Xorq, [Reg R11; Reg R12])::
      [Movq, [Reg R12; lookup cont.layout label]]
    end 
  | Alloca (t:ty) -> (*Allocate space for the type on the stack and return the
    base pointer to it *)
    malloc cont.tdecls t @
    (*Move the value of the REGISTER Rsp into the label, this is a pointer.*)
    [Movq, [Reg Rsp; lookup cont.layout label]]
  | Load( (t:ty), (op:Ll.operand) ) -> begin
      let typ = type_deref t in
      if is_simple cont.tdecls typ then
        (compile_operand cont (Reg Rbx) op )::
        (Movq, [Ind2 Rbx; Reg R11])::
        [(Movq, [Reg R11; lookup cont.layout label])]
      else
        failwith "Load of a non-simple type"
    end
  | Store ((t:ty), (src:Ll.operand), (p_dest:Ll.operand)) -> (*Stores the source
    operand into the location defined by p_dest. p_dest must be a pointer*)
    begin
      if is_simple cont.tdecls t then
        (compile_operand cont (Reg R11) src)::
        (compile_operand cont (Reg Rbx) p_dest)::
        [(Movq, [Reg R11; Ind2 Rbx])]
      else
        failwith "Store of a non-simple type"
    end
  | Icmp ((c:Ll.cnd), (t:ty), (op1:Ll.operand), (op2:Ll.operand)) -> begin (*Update to
    1 if the comparison is true; update to 0 if it is false.*)
      (compile_operand cont (Reg R11) op1)::
      (compile_operand cont (Reg R12) op2)::
      (*Zero out since Set only sets the lowest byte*)
      (Movq, [Imm (Lit 0L); lookup cont.layout label])::
      (Cmpq, [Reg R11; Reg R12]):: (*Compare and set*)
      [(Set (compile_cnd c), [lookup cont.layout label])]
      end
  | Call ((ret_type:ty), (op1:Ll.operand), (params:(ty * Ll.operand) list)) -> begin
    (* Call Instruction
    All the logic is handled by this function.
    All return values are stored in the Rax register. *)
    (compile_call cont label ret_type op1 params)
    end
  | Bitcast ((t1:ty),  (op1:Ll.operand), (t2:ty) ) -> begin
    (*Doesn't really mean
    much to assembly code. Update local to value of the operand. *)
    (compile_operand cont (Reg R11) op1)::
    [(Movq, [Reg R11; lookup cont.layout label])]
    end
  | Gep( (t:ty),  (op: Ll.operand), (ls: Ll.operand list) )-> begin 
    (*Use
    getelementptr to calculate and update label to the adress of a specific
    pointer within a structure. *)
    (jazz_gep cont (t,op) ls)@
    (*Rbx for jazz, R11 for Niko*)
    [(Movq, [Reg Rbx; lookup cont.layout label])]
    end

(* compiling terminators  --------------------------------------------------- *)

(* Compile block terminators is not too difficult:

   - Ret should properly exit the function: freeing stack space,
     restoring the value of %rbp, and putting the return value (if
     any) in %rax.

   - Br should jump

   - Cbr branch should treat its operand as a boolean conditional
*)
let compile_terminator (cont: ctxt) (term: Ll.terminator) : X86.ins list =
  begin match term with
  | Ret ((t: ty), (op: Ll.operand option)) -> begin (*Pop the most recently allocated
  frame off the stack and return from interp_cfg with the value of OP and the resulting memory state.*)
    begin match op with
    | None -> []
    | Some(oper) ->
      [(compile_operand cont (Reg R12) oper);
      (Movq, [Reg R12; Reg Rax])]
    end @ begin
      (Movq, [Reg Rbp; Reg Rsp]):: (*Move the stack frame into the stack pointer*)
      (Popq, [Reg R11]):: (*This is the old frame pointer*)
      (Movq, [Reg R11; Reg Rbp]):: (*Restore the old frame pointer*)
      [Retq, []] (*Return*)
    end
  end
  | Br (str: lbl) -> [(Jmp, [Imm (Lbl str)])]
  (*Look up the block associated with %LAB in the CFG set is as the current executing block.*)
  | Cbr( (op: Ll.operand),  (str1: lbl),  (str2: lbl) ) -> 
    (compile_operand cont (Reg R11) op)::
    (Cmpq, [Imm (Lit 0L); Reg R11])::
    (J X86.Eq, [Imm (Lbl str1)])::
    [(Jmp, [Imm (Lbl str2)])]
  end

(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. *)
let compile_block (cont: ctxt) (blk: Ll.block) : ins list =
  (*Ll.block = { insns : (uid * insn) list; term : (uid * terminator) }*)
  (* let blk = {insns; (uid,terminate)} in *)
  let first = List.flatten @@ List.map (compile_insn cont) blk.insns in
  let (_, term) = blk.term in
  let second = (compile_terminator cont term) in
  first @ second


let compile_lbl_block (cont: ctxt) ((label, blk): lbl * Ll.block) : elem =
  Asm.text label (compile_block cont blk)



(* compile_fdecl ------------------------------------------------------------ *)

(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)

let arg_loc (n : int) : X86.operand =
  begin match n with
  | 1 -> Reg Rdi
  | 2 -> Reg Rsi
  | 3 -> Reg Rdx
  | 4 -> Reg Rcx
  | 5 -> Reg R08
  | 6 -> Reg R09
  | n -> Ind3 (Lit (Int64.of_int (8*(n-5))), Rbp)
end


(* We suggest that you create a helper function that computes the 
   stack layout for a given function declaration.

   - each function argument should be copied into a stack slot
   - in this (inefficient) compilation strategy, each local id 
     is also stored as a stack slot.
   - see the discusion about locals 

*)
(*stack_layout
Returns a layout mapping each local value and argument to it's proper X86 instruction
identifier. Also returns the total size of all locals that need to be initialized onto
the stack, this is the number that RSP must be decremented by in order to keep space.*)
let stack_layout (args: uid list) ((entry, lbled_blocks):cfg): (layout * quad) =
    (*Basic Stack Strategy ->
    - Follow the CDECL calling convention
    - Each argument is mapped to a certain space in the stack at EBP + (1 + n) * 4.
    - Each mapping is done to an X86 operand type, usually of Ind3 form.
  *)
  (*Create the list of argument operands. We start at Rbp+16 to account for the return
  address and the old stack frame pointer. We increment by 8 each time since each
  simple type is 8-bytes. *)
  let (arg_locations: layout) = snd @@ fold_left_map (fun (ind: int) (arg: uid) ->
    (ind+1, (arg, arg_loc ind) )
    ) 1 args
  in
  (*Extract all of the unique local labels out of each of the blocks.*)
  let all_labels =
    entry::(snd @@ List.split lbled_blocks) |>
    List.map (fun blk -> blk.insns) |>
    List.flatten |>
    List.map fst |>
    List.sort_uniq String.compare
  in
  (*Create the list of argument operands. We start at Rbp-8 to reach the beginning
  of the first layout. We increment by 8 each time since each
  simple type is 8-bytes. *)
  let (total_size, label_locations) =
    fold_left_map (fun (ind: quad) (arg: uid) ->
      (Int64.add ind 8L, (arg, (Ind3 (Lit (Int64.neg ind), Rbp )))))
    8L all_labels
  in
  (arg_locations@label_locations, total_size)

(* The code for the entry-point of a function must do several things:

   - since our simple compiler maps local %uids to stack slots,
     compiling the control-flow-graph body of an fdecl requires us to
     compute the layout (see the discussion of locals and layout)

   - the function code should also comply with the calling
     conventions, typically by moving arguments out of the parameter
     registers (or stack slots) into local storage space.  For our
     simple compilation strategy, that local storage space should be
     in the stack. (So the function parameters can also be accounted
     for in the layout.)

   - the function entry code should allocate the stack storage needed
     to hold all of the local stack slots.
*)

(*compile_fdecl*)
let compile_fdecl (typedec: tdecls) (name: lbl) ({ f_ty; f_param; f_cfg }: fdecl): X86.prog =
  (*Generate the list of instructions that set up this function using CDECL protocal*)
  (*Extract the values that we need*)
  (*Set up the mapping of locals/arguments to values.*)
  let (lay, rsp_dec) = stack_layout f_param f_cfg in
  let (cont: ctxt) = {tdecls=typedec; layout=lay}  in
  (*Create the first block, the one that sets up local space*)
  (Asm.gtext (Platform.mangle name) ([
    (Pushq, [Reg Rbp]); (*Save the old stack frame pointer*)
    (Movq, [Reg Rsp; Reg Rbp]); (*Generate a new stack frame pointer*)
    (Subq, [Imm (Lit rsp_dec); Reg Rsp]) (*Allocate space onto the stack*)
  ]@(compile_block cont @@ fst f_cfg))
  ) ::
  (*Compile all the rest of the blocks into a list*)
  begin
    snd f_cfg |>
    List.map (compile_lbl_block cont)
  end



(* compile_gdecl ------------------------------------------------------------ *)
(* Compile a global value into an X86 global data declaration and map
   a global uid to its associated X86 label.
*)
let rec compile_ginit = function
  | GNull     -> [Quad (Lit 0L)]
  | GGid gid  -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c    -> [Quad (Lit c)]
  | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.map compile_gdecl gs |>
      List.flatten
  | _ -> failwith "Pattern Matching Not Exhaustive"

and compile_gdecl (_, g) = compile_ginit g


(* compile_prog ------------------------------------------------------------- *)
let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g = fun (lbl, gdecl) -> Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f = fun (name, fdecl) -> compile_fdecl tdecls name fdecl in
  let globals = (List.map g gdecls) in
   globals @ (List.map f fdecls |> List.flatten)

