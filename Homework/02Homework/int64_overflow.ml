(* open Big_int ** Removed 2/9/2021 since Big_int is no longer in Ocaml 4.10.1+ *)

(*open Zarith*)
module T = Big_int_Z

type t = { value : int64; overflow : bool }

let ok i = { value = i; overflow = false }

exception Overflow

let with_overflow1 g f i =
  let res = f i in 
  { value = res
  ; overflow = not @@ T.eq_big_int (T.big_int_of_int64 res) (g @@ T.big_int_of_int64 i)
  } 
  
let with_overflow2 g f i j =
  let res = f i j in
  { value = res
  ; overflow = not @@ T.eq_big_int (T.big_int_of_int64 res) 
		                 (g (T.big_int_of_int64 i) (T.big_int_of_int64 j))
  } 

let neg = with_overflow1 T.minus_big_int Int64.neg
let succ = with_overflow1 T.succ_big_int Int64.succ
let pred = with_overflow1 T.pred_big_int Int64.pred

let add = with_overflow2 T.add_big_int Int64.add
let sub = with_overflow2 T.sub_big_int Int64.sub
let mul = with_overflow2 T.mult_big_int Int64.mul
