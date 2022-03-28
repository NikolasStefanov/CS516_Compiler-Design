; generated from: hw4programs/easyrun8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc99, { i64, [0 x i8*] }* %_argv100) {
  %_argc101 = alloca i64
  store i64 %_argc99, i64* %_argc101
  %_argv102 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv100, { i64, [0 x i8*] }** %_argv102
  %_bop103 = icmp ne i64 6, 5
  br i1 %_bop103, label %_if114, label %_else115
_if114:
  %_uop105 = mul i64 6, -1
  %_bop106 = lshr i64 5, %_uop105
  %_bop107 = shl i64 %_bop106, 9
  %_bop108 = ashr i64 %_bop107, 10
  %_uop109 = xor i64 %_bop108, -1
  %_bop110 = mul i64 %_uop109, 2
  %_bop111 = sub i64 %_bop110, 100
  %_bop112 = add i64 %_bop111, 6
  %_fun_return104 = bitcast i64 %_bop112 to i64
  ret i64 %_fun_return104
_else115:
  %_fun_return113 = bitcast i64 2 to i64
  ret i64 %_fun_return113
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
