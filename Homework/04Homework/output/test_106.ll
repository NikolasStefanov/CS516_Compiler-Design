; generated from: hw4programs/run60.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 3

define i64 @program(i64 %_argc525, { i64, [0 x i8*] }* %_argv526) {
  %argc = alloca i64
  store i64 %_argc525, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv526, { i64, [0 x i8*] }** %argv
  store i64 341, i64* @_i
  %_glob527 = load i64, i64* @_i
  ret i64 %_glob527
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
