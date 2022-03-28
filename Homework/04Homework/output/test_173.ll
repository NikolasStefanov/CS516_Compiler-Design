; generated from: hw4programs/easyrun4.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc31, { i64, [0 x i8*] }* %_argv32) {
  %_argc33 = alloca i64
  store i64 %_argc31, i64* %_argc33
  %_argv34 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv32, { i64, [0 x i8*] }** %_argv34
  %x = alloca i64
  store i64 0, i64* %x
  %_i35 = alloca i64
  store i64 0, i64* %_i35
  br label %_while42
_while42:
  %_local36 = load i64, i64* %_i35
  %_bop37 = icmp slt i64 %_local36, 3
  br i1 %_bop37, label %_do43, label %_elihw44
_do43:
  %_local38 = load i64, i64* %x
  %_bop39 = add i64 %_local38, 2
  store i64 %_bop39, i64* %x
  %_local40 = load i64, i64* %_i35
  %_bop41 = add i64 %_local40, 1
  store i64 %_bop41, i64* %_i35
  br label %_while42
_elihw44:
  %_local46 = load i64, i64* %x
  %_fun_return45 = bitcast i64 %_local46 to i64
  ret i64 %_fun_return45
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
