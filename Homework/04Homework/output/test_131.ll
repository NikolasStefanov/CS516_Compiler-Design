; generated from: hw4programs/easyrun1.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1 = alloca i64
  %_2 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_1
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_2
  ret i64 17
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
