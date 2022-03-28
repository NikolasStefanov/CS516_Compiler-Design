; generated from: hw4programs/easyrun6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc69, { i64, [0 x i8*] }* %_argv70) {
  %_argc71 = alloca i64
  store i64 %_argc69, i64* %_argc71
  %_argv72 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv70, { i64, [0 x i8*] }** %_argv72
  %_uop73 = xor i1 1, 1
  %_uop74 = mul i64 4, -1
  %_bop75 = add i64 %_uop74, 5
  %_bop76 = icmp sgt i64 %_bop75, 0
  %_bop77 = mul i64 6, 4
  %_bop78 = icmp slt i64 %_bop77, 25
  %_bop79 = and i1 %_bop76, %_bop78
  %_bop80 = or i1 %_uop73, %_bop79
  br i1 %_bop80, label %_if83, label %_else84
_if83:
  %_fun_return81 = bitcast i64 9 to i64
  ret i64 %_fun_return81
_else84:
  %_fun_return82 = bitcast i64 4 to i64
  ret i64 %_fun_return82
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
