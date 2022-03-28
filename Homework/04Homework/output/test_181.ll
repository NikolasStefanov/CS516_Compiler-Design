; generated from: hw4programs/globals2.oat
target triple = "x86_64-apple-macosx10.13.0"
@y = global i1 1

define i64 @program(i64 %_argc205, { i64, [0 x i8*] }* %_args206) {
  %_argc207 = alloca i64
  store i64 %_argc205, i64* %_argc207
  %_args208 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args206, { i64, [0 x i8*] }** %_args208
  %_glob209 = load i1, i1* @_y
  br i1 %_glob209, label %_if211, label %_else212
_if211:
  %_fun_return210 = bitcast i64 17 to i64
  ret i64 %_fun_return210
_else212:
  br label %_fi213
_fi213:
  %_fun_return214 = bitcast i64 15 to i64
  ret i64 %_fun_return214
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
