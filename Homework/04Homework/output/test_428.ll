; generated from: hw4programs/run61.oat
target triple = "x86_64-apple-macosx10.13.0"
@_str_global1023 = global [4 x i8] c"341\00"
@s = global i8* bitcast ([4 x i8]* @_str_global1023 to i8*)

define i64 @program(i64 %_argc1017, { i64, [0 x i8*] }* %_argv1018) {
  %_argc1019 = alloca i64
  store i64 %_argc1017, i64* %_argc1019
  %_argv1020 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1018, { i64, [0 x i8*] }** %_argv1020
  %_glob1021 = load i8*, i8** @_s
  call void @print_string(i8* %_glob1021)
  %_fun_return1022 = bitcast i64 0 to i64
  ret i64 %_fun_return1022
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
