; generated from: hw4programs/easyrun4.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_24 = alloca i64
  %_25 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_24
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_25
  %x = alloca i64
  %i = alloca i64
  store i64 0, i64* %x
  store i64 0, i64* %i
  br label %_while_cond26
_while_cond26:
  %_27 = load i64, i64* %i
  %_28 = icmp slt i64 %_27, 3
  %_29 = icmp eq i1 1, %_28
  br i1 %_29, label %_loop_body30, label %_loop_end37
_loop_body30:
  %_31 = load i64, i64* %x
  %_32 = add i64 %_31, 2
  store i64 %_32, i64* %x
  %_34 = load i64, i64* %i
  %_35 = add i64 %_34, 1
  store i64 %_35, i64* %i
  br label %_while_cond26
_loop_end37:
  %_38 = load i64, i64* %x
  ret i64 %_38
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
