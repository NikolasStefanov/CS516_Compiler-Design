; generated from: hw4programs/run27.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_164 = alloca i64
  %_165 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_164
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_165
  %i = alloca i64
  store i64 99, i64* %i
  %_166 = load i64, i64* %i
  ret i64 %_166
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
