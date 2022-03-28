 (* 
 * File Created:  Tuesday, 16th February 2021
 * Author: John Cinquegrana, Nikolas Stefanov (jcinqueg@stevens.edu, nstefano@stevens.edu)
 * Stevens    2021s  CS516
 * Pledge: I pledge my honor I have abided by the Stevens Honor system.
 *) 


open Assert
open Simulator
open X86
open Asm
open Gradedtests
(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.*)

(*Return values are placed in the Rax register at the end of execution*)

(*
 *
 *
 *GCD is the Non-Trivial X86 Program for Part III
 *
 *
 *)
let gcd x y = [ text "main"
          [ Movq, [~$x; ~%R08];
            Movq, [~$y; ~%R09];
            Cmpq, [~$0; ~%R08;];
            J Le, [~$$"exit_2"]
          ]
    ; text "loop1" (* y > x *)
          [ Cmpq, [~$0; ~%R08]
          ; J Le, [~$$"exit_2"] (* if x <= 0 jump ret y *)
          ; Cmpq, [~%R09; ~%R08]
          ; J Gt, [~$$"loop2"] (* if x > y jump*)
          ; Subq, [~%R08; ~%R09] (* y = y-x *)
          ; Jmp, [~$$"loop1"]
          ]
    ; text "loop2" (* x > y *)
          [ Cmpq, [~$0; ~%R09;]
          ; J Le, [~$$"exit_1"] (* if y<=0 ret x*)
          ; Cmpq, [~%R08; ~%R09]
          ; J Gt, [~$$"loop1"] (*if y>x jump*)
          ; Subq, [~%R09; ~%R08] (*x = x-y*)
          ; Jmp, [~$$"loop2"] 
          ]
    ; text "exit_1" (*Return x*)
          [ Movq, [~%R08; ~%Rax];
            Retq,  []; 
          ]
    ;text "exit_2" (*Return y*)
          [ Movq, [~%R09; ~%Rax];
          Retq,  [];
          ]
    ]

let stack_fun = 
  [ text "main" (*304*)
    [
      Movq, [~$$"arr"; ~%Rbx];
      Movq, [~$1; ~%Rax];
    ]
  ; text "store"
    [
      Cmpq, [~$0; Ind2 Rbx ]; (*320*)
      J Le, [~$$"pop_all"]; (*If no elements left, start popping*)
      (* If we still have elements on the stack *)
      Pushq, [ Ind2 Rbx ];
      Addq, [~$8; ~%Rbx];
      Jmp, [~$$"store"]
    ]
  ; text "pop_all" (*360*) (*Stack has 10..1 value with 1 on top*)
    [ 
      Popq, [~%Rbx];
      Imulq, [~%Rbx; ~%Rax]; 
      Cmpq, [~$10; ~%Rbx]; (*If Rbx holds value 10, end*)
      J Lt, [~$$"pop_all"]; (*If Rbx<10, jump pop_all*)
      Retq,  []; 
    ]
  ; data "arr" (*400*)
    [
      Quad( Lit 10L );
      Quad( Lit 9L );
      Quad( Lit 8L );
      Quad( Lit 7L );
      Quad( Lit 6L );
      Quad( Lit 5L );
      Quad( Lit 4L );
      Quad( Lit 3L );
      Quad( Lit 2L );
      Quad( Lit 1L );
      Quad( Lit 0L );
    ]
]

let array_sum = 
  [ text "main" (*304*)
    [
      Movq, [~$$"arr1"; ~%Rbx];
      Movq, [~$0; ~%Rax];
      Callq, [~$$"sum_up"];
      Movq, [~%Rax; ~%Rdx];
      Movq, [~$$"arr2"; ~%Rbx];
      Movq, [~$0; ~%Rax];
      Callq, [~$$"sum_up"];
      Addq, [~%Rdx; ~%Rax];
      Retq, []
    ];
  text "sum_up"
    [ (*Sum the zero-terimated array pointed to by Rbx*)
      Movq, [Ind2 Rbx; ~%Rcx];
      Cmpq, [~%Rcx; ~$0 ];
      J Eq, [~$$"return"];
      Addq, [~%Rcx; ~%Rax];
      Addq, [~$8; ~%Rbx];
      Jmp, [~$$"sum_up"]
    ];
  text "return"
    [
      Retq, [] 
    ];
  data "arr1"
    [
      Quad( Lit 10L );
      Quad( Lit 9L );
      Quad( Lit 8L );
      Quad( Lit 7L );
      Quad( Lit 6L );
      Quad( Lit 0L );
    ];
  data "arr2"
    [
      Quad( Lit 5L );
      Quad( Lit 4L );
      Quad( Lit 3L );
      Quad( Lit 2L );
      Quad( Lit 1L );
      Quad( Lit 0L );
    ]
]

let provided_tests : suite = [
  Test ("Student-Provided Big Test for Part III: Score recorded as PartIIITestCase", [
    ("gcd1", program_test (gcd 100 350) 50L);
    ("gcd2", program_test (gcd 51 18) 3L);
    ("Stack1", program_test (stack_fun) 3628800L);
    ("ArraySum", program_test (array_sum) 55L);
    ("Empty", program_test [text "main" [Retq, []]] 0L);
  ]

   )]

