; generated from: hw4programs/run18.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1009, { i64, [0 x i8*] }* %_argv1010) {
  %argc = alloca i64
  store i64 %_argc1009, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1010, { i64, [0 x i8*] }** %argv
  %_raw_array1011 = call i64* @oat_alloc_array(i64 3)
  %_array1012 = bitcast i64* %_raw_array1011 to { i64, [0 x i64] }*
  %_ind1013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1012, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1013
  %_ind1014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1012, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1014
  %_ind1015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1012, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1015
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1012, { i64, [0 x i64] }** %a
  %_local1016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1016, i32 0, i32 1, i32 2
  %_elem1018 = load i64, i64* %_ptr1017
  ret i64 %_elem1018
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
