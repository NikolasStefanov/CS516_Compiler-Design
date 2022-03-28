; generated from: hw4programs/globals5.oat
target triple = "x86_64-apple-macosx10.13.0"
@_str_global353 = global [7 x i8] c"hello!\00"
@s = global i8* bitcast ([7 x i8]* @_str_global353 to i8*)

define i64 @program(i64 %_argc348, { i64, [0 x i8*] }* %_args349) {
  %_argc350 = alloca i64
  store i64 %_argc348, i64* %_argc350
  %_args351 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args349, { i64, [0 x i8*] }** %_args351
  %_fun_return352 = bitcast i64 17 to i64
  ret i64 %_fun_return352
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
