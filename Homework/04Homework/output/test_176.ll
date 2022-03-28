; generated from: hw4programs/easyrun7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc86, { i64, [0 x i8*] }* %_argv87) {
  %_argc88 = alloca i64
  store i64 %_argc86, i64* %_argc88
  %_argv89 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv87, { i64, [0 x i8*] }** %_argv89
  %_uop90 = xor i64 5, -1
  %_bop91 = and i64 %_uop90, 6
  %_bop92 = or i64 2, 0
  %_bop93 = icmp sge i64 %_bop91, %_bop92
  br i1 %_bop93, label %_if96, label %_else97
_if96:
  %_fun_return94 = bitcast i64 23 to i64
  ret i64 %_fun_return94
_else97:
  %_fun_return95 = bitcast i64 46 to i64
  ret i64 %_fun_return95
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
