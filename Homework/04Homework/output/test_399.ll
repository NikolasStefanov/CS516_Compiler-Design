; generated from: hw4programs/path1.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc368, { i64, [0 x i8*] }* %_argv369) {
  %_argc370 = alloca i64
  store i64 %_argc368, i64* %_argc370
  %_argv371 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv369, { i64, [0 x i8*] }** %_argv371
  %x = alloca i64
  store i64 17, i64* %x
  %_local373 = load i64, i64* %x
  %_fun_return372 = bitcast i64 %_local373 to i64
  ret i64 %_fun_return372
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
