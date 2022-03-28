; generated from: hw4programs/globals2.oat
target triple = "x86_64-apple-macosx10.13.0"
@y = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_104 = alloca i64
  %_105 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_104
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_105
  %_106 = load i1, i1* @y
  %_107 = icmp eq i1 1, %_106
  br i1 %_107, label %_then108, label %_else109
_then108:
  ret i64 17
_else109:
  br label %_out110
_out110:
  ret i64 15
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
