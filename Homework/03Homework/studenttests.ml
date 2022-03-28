open Assert
open Gradedtests
(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let executed_s tests = List.map (fun (fn, ans) -> fn, assert_eqfs (fun () -> Int64.to_string (exec_e2e_file fn "")) (Int64.to_string ans)) tests 

let calling_convention_tests =
  [ "llprograms/call.ll", 42L
  ; "llprograms/call1.ll", 17L 
  ; "llprograms/call2.ll", 19L
  ; "llprograms/call3.ll", 34L
  ; "llprograms/call4.ll", 34L
  ; "llprograms/call5.ll", 24L
  ; "llprograms/call6.ll", 26L            
  ]

let our_test = 
  [ "testCase.ll", 4L]

let provided_tests : suite = [
  GradedTest("Our Test", 2, executed_s our_test)
] 
