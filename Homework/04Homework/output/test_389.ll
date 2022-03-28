; generated from: hw4programs/easyrun7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc208, { i64, [0 x i8*] }* %_argv209) {
  %_argc210 = alloca i64
  store i64 %_argc208, i64* %_argc210
  %_argv211 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv209, { i64, [0 x i8*] }** %_argv211
  %_uop212 = xor i64 5, -1
  %_bop213 = and i64 %_uop212, 6
  %_bop214 = or i64 2, 0
  %_bop215 = icmp sge i64 %_bop213, %_bop214
  br i1 %_bop215, label %_if218, label %_else219
_if218:
  %_fun_return216 = bitcast i64 23 to i64
  ret i64 %_fun_return216
_else219:
  %_fun_return217 = bitcast i64 46 to i64
  ret i64 %_fun_return217
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
