open Assert
open Gradedtests

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                  
*)

let student_written = [
  "studentprograms/PaulKellyPirates.oat", "", "3930";
  "studentprograms/subset_sum.oat", "", "15"
]
let provided_tests : suite = [
  Test( "Subset Sum", executed_oat_file student_written );
] 


