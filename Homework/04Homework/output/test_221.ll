; generated from: hw4programs/run5.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1039, { i64, [0 x i8*] }* %_argv1040) {
  %_argc1041 = alloca i64
  store i64 %_argc1039, i64* %_argc1041
  %_argv1042 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1040, { i64, [0 x i8*] }** %_argv1042
  %_raw_array1043 = call i64* @oat_alloc_array(i64 2)
  %_array1044 = bitcast i64* %_raw_array1043 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1045 = call i64* @oat_alloc_array(i64 2)
  %_array1046 = bitcast i64* %_raw_array1045 to { i64, [0 x i64] }*
  %_ind1047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1046, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1047
  %_ind1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1046, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1048
  %_raw_array1049 = call i64* @oat_alloc_array(i64 2)
  %_array1050 = bitcast i64* %_raw_array1049 to { i64, [0 x i64] }*
  %_ind1051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1050, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1051
  %_ind1052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1050, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1052
  %_ind1053 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1044, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1046, { i64, [0 x i64] }** %_ind1053
  %_ind1054 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1044, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1050, { i64, [0 x i64] }** %_ind1054
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1044, { i64, [0 x { i64, [0 x i64] }*] }** @_arr
  %_glob1056 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @_arr
  %_ptr1057 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_glob1056, i32 0, i32 1, i32 1
  %_elem1058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1057
  %_ptr1059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1058, i32 0, i32 1, i32 1
  %_elem1060 = load i64, i64* %_ptr1059
  %_fun_return1055 = bitcast i64 %_elem1060 to i64
  ret i64 %_fun_return1055
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
