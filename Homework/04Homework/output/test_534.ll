; generated from: hw4programs/run60.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 3

define i64 @program(i64 %_argc1011, { i64, [0 x i8*] }* %_argv1012) {
  %_argc1013 = alloca i64
  store i64 %_argc1011, i64* %_argc1013
  %_argv1014 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1012, { i64, [0 x i8*] }** %_argv1014
  store i64 341, i64* @_i
  %_glob1016 = load i64, i64* @_i
  %_fun_return1015 = bitcast i64 %_glob1016 to i64
  ret i64 %_fun_return1015
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
