; generated from: hw4programs/run27.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc570, { i64, [0 x i8*] }* %_argv571) {
  %_argc572 = alloca i64
  store i64 %_argc570, i64* %_argc572
  %_argv573 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv571, { i64, [0 x i8*] }** %_argv573
  %i = alloca i64
  store i64 99, i64* %i
  %_local575 = load i64, i64* %i
  %_fun_return574 = bitcast i64 %_local575 to i64
  ret i64 %_fun_return574
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
