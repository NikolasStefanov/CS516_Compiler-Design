; generated from: hw4programs/globals1.oat
target triple = "x86_64-apple-macosx10.13.0"
@x = global i64 42

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_101 = alloca i64
  %_102 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_101
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_102
  %_103 = load i64, i64* @x
  ret i64 %_103
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
