open Assert
open Hellocaml

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let mye1 = Neg(Add( Const 3L, Const 4L))
let mye2 = Add( Mult( Var "x", Const 9L),Neg( Mult( Var "y", Const 2L)))

let mye3 = Mult( Mult( Mult( Mult( Const 3L, Const 3L), Const 3L), Const 3L), Const 3L)

(*(interpret c e) = v       if and only if
     (run c (compile e)) = v*)
let test_compile (c:ctxt) (e:exp) = begin
  assert_eqf (fun () -> (interpret c e)) (run c (compile e)) end

let provided_tests : suite = [
  Test ("Student-Provided Tests For Problem 1-3", [
    ("case1", assert_eqf (fun () -> 42) prob3_ans );
    ("case2", assert_eqf (fun () -> 25) (prob3_case2 17) );
    ("case3", assert_eqf (fun () -> prob3_case3) 64);
  ]);
  
  Test ("Student-Provided Tests For Problem 4-3", [
    ("interpret1", assert_eqf (fun () -> interpret [] mye1) (-7L));
    ("interpret2", assert_eqf (fun () -> interpret [("x", 2L); ("y", 7L)] mye2) 4L);
    ("interpret3", assert_eqf (fun () -> interpret [] mye3) 243L);
  ]);

  Test ("Student-Provided Tests For Problem 5", [
    ("step1", assert_eqf (fun () -> (step [] [] (IPushC(3L)) )) [3L]);
    ("step2", assert_eqf (fun () -> (step [("x", 5L)] []
                                            (IPushV("x")) )) [5L]);
    ("step3", assert_eqf (fun () -> (step [] [10L; 3L; 25L]
                                            (IMul ))) [30L; 25L]);
    ("step4", assert_eqf (fun () -> (step [] [10L; 3L; 25L]
                                            (IAdd ))) [13L; 25L]);
    ("step5", assert_eqf (fun () -> (step [] [10L; 3L; 25L]
                                            (INeg ))) [(-10L); 3L; 25L]);
  ]);

  

  Test ("Student-Provided Tests For Problem 5 Compile", [
    ("compile1", (test_compile [] mye1));
    ("compile2", (test_compile [("x", 2L); ("y", 7L)] mye2));
    ("compile3", (test_compile [] mye3));
  ])
  
] 
