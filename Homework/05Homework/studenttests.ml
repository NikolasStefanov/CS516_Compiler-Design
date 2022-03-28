open Assert
open Gradedtests

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let good_tests = [
  ("student_programs/test2.oat", "", "0");
  ("student_programs/test3.oat", "", "o\nNum was: 1\na\nNum was: 1\nJa z z\nNum was: 6\nn i k o\nNum was: 70");
]

let err_tests = [
  "student_programs/test1.oat"
]

let provided_tests : suite = [
  Test("new tests", executed_oat_file good_tests);
  Test("error tests", typecheck_file_error err_tests)
] 

