; generated from: hw4programs/run20.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %_argc1029, { i64, [0 x i8*] }* %_argv1030) {
  %argc = alloca i64
  store i64 %_argc1029, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1030, { i64, [0 x i8*] }** %argv
  %_raw_array1031 = call i64* @oat_alloc_array(i64 3)
  %_array1032 = bitcast i64* %_raw_array1031 to { i64, [0 x i64] }*
  %_ind1033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1032, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1033
  %_ind1034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1032, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1034
  %_ind1035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1032, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1035
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1032, { i64, [0 x i64] }** %a
  %_local1036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1036, i32 0, i32 1, i32 2
  %_elem1038 = load i64, i64* %_ptr1037
  ret i64 %_elem1038
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
