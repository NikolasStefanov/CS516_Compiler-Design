(*
Translate a simple imperative program into Ocaml code
by representing the OCaml program as a string.
*)


let _ () =
  print_endline " let _ ( = Print.printf \"res: %d\" (42 + 1)"

type var = string

let rec trans_exp (e:exp) : string =
  match e with
  | Add( e1, e2 ) -> (trans_exp e1) ^ " + " ^ (trans_exp e2)
  | Mul( e1, e2 ) -> (trans_exp e1) ^ " * " ^ (trans_exp e2)
  | Lit( i )      -> Printf.sprintf "%d" i
  | Lt( e1, e2 )  -> Printf.sprintf "(if %s < %s then 1 else 0)" (trans_exp e1) (trans_exp e2)
  | Var( str )    -> "!" & (trans_var x)

let rec trans_cmd (c:cmd) : string =
  match c with
  | Assign (x, e) -> Printf.sprintf "%"

let trans_prog (c:cmd) : string =