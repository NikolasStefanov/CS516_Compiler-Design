; generated from: hw4programs/run19.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1019, { i64, [0 x i8*] }* %_argv1020) {
  %argc = alloca i64
  store i64 %_argc1019, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1020, { i64, [0 x i8*] }** %argv
  %i = alloca i64
  store i64 999, i64* %i
  %_raw_array1021 = call i64* @oat_alloc_array(i64 3)
  %_array1022 = bitcast i64* %_raw_array1021 to { i64, [0 x i64] }*
  %_ind1023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1022, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1023
  %_ind1024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1022, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1024
  %_ind1025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1022, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1025
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1022, { i64, [0 x i64] }** %a
  %_local1026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1026, i32 0, i32 1, i32 2
  %_elem1028 = load i64, i64* %_ptr1027
  ret i64 %_elem1028
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
