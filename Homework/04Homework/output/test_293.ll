; generated from: hw4programs/path2.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc252, { i64, [0 x i8*] }* %_argv253) {
  %_argc254 = alloca i64
  store i64 %_argc252, i64* %_argc254
  %_argv255 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv253, { i64, [0 x i8*] }** %_argv255
  %x = alloca i64
  store i64 17, i64* %x
  %y = alloca i64
  store i64 18, i64* %y
  %_local257 = load i64, i64* %x
  %_local258 = load i64, i64* %y
  %_bop259 = add i64 %_local257, %_local258
  %_fun_return256 = bitcast i64 %_bop259 to i64
  ret i64 %_fun_return256
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
