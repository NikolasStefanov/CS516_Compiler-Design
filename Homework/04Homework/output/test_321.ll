; generated from: hw4programs/run61.oat
target triple = "x86_64-apple-macosx10.13.0"
@_str_global901 = global [4 x i8] c"341\00"
@s = global i8* bitcast ([4 x i8]* @_str_global901 to i8*)

define i64 @program(i64 %_argc895, { i64, [0 x i8*] }* %_argv896) {
  %_argc897 = alloca i64
  store i64 %_argc895, i64* %_argc897
  %_argv898 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv896, { i64, [0 x i8*] }** %_argv898
  %_glob899 = load i8*, i8** @_s
  call void @print_string(i8* %_glob899)
  %_fun_return900 = bitcast i64 0 to i64
  ret i64 %_fun_return900
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
