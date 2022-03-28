; generated from: hw4programs/easyrun7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc65, { i64, [0 x i8*] }* %_argv66) {
  %argc = alloca i64
  store i64 %_argc65, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv66, { i64, [0 x i8*] }** %argv
  %_uop67 = xor i64 5, -1
  %_bop68 = and i64 %_uop67, 6
  %_bop69 = or i64 2, 0
  %_bop70 = icmp sge i64 %_bop68, %_bop69
  br i1 %_bop70, label %_if71, label %_else72
_if71:
  ret i64 23
_else72:
  ret i64 46
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
