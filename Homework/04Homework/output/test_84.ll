; generated from: hw4programs/globals2.oat
target triple = "x86_64-apple-macosx10.13.0"
@y = global i1 1

define i64 @program(i64 %_argc163, { i64, [0 x i8*] }* %_args164) {
  %argc = alloca i64
  store i64 %_argc163, i64* %argc
  %args = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args164, { i64, [0 x i8*] }** %args
  %_glob165 = load i1, i1* @_y
  br i1 %_glob165, label %_if166, label %_else167
_if166:
  ret i64 17
_else167:
  br label %_fi168
_fi168:
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
