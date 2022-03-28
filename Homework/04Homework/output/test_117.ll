; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1057, { i64, [0 x i8*] }* %_argv1058) {
  %argc = alloca i64
  store i64 %_argc1057, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1058, { i64, [0 x i8*] }** %argv
  %_raw_array1059 = call i64* @oat_alloc_array(i64 2)
  %_array1060 = bitcast i64* %_raw_array1059 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1061 = call i64* @oat_alloc_array(i64 2)
  %_array1062 = bitcast i64* %_raw_array1061 to { i64, [0 x i8*] }*
  %_raw_array1064 = call i64* @oat_alloc_array(i64 3)
  %_array1065 = bitcast i64* %_raw_array1064 to { i64, [0 x i64] }*
  %_ind1066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1065, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind1066
  %_ind1067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1065, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind1067
  %_ind1068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1065, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1068
  %_strr_arr1063 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1065)
  %_raw_array1070 = call i64* @oat_alloc_array(i64 3)
  %_array1071 = bitcast i64* %_raw_array1070 to { i64, [0 x i64] }*
  %_ind1072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1071, i32 0, i32 1, i32 0
  store i64 100, i64* %_ind1072
  %_ind1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1071, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1073
  %_ind1074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1071, i32 0, i32 1, i32 2
  store i64 102, i64* %_ind1074
  %_strr_arr1069 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1071)
  %_ind1075 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1062, i32 0, i32 1, i32 0
  store i8* %_strr_arr1063, i8** %_ind1075
  %_ind1076 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1062, i32 0, i32 1, i32 1
  store i8* %_strr_arr1069, i8** %_ind1076
  %_raw_array1077 = call i64* @oat_alloc_array(i64 2)
  %_array1078 = bitcast i64* %_raw_array1077 to { i64, [0 x i8*] }*
  %_raw_array1080 = call i64* @oat_alloc_array(i64 3)
  %_array1081 = bitcast i64* %_raw_array1080 to { i64, [0 x i64] }*
  %_ind1082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1081, i32 0, i32 1, i32 0
  store i64 55, i64* %_ind1082
  %_ind1083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1081, i32 0, i32 1, i32 1
  store i64 56, i64* %_ind1083
  %_ind1084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1081, i32 0, i32 1, i32 2
  store i64 57, i64* %_ind1084
  %_strr_arr1079 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1081)
  %_raw_array1086 = call i64* @oat_alloc_array(i64 3)
  %_array1087 = bitcast i64* %_raw_array1086 to { i64, [0 x i64] }*
  %_ind1088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 0
  store i64 49, i64* %_ind1088
  %_ind1089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 1
  store i64 50, i64* %_ind1089
  %_ind1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1087, i32 0, i32 1, i32 2
  store i64 51, i64* %_ind1090
  %_strr_arr1085 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1087)
  %_ind1091 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1078, i32 0, i32 1, i32 0
  store i8* %_strr_arr1079, i8** %_ind1091
  %_ind1092 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1078, i32 0, i32 1, i32 1
  store i8* %_strr_arr1085, i8** %_ind1092
  %_ind1093 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1060, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1062, { i64, [0 x i8*] }** %_ind1093
  %_ind1094 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1060, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1078, { i64, [0 x i8*] }** %_ind1094
  %strs = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1060, { i64, [0 x { i64, [0 x i8*] }*] }** %strs
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
