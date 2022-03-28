; generated from: hw4programs/run36.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc401, { i64, [0 x i8*] }* %_argv402) {
  %argc = alloca i64
  store i64 %_argc401, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv402, { i64, [0 x i8*] }** %argv
  %_raw_array403 = call i64* @oat_alloc_array(i64 2)
  %_array404 = bitcast i64* %_raw_array403 to { i64, [0 x i64] }*
  %_ind405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array404, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind405
  %_ind406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array404, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind406
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array404, { i64, [0 x i64] }** %a
  %_local407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local407, i32 0, i32 1, i32 1
  %_elem409 = load i64, i64* %_ptr408
  ret i64 %_elem409
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
