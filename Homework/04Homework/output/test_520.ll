; generated from: hw4programs/run31.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 9

define i64 @program(i64 %_argc610, { i64, [0 x i8*] }* %_argv611) {
  %_argc612 = alloca i64
  store i64 %_argc610, i64* %_argc612
  %_argv613 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv611, { i64, [0 x i8*] }** %_argv613
  %_glob614 = load i64, i64* @_i
  %j = alloca i64
  store i64 %_glob614, i64* %j
  %_local616 = load i64, i64* %j
  %_fun_return615 = bitcast i64 %_local616 to i64
  ret i64 %_fun_return615
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
