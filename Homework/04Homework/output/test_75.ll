; generated from: hw4programs/easyrun3.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc7, { i64, [0 x i8*] }* %_argv8) {
  %argc = alloca i64
  store i64 %_argc7, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv8, { i64, [0 x i8*] }** %argv
  %x = alloca i64
  store i64 0, i64* %x
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while18
_while18:
  %_local9 = load i64, i64* %i
  %_bop10 = icmp slt i64 %_local9, 10
  br i1 %_bop10, label %_do19, label %_elihw20
_do19:
  %_local11 = load i64, i64* %x
  %_local12 = load i64, i64* %i
  %_bop13 = add i64 %_local11, %_local12
  %_local14 = load i64, i64* %i
  %_bop15 = mul i64 %_bop13, %_local14
  store i64 %_bop15, i64* %x
  %_local16 = load i64, i64* %i
  %_bop17 = add i64 %_local16, 1
  store i64 %_bop17, i64* %i
  br label %_while18
_elihw20:
  %_local21 = load i64, i64* %x
  ret i64 %_local21
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
