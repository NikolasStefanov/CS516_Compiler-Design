; generated from: hw4programs/path2.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_124 = alloca i64
  %_125 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_124
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_125
  %x = alloca i64
  %y = alloca i64
  store i64 17, i64* %x
  store i64 18, i64* %y
  %_126 = load i64, i64* %x
  %_127 = load i64, i64* %y
  %_128 = add i64 %_126, %_127
  ret i64 %_128
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
