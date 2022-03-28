; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1039, { i64, [0 x i8*] }* %_argv1040) {
  %argc = alloca i64
  store i64 %_argc1039, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1040, { i64, [0 x i8*] }** %argv
  %_raw_array1041 = call i64* @oat_alloc_array(i64 2)
  %_array1042 = bitcast i64* %_raw_array1041 to { i64, [0 x i8*] }*
  %_raw_array1044 = call i64* @oat_alloc_array(i64 3)
  %_array1045 = bitcast i64* %_raw_array1044 to { i64, [0 x i64] }*
  %_ind1046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1045, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind1046
  %_ind1047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1045, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind1047
  %_ind1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1045, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1048
  %_strr_arr1043 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1045)
  %_raw_array1050 = call i64* @oat_alloc_array(i64 3)
  %_array1051 = bitcast i64* %_raw_array1050 to { i64, [0 x i64] }*
  %_ind1052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 0
  store i64 100, i64* %_ind1052
  %_ind1053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1053
  %_ind1054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1051, i32 0, i32 1, i32 2
  store i64 102, i64* %_ind1054
  %_strr_arr1049 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1051)
  %_ind1055 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1042, i32 0, i32 1, i32 0
  store i8* %_strr_arr1043, i8** %_ind1055
  %_ind1056 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1042, i32 0, i32 1, i32 1
  store i8* %_strr_arr1049, i8** %_ind1056
  %strs = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_array1042, { i64, [0 x i8*] }** %strs
  ret i64 0
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
