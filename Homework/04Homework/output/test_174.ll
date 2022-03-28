; generated from: hw4programs/easyrun5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc47, { i64, [0 x i8*] }* %_argv48) {
  %_argc49 = alloca i64
  store i64 %_argc47, i64* %_argc49
  %_argv50 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv48, { i64, [0 x i8*] }** %_argv50
  %_bop51 = lshr i64 100, 3
  %x = alloca i64
  store i64 %_bop51, i64* %x
  %_bop52 = shl i64 100, 3
  %y = alloca i64
  store i64 %_bop52, i64* %y
  %_local53 = load i64, i64* %x
  %_local54 = load i64, i64* %y
  %_bop55 = sub i64 %_local53, %_local54
  %_bop56 = icmp sle i64 %_bop55, 0
  br i1 %_bop56, label %_if66, label %_else67
_if66:
  %_local58 = load i64, i64* %x
  %_uop59 = mul i64 %_local58, -1
  %_local60 = load i64, i64* %y
  %_bop61 = sub i64 %_uop59, %_local60
  %_fun_return57 = bitcast i64 %_bop61 to i64
  ret i64 %_fun_return57
_else67:
  %_local63 = load i64, i64* %x
  %_local64 = load i64, i64* %y
  %_bop65 = sub i64 %_local63, %_local64
  %_fun_return62 = bitcast i64 %_bop65 to i64
  ret i64 %_fun_return62
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
