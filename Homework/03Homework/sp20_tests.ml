open Assert
open X86
open Ll
open Backend

let tests =
  [ "llsp20/unique_nums0.ll", 0L
  ; "llsp20/unique_nums1.ll", 1L
  ; "llsp20/adj_dups.ll", 1L
(*
; "llsp20/binary.ll", [], "1";
; "llsp20/binary.ll", ["a"], "10";
; "llsp20/binary.ll", ["a";"a"], "11";
; "llsp20/binary.ll", ["a";"a";"a"], "100";
; "llsp20/binary.ll", ["a";"a";"a";"a"], "101";
*)
; "llsp20/euler02.ll", 188L
  ; "llsp20/fib2.ll", 1L
  ; "llsp20/fib3.ll", 2L
  ; "llsp20/fib4.ll", 3L
  ; "llsp20/fib5.ll", 5L
  ; "llsp20/fib6.ll", 8L
  ; "llsp20/fib7.ll", 13L
  ; "llsp20/fib8.ll", 21L
  ; "llsp20/fib9.ll", 34L
  ; "llsp20/fib10.ll", 55L
  ; "llsp20/fib11.ll", 89L
  ; "llsp20/fib12.ll", 144L
  ; "llsp20/fib13.ll", 233L
  (*
  ; "llsp20/fib14.ll", Int64.rem 377L 256L);
  ; "llsp20/fib15.ll", Int64.rem 610L 256L);
  ; "llsp20/fib16.ll", Int64.rem 987L 256L);
  ; "llsp20/fib17.ll", Int64.rem 1597L 256L);
  ; "llsp20/fib18.ll", Int64.rem 2584L 256L);
  ; "llsp20/fib19.ll", Int64.rem 4181L 256L);
  ; "llsp20/fib20.ll", Int64.rem 6765L 256L);
  *)
  ; "llsp20/find_duplicate_with_sum.ll", 4L
(*
  ; "llsp20/zptest.ll", ["100"; "5"], "5"
  ; "llsp20/zptest.ll", ["5"; "0"; "1"], "1"
  ; "llsp20/zptest.ll", ["5"; "1"; "0"], "5"
  ; "llsp20/zptest.ll", "0"::poly1, "10"
  ; "llsp20/zptest.ll", "5"::poly1, "-1145"
  ; "llsp20/zptest.ll", "-3"::poly1, "-113"
  ; "llsp20/zptest.ll", "0"::poly2, "0"
  ; "llsp20/zptest.ll", "14"::poly2, "381086720"
  ; "llsp20/zptest.ll", "-6"::poly2, "-4417920"
*)
  ; "llsp20/linkedlist_cycle.ll", 6L
  ; "llsp20/maxthree.ll", 26L
  ; "llsp20/onenondup.ll", 5L
  ; "llsp20/power.ll", 243L
  ; "llsp20/quicksort.ll", 140L
  ; "llsp20/russianMult.ll", 7566L
  ; "llsp20/power1.ll", 4L
  ; "llsp20/power2.ll", 1L
  ; "llsp20/power3.ll", 81L 
  ; "llsp20/tetrate1.ll", 16L
  ; "llsp20/tetrate2.ll", 1L
  ; "llsp20/tetrate3.ll", 27L
  ; "llsp20/tetrate4.ll", 4L
  ; "llsp20/test1.ll", 1L
  ; "llsp20/test2.ll", 3L
  ; "llsp20/test3.ll", 6L
  ; "llsp20/test10.ll", 55L
  ; "llsp20/test20.ll", 210L
  ; "llsp20/twosum.ll", 1L
  ]
