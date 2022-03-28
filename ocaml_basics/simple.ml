(*Interpretaor and expressions of a SIMPLE language*)

type var = string

(*The expression data structure*)
type exp =
  | Var of var
  | Add of exp * exp
  | Mul of exp * exp
  | Lt of exp * exp
  | Lit of int

type cmd = 
  | Skip
  | Assign of var * exp
  | IfNZ of exp * cmd * cmd
  | WhileNZ of exp * cmd
  | Seq of cmd * cmd

let myX = "x"

let myAssignStmt = Assign(myX, Add( Var(myX), Lit(1) ) )

type state = var -> int

let rec interpret_exp (s:state) (e:exp) : int =
  match e with
  | Add(e1, e2) -> (interpret_exp s e1) + (interpret_exp s e2)
  | Mul(e1, e2) -> (interpret_exp s e1) * (interpret_exp s e2)
  | Lt(e1, e2)  -> if (interpret_exp s e1) < (interpret_exp s e2) then 1 else 0
  | Var(v)      -> s v
  | Lit(i)      -> i

  let update past_state key value = 
    (fun arg -> (if arg = key then value else (past_state arg)))

  let rec interpret_cmd (s:state) (c:cmd) : state =
    match c with
    | Skip -> s
    | Assign(x, e) -> update s x (interpret_exp s e)
    | Seq(cmd1, cmd2) -> begin
      let s2 = (interpret_cmd s cmd1) in
      (interpret_cmd s2 cmd2) end
    | IfNZ(e, c1, c2) -> begin
      if (interpret_exp s e) <> 0 then (interpret_cmd s c1) else (interpret_cmd s c2) end
    | WhileNZ(e, c) -> interpret_cmd s (IfNZ(e, Seq(c, WhileNZ(e, c)), Skip))

let init_state : state = fun _ -> 0

let rec optimize_cmd (c:cmd) : cmd =
  match c with
  | Assign(x, Var y) -> if x = y then Skip else c
  | Assign( _, _) -> c
  | WhileNZ( Lit 0, c) -> Skip
  | _ -> Skip


(*EOF*)