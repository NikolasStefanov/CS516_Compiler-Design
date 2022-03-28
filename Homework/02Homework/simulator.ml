 (* 
 * File Created:  Sunday, 21st February 2021
 * Author: John Cinquegrana, Nikolas Stefanov (jcinqueg@stevens.edu, nstefano@stevens.edu)
 * Stevens    2021s  CS516
 * Pledge: I pledge my honor I have abided by the Stevens Honor system.
 *) 



(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address 4194304 in dec*) 
let mem_top = 0x410000L          (* one past the last byte in memory 4259840 in dec *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up four bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next sevent bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 7th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag; InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. *)
let debug_simulator = ref false

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd ({fo; fs; fz}:flags) : cnd -> bool = fun condition ->
  begin match condition with
  | Eq  -> fz
  | Neq -> not fz
  | Gt  -> not (fs<>fo) && (not fz) 
  | Ge  -> not (fs<>fo)
  | Lt  -> (fs<>fo)
  | Le  -> (fs<>fo) || fz
  end

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  match addr with
  | x when x < mem_bot -> None
  | x when x > mem_top -> None
  | x -> Some( Int64.to_int @@ Int64.sub x mem_bot )

(*  A type solely used for the sign value of Int64 numbers. *)
type sign = Neg | Pos

(*Returns the sign of a quad as a sign-type*)
let sign (x: quad) : sign = if x >= 0L then Pos else Neg

(*Sets the ZF and SF flags based on the current value held in the operand that is passed in.
For proper results, only pass in registers.*)
let set_signed_zero_flags (m: mach) (value: quad): unit =
  m.flags.fz <- value = 0L;
  m.flags.fs <- (sign value) = Neg

(*  BIND
  before must resolve to an option value. If None, fails with a "Bad Option". If some value is
  returned, passes it onto after. *)
let (>>=) (before: 'a option) (after: 'a -> 'b) : 'b =
  match before with
  | None -> failwith "Bind: Bad Option"
  | Some( arg ) -> after arg

let return _ = ()

  (*  BIND OPTION
  Propogates up the option datatype. If something goes wrong it will keep the None going. *)
let (>>-) (before: 'a option) (after: 'a -> ('b option)) : 'b option =
  match before with
  | None -> None
  | Some( arg ) -> after arg

  (*  Pulls a quad value out of an immediate. Returns none if it was a label. *)
let value_of_imm (immediate: imm) : quad option =
  match immediate with
  | Lit x -> Some x
  | Lbl _ -> None

(*  All read/write from memory goes through these two functions.  *)

  (* Given a machine and a specific address, returns the quad sitting in that address.
  *)
let quad_at_address (m: mach) (addr: quad) : quad option =
  if addr < mem_bot || addr > (Int64.sub mem_top 8L) then begin
    (* Printf.printf "Invalid adress %Ld.\n" addr; *)
    raise X86lite_segfault
  end
  else
  map_addr addr >>= fun first_index ->
  Some( int64_of_sbytes @@ Array.to_list @@ Array.sub m.mem first_index 8 )

(*Places the doubleword value into the array at the specified adress. Converts the quad
    to an sbyte in order to accomplish this. *)
let place_quad (arr: sbyte array) (address: quad) (value: quad) : unit option =
  if address < mem_bot || address > (Int64.sub mem_top 8L) then raise X86lite_segfault
  else
  match map_addr address with
  | Some first_index ->
      Some( Array.blit (Array.of_list @@ sbytes_of_int64 value) 0 arr first_index 8  )
  | None -> raise X86lite_segfault

  (* Takes an operand and retuns Some quad if that operand succesfully resolved to a proper quad value.
    If it does not meet proper x86 syntax, the function returns None.
    This function makes heavy abuse of the fact that we are allowed to assume that the proper operands
    will always be passed into the proper instructions. *)
let rec resolve_value (m: mach) (op: operand) : quad option =
  match op with
  | Imm immediate -> (*If given an immediate, directly return that value*)
    value_of_imm immediate
  | Reg register -> (*If given a register, return the quad value from inside that register*)
    Some( Array.get m.regs @@ rind register )
  | Ind1 immediate -> (*The location pointed to by the immediate value*)
    value_of_imm immediate >>-
    quad_at_address m 
  | Ind2 register -> (*The location pointed to by the register*)
    resolve_value m @@ Reg register >>- (*Pull the value out of the register*)
    quad_at_address m  (*Find the address at that value*)
  | Ind3 (immediate, register) ->
    resolve_value m @@ Reg register >>- fun value -> (*Get the value out of the register*)
    value_of_imm immediate >>- fun shift -> (*Get the value out of the immediate*)
    quad_at_address m @@ Int64.add value shift (*Add them then get their address*)

  (*Returns the quad specified by the indirect adress.*)
let resolve_indirect (m: mach) (op: operand) : quad option =
  match op with
  | Imm immediate -> (*If given an immediate, directly return that value*)
    value_of_imm immediate
  | Reg register -> (*If given a register, return the quad value from inside that register*)
    Some( Array.get m.regs @@ rind register )
  | Ind1 immediate -> (*Simply place the value at the immediate adress. *)
    value_of_imm immediate
  | Ind2 register -> (*Go to the adress the register points to, and place the value*)
    resolve_value m @@ Reg register
  | Ind3 (immediate, register) -> (*Place the value in the portion defined by register+immediate*)
    value_of_imm immediate >>- fun imm_shift ->
    resolve_value m @@ Reg register >>- fun base_address ->
    Some( Int64.add imm_shift base_address)

(* A wrapper to turn a condition and machine into a bool option *)
let resolve_condition (m: mach) (condition: cnd) : bool option = Some( interp_cnd m.flags condition )
  (* When given something meant to represent an address, returns a function that, when a quad is passed in,

  replaces the value in the address with value. works with REGISTERS and MEMORY. *)
let place_into_address (m: mach) (op: operand) (value: quad): unit option =
  match op with
  | Imm immediate -> (*A normal immediate is treated the same as an Ind1. *)
    value_of_imm immediate >>- fun quad_address ->
    place_quad m.mem quad_address value
  | Reg register -> (*Place the value in the register itself. *)
    Some( Array.set m.regs (rind register) value )
  | Ind1 immediate -> (*Simply place the value at the immediate adress. *)
    value_of_imm immediate >>- fun quad_address ->
    place_quad m.mem quad_address value
  | Ind2 register -> (*Go to the adress the register points to, and place the value*)
    resolve_value m @@ Reg register >>- fun quad_address ->
    place_quad m.mem quad_address value
  | Ind3 (immediate, register) -> (*Place the value in the portion defined by register+immediate*)
    resolve_indirect m @@ Ind3 (immediate, register) >>- fun address ->
    place_quad m.mem address value

(*Adds quad value into the place defined by destination. Properly sets the overflow flag. *)
let add_destination (m: mach) (destination: operand) (value: quad): unit option =
  (*Let D64 be the 64-bit sign extension of DEST and S64 be the 64-bit sign extension of SRC. The result
    R64 = DEST +64 SRC is the 64-bit truncation of R64, which is obtained by 64-bit addition
    R64 = D64 +64 S64. Flag OF is set when S64 and D64 have the
    same sign but R64 and S64 do not.*)
  resolve_value m destination >>- fun d64 ->
  Some( Int64.add value d64 ) >>- fun r64 ->
  m.flags.fo <- ( (sign value) = (sign d64) ) && ((sign r64) != (sign value));
  set_signed_zero_flags m r64;
  place_into_address m destination r64

(*Subtracts quad value from the place defined by destination*)
let sub_destination (m: mach) (destination: operand) (value: quad): unit option =
  (*Signed integer subtraction. This operation can be computed using arithmetic negation and addition.
  Let D64 be the 64-bit sign extension of DEST and S64 be the 64-bit sign extension of SRC. The result
  R64 = DEST -64 SRC is the 64-bit truncation of R64, which is obtained by the 64-bit computation
  R64 = D64 +64 -S64. Flag OF is set when D64 and -S64 have the same sign but R64 and -S64 do not
  or when SRC = MIN_INT.*)
  resolve_value m destination >>- fun d64 ->
  Some( Int64.sub d64 value ) >>- fun r64 ->
  m.flags.fo <- (((sign d64) != (sign value) ) && ( (sign r64)=(sign value))) || (value = Int64.min_int);
  set_signed_zero_flags m r64;
  place_into_address m destination r64

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)
let step (m:mach) : unit =
  let instuction_address = map_addr @@ Array.get m.regs (rind Rip) in (*Save the contents of the instruction pointer*)
  begin match instuction_address with
  | None -> raise X86lite_segfault
  | Some( address : int ) -> begin
    let (instruction : sbyte) = Array.get m.mem address in
    begin match instruction with
    | InsFrag -> failwith "Instruction Fetch: Bad Memory Alignment"
    | Byte( character ) -> failwith "Instruction Fetch: Non-instruction: Recieve Byte instead of instruction"
    | InsB0( opcode, operands ) ->
      (* Printf.printf "%Ld: Executing Instruction %s.\n" (Array.get m.regs (rind Rip)) @@ string_of_ins (opcode, operands); *)
      (* To simplify the match statement we get the operands beforehand. *)
      let op1 = List.nth_opt operands 0 in
      let op2 = List.nth_opt operands 1 in
      begin match (opcode, op1, op2) with
      | (Movq, Some source, Some destination)  -> (*Move contents of source into destination*)
        resolve_value m source >>= 
        place_into_address m destination >>=
        return
      | (Pushq, Some source, None) -> (*Push a 64-bit value onto the stack: decrement rsp by 8
        to allocate the new stack slot and then store SRC in the resulting memory address.*)
        resolve_value m (Reg Rsp) >>= fun stack_location ->
        place_into_address m (Reg Rsp) (Int64.sub stack_location 8L) >>= fun _ ->
        resolve_value m source >>=
        place_into_address m (Ind2 Rsp) >>= (*Place into the location held by the register rsp*)
        return
      | (Popq, Some destination, None)  -> (*Pop the top of the stack into DEST: Load the value pointed
      to by rsp from memory and then increment rsp by 8.*)
        resolve_value m (Ind2 Rsp) >>=
        place_into_address m destination >>= fun _ ->
        resolve_value m (Reg Rsp) >>= fun stack_location ->
        place_into_address m (Reg Rsp) (Int64.add stack_location 8L) >>=
        return
      | (Leaq, Some indirect, Some destination)  -> (*Load effective address of Ind, which must be an operand
      of type ind (see operands). This instruction calculates a pointer into memory and stores it in DEST.*)
        resolve_indirect m indirect >>=
        place_into_address m destination >>=
        return
      | (Incq, Some source, None)  -> (*Computes the 64-bit successor of SRC. Flags are set as in addq.*)
        add_destination m source 1L >>=
        return
      | (Decq, Some source, None)  -> (*Computes the 64-bit predecessor of SRC. Flags are set as in subq.*)
        sub_destination m source 1L >>=
        return
      | (Negq, Some destination, None)  -> (*Two's complement negation. Flag OF is set if DEST is MIN_INT*)
        resolve_value m destination >>= fun value_dst ->
        m.flags.fo <- value_dst = Int64.min_int;
        Some(Int64.neg value_dst) >>= fun result ->
        place_into_address m destination result >>= fun _ ->
        set_signed_zero_flags m result
      | (Notq, Some destination, None)  -> (*One's complement (logical) negation.*)
        resolve_value m destination >>= fun value ->
        place_into_address m destination (Int64.lognot value) >>=
        return
      | (Addq, Some source, Some destination)  -> (*Signed integer addition. Nearly all logic, including flags, is
        done within the add_destination function. *)
        resolve_value m source >>=
        add_destination m destination >>=
        return
      | (Subq, Some source, Some destination)  -> (*Signed integer subtraction. Nearly all logic, including flags, is
        done by the sub_destination function. *)
        resolve_value m source >>=
        sub_destination m destination >>=
        return
      | (Imulq, Some source, Some destination) -> (*Signed integer multiply. Let D64 be the 64-bit sign extension of Reg
        and S64 be the 64-bit sign extension of SRC. The result R64 = Reg *64 SRC is the 64-bit truncation of R64,
        which is obtained by 64-bit multiplication R64 = D64 *64 S64. Flag OF is set when R64 cannot be represented as
        a 64-bit sign-extended integer. Flags ZF and SF are undefined*)
        resolve_value m source >>= fun s64 ->
        resolve_value m destination >>= fun d64 ->
        Some( Int64.mul s64 d64 ) >>= fun r64 ->
        place_into_address m destination r64 >>= fun _ ->
        m.flags.fo <- (Int64.div r64 s64) <> d64; (*Set the flag if the opposition operation doesn't act as defined. *)
        set_signed_zero_flags m r64 (*Set the rest of the flags*)
      | (Xorq, Some source, Some destination)  -> (*Logical XOR. Flag OF is always set to 0.*)
        resolve_value m source >>= fun src_value ->
        resolve_value m destination >>= fun dest_value ->
        Some(Int64.logxor src_value dest_value) >>= fun result ->
        place_into_address m destination result >>= fun _ ->
        m.flags.fo <- false;  (*Set the overflow flag*)
        set_signed_zero_flags m result  (*Set all the other flags*)
      | (Orq, Some source, Some destination)   -> (*Logical OR. Flag OF is always set to 0.*)
        resolve_value m source >>= fun src_value ->
        resolve_value m destination >>= fun dest_value ->
        Some(Int64.logor src_value dest_value) >>= fun result ->
        place_into_address m destination result >>= fun _ ->
        m.flags.fo <- false;  (*Set the overflow flag*)
        set_signed_zero_flags m result  (*Set all the other flags*)
      | (Andq, Some source, Some destination)  -> (*Logical AND. Flag OF is always set to 0.*)
        resolve_value m source >>= fun src_value ->
        resolve_value m destination >>= fun dest_value ->
        Some(Int64.logand src_value dest_value) >>= fun result ->
        place_into_address m destination result >>= fun _ ->
        m.flags.fo <- false;  (*Set the overflow flag*)
        set_signed_zero_flags m result  (*Set all the other flags*)
      | (Shlq, Some ammount, Some destination)  -> (*Bitwise shift DEST left by AMT. AMT must be a Imm or rcx operand.
        If AMT = 0 flags are unaffected. Otherwise, flags SF and ZF are set as usual. OF is set if the top two bits
        of DEST are different and the shift amount is 1 (and is otherwise unaffected).*)
        resolve_value m ammount >>= fun amt ->
        if amt=0L then ()
        else
        resolve_value m destination >>= fun dest ->
        Some( Int64.shift_left dest (Int64.to_int amt)) >>= fun result ->
        place_into_address m destination result >>= fun _ ->
        m.flags.fo <- amt=1L && (Int64.logand dest 0xC0000000L) = (Int64.logand result 0xC0000000L);
        set_signed_zero_flags m result
      | (Sarq, Some ammount, Some destination)  -> (*Arithmetic shift DEST right by AMT, replicating the sign bit
        for the vacated spaces. AMT must be a Imm or rcx operand. If AMT = 0 flags are unaffected. Otherwise the
        flags SF and ZF are set as usual. The OF flag is set to 0 if the shift amount is 1
        (and is otherwise unaffected).*)
        resolve_value m ammount >>= fun amt ->
        if amt=0L then ()
        else
        resolve_value m destination >>= fun dest ->
        Some( Int64.shift_right dest (Int64.to_int amt)) >>= fun result ->
        place_into_address m destination result >>= fun _ ->
        m.flags.fo <- amt=1L;
        set_signed_zero_flags m result
      | (Shrq, Some ammount, Some destination)  -> (*Bitwise shift DEST right by AMT inserting 0's for the
        vacated spaces. AMT must be a Imm or rcx operand. Flags are set as in the shlq instruction, where
        OF is set to the most-significant bit of the original operand if the shift amount is 1
        (and is otherwise unaffected).*)
        resolve_value m ammount >>= fun amt ->
        if amt=0L then ()
        else
        resolve_value m destination >>= fun dest ->
        Some( Int64.shift_right_logical dest (Int64.to_int amt)) >>= fun result ->
        place_into_address m destination result >>= fun _ ->
        if amt=1L then m.flags.fo <- ((Int64.logand result 0x8000000000000000L) = 0x8000000000000000L); (*Extract largest bit from number*)
        set_signed_zero_flags m result
      | (Jmp, Some source, None)   -> (*Jump to the machine instruction at the address given by the value of
        SRC. Sets the program counter.*)
        resolve_indirect m source >>= fun address ->
        place_into_address m (Reg Rip) (Int64.sub address 8L) >>=
        return
      | (J condition, Some source, None)  -> (*Conditional jump: If the condition code CC holds
        in the current state, set rip to SRC; otherwise set rip to the next instruction (i.e. fallthrough).*)
        resolve_condition m condition >>= fun do_jump ->
        if do_jump
        then resolve_indirect m source >>= fun address ->
          place_into_address m (Reg Rip) (Int64.sub address 8L) >>=
          return
        else () (*Fallthrough*)
      | (Cmpq, Some source1, Some source2)  -> (*Compare SRC1 to SRC2 by setting all condition flags as
        though the instruction subq SRC1 SRC2 was executed. Does not change register or memory contents.*)
        resolve_value m source1 >>= fun s64 ->
        resolve_value m source2 >>= fun d64 ->
        Some( Int64.sub d64 s64 ) >>= fun r64 ->
        m.flags.fo <- (((sign d64) != (sign s64) ) && ( (sign r64)=(sign s64))) || (s64 = Int64.min_int);
        set_signed_zero_flags m r64;
      | (Set condition, Some destination, None)  -> (*If condition code CC holds in the current state,
        move 1 into the lower byte of DEST; otherwise move 0 into the lower byte.*)
        resolve_value m destination >>= fun original ->
        resolve_condition m condition >>= fun do_set ->
        begin if do_set
        then place_into_address m destination (Int64.logand 0xFFFFFFFFFFFFFF01L original)
        else place_into_address m destination (Int64.logand 0xFFFFFFFFFFFFFF00L original) end >>=
        return
      | (Callq, Some source, None) -> (*Call a procedure: Push the program counter to the stack
        (decrementing rsp) and then jump to the machine instruction at the address given by
        the value of SRC.*)
        (*Lower the stack pointer by 8*)
        resolve_value m (Reg Rsp) >>= fun stack_location ->
        place_into_address m (Reg Rsp) (Int64.sub stack_location 8L) >>= fun _ ->
        (*Place the adress of the next instruction onto the stack*)
        resolve_value m (Reg Rip) >>= fun cur_instruction ->
        place_into_address m (Ind2 Rsp) (Int64.add cur_instruction 8L) >>= fun _ ->(*Place into the location held by the register rsp*)
        (*Update our program pointer with the jump location - 8*)
        resolve_indirect m source >>= fun jump_location -> (*Call resolve indirect since it's a location*)
        place_into_address m (Reg Rip) (Int64.sub jump_location 8L) >>=
        return
        (*Diagnostics*)
        (*Printf.printf "Call to instruction %Ld from " jump_location;*)
        (*Printf.printf "Stack location %Ld. " (Int64.sub stack_location 8L);*)
        (*Printf.printf "Return to instruction %Ld.\n" (Int64.add cur_instruction 8L)*)
      | (Retq, None, None)  -> (*Return from a procedure: Pop the current top of the stack
        into rip (incrementing rsp); this instruction effectively jumps to the address at the
        top of the stack.*)
        (*Grab the instruction and place it into program pointer*)
        resolve_value m (Ind2 Rsp) >>= fun next_instruction ->
        place_into_address m (Reg Rip) (Int64.sub next_instruction 8L)>>= fun _ -> (*Undos our add at the end*)
        resolve_value m (Reg Rsp) >>= fun stack_location ->
        place_into_address m (Reg Rsp) (Int64.add stack_location 8L) >>= (*Increase stack pointer by 8*)
        return
        (*Printf.printf "Return to instruction %Ld From " next_instruction;*)
        (*Printf.printf "Stack Location at %Ld.\n" stack_location;*)
      | _ -> failwith "Decoder: Bad Instruction/Argument pair"
      end
    end
  end
end;
(*Finally, update the program instruction counter*)
(* Printf.printf "Conditional Flags, Zero: %B, Sign: %B, Overflow: %B\n" m.flags.fz m.flags.fs m.flags.fo; *)
resolve_value m (Reg Rip) >>= fun old_counter ->
place_into_address m (Reg Rip) (Int64.add old_counter 8L) >>=
return
(* Runs the machine until the rip register reaches a designated
   memory address. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl
  
(*Finds and returns the data section in the program, as well as the program
  without the data*)
let seperate_sections ((text:prog),(data:prog)) (line: elem) : prog*prog =
  match line.asm with
  | Data _ -> (text, (line::data))
  | Text _ -> ((line::text), data)

(*Given a data section, interpret it into an sbyte list. *)
let parse_data (data_section: data list) : (sbyte list) =
  let data_sbytes = List.fold_left (fun ls data -> ls @ sbytes_of_data data) [] data_section in
  data_sbytes


type label_location = (lbl*quad) list

let place_label ((label,address): (lbl*quad)) (ls: label_location): label_location =
  match List.assoc_opt label ls with
  | Some _ -> raise (Redefined_sym label)
  | None -> (label,address)::ls

(*Returns the total number of bytes the text section will take up*)
let pre_process_text_labels_size (begin_index: quad) (initial_lables: label_location) (sections: elem list): quad*label_location =
  let size_fold ((cur_size: quad), (labels: label_location)) (line: elem) : quad*label_location =
    (Int64.add cur_size (match line.asm with
    | Text ls -> Int64.of_int @@ 8*(List.length ls) (*Each instruction is 8 bytes*) 
    | Data _ -> failwith "Data in Text block"
    ), place_label (line.lbl, cur_size) labels )
  in
  List.fold_left size_fold (mem_bot,initial_lables) sections

(*Pulls the labels from the data section as well as actually creating it*)
let process_data (begin_index: quad) (initial_lables: label_location) (sections: elem list): quad*label_location*(sbyte list) =
  let data_fold ((cur_size: quad), (labels: label_location), (cur_data:(sbyte list))) (line: elem): quad*label_location*(sbyte list) =
    let data_list = (match line.asm with
    | Text _ -> failwith "Text section in Data block"
    | Data ls -> parse_data ls
    ) in
    (
      (Int64.add cur_size (Int64.of_int @@ List.length data_list)),
      (place_label (line.lbl, cur_size) labels),
      (cur_data@data_list)
    )
  in
  List.fold_left data_fold (begin_index,initial_lables,[]) sections

(*Builds the exec with labels placed inside instructions*)
let process_text (text: prog) (lables: label_location): sbyte list =
  (*Given a single operand, remove any labels that appear within it*)
  let remove_label (op: operand) (lables: label_location) : operand =
    let get_label_value (label: lbl) : quad =
      match (List.assoc_opt label lables) with
      | Some(x) -> x
      | None -> raise (Undefined_sym label)
    in
    match op with
    | Imm (Lbl label) -> Imm ( Lit (get_label_value label) )
    | Ind1 (Lbl label) -> Ind1( Lit(get_label_value label) )
    | Ind3 (Lbl label, reg) -> Ind3( Lit(get_label_value label), reg )
    | _ -> op
  in
  (*Given a single instruction, change it into an sbyte list*)
  let ins_to_sbyte (instruction: ins) (lables: label_location): sbyte list =
    let (opcode, operands) = instruction in
    let no_lbl_operands = List.map (fun op -> remove_label op lables) operands in
    sbytes_of_ins (opcode, no_lbl_operands)
  in
  (*Given a block of text, change it into an sbyte list*)
  let text_block_to_sbyte (block: elem) (lables: label_location): sbyte list =
    match block.asm with
    | Data _ -> failwith "Data block in text section"
    | Text ins_list -> (*Transfer the instructions into an sbyte block*)
    List.fold_left (fun ls instruction -> ls @ (ins_to_sbyte instruction lables)) [] ins_list
  in
  List.fold_left (fun ls section -> ls @ (text_block_to_sbyte section lables)) [] text

  (* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)
let assemble (p:prog) : exec = 
  (*Seperate the text and data sections*)
  let (text_section, data_section) = List.fold_left seperate_sections ([],[]) p in
  (*Get all the labels and the total size out of the text section*)
  let text_section = List.rev text_section in
  let data_section = List.rev data_section in
  let (text_length, text_labels) = pre_process_text_labels_size mem_bot [] text_section in
  (*Get the labels, overal size, and sbyte data out of the data section*)
  let (full_length, full_labels, data_sbytes) = process_data text_length text_labels data_section in
  (*Process the text section now that we have all the labels*)
  let processed_text = process_text text_section full_labels in
  (*Build the exec*)
  if (List.assoc_opt "main" full_labels) = None
    then raise (Undefined_sym "main")
  else let entryVal = List.assoc "main" full_labels in
  (* Printf.printf "Text position is %Ld.\n" mem_bot;
  Printf.printf "Data position is %Ld.\n" text_length;
  Printf.printf "My labels are %s.\n" (List.fold_left (fun str (lable,num) ->
    str ^ "(" ^ lable ^ "," ^ (Int64.to_string num) ^ ") " ) "" full_labels); *)
    {
    entry = entryVal;
    text_pos  = mem_bot;
    data_pos  = text_length;
    text_seg  = processed_text;
    data_seg  = data_sbytes
  }

let find_pos (pos : quad) : int =
  begin match map_addr pos with
  | Some x -> x
  | None -> failwith "Bad Data Position"
  end

(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
  let memory_array = (Array.make mem_size (Byte '\x00')) in 
  Array.blit (Array.of_list (text_seg)) 0 memory_array (find_pos text_pos) (List.length text_seg);
  Array.blit (Array.of_list (data_seg)) 0 memory_array (find_pos data_pos) (List.length data_seg);
  Array.blit (Array.of_list (sbytes_of_int64 exit_addr)) 0 memory_array (mem_size-8) 8;
  let regs = Array.make nregs 0L in
  regs.(rind Rip) <- entry;
  regs.(rind Rsp) <- Int64.sub mem_top 8L;
  (* Printf.printf "Entry point is %Ld.\n" entry; *)
  {
    flags = {fo = false; fs = false; fz = false}; 
    regs = regs; 
    mem = memory_array
  }



