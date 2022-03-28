; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %_argc1083, { i64, [0 x i8*] }* %_argv1084) {
  %_argc1085 = alloca i64
  store i64 %_argc1083, i64* %_argc1085
  %_argv1086 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1084, { i64, [0 x i8*] }** %_argv1086
  %_raw_array1087 = call i64* @oat_alloc_array(i64 3)
  %_array1088 = bitcast i64* %_raw_array1087 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1089 = call i64* @oat_alloc_array(i64 2)
  %_array1090 = bitcast i64* %_raw_array1089 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1091 = call i64* @oat_alloc_array(i64 2)
  %_array1092 = bitcast i64* %_raw_array1091 to { i64, [0 x i64] }*
  %_ind1093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1092, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1093
  %_ind1094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1092, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1094
  %_raw_array1095 = call i64* @oat_alloc_array(i64 2)
  %_array1096 = bitcast i64* %_raw_array1095 to { i64, [0 x i64] }*
  %_ind1097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1096, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1097
  %_ind1098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1096, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1098
  %_ind1099 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1090, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1092, { i64, [0 x i64] }** %_ind1099
  %_ind1100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1090, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1096, { i64, [0 x i64] }** %_ind1100
  %_raw_array1101 = call i64* @oat_alloc_array(i64 1)
  %_array1102 = bitcast i64* %_raw_array1101 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1103 = call i64* @oat_alloc_array(i64 1)
  %_array1104 = bitcast i64* %_raw_array1103 to { i64, [0 x i64] }*
  %_ind1105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1104, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind1105
  %_ind1106 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1104, { i64, [0 x i64] }** %_ind1106
  %_raw_array1107 = call i64* @oat_alloc_array(i64 2)
  %_array1108 = bitcast i64* %_raw_array1107 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1109 = call i64* @oat_alloc_array(i64 2)
  %_array1110 = bitcast i64* %_raw_array1109 to { i64, [0 x i64] }*
  %_ind1111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1110, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind1111
  %_ind1112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1110, i32 0, i32 1, i32 1
  store i64 20, i64* %_ind1112
  %_raw_array1113 = call i64* @oat_alloc_array(i64 2)
  %_array1114 = bitcast i64* %_raw_array1113 to { i64, [0 x i64] }*
  %_ind1115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1114, i32 0, i32 1, i32 0
  store i64 30, i64* %_ind1115
  %_ind1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1114, i32 0, i32 1, i32 1
  store i64 40, i64* %_ind1116
  %_ind1117 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1108, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1110, { i64, [0 x i64] }** %_ind1117
  %_ind1118 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1108, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1114, { i64, [0 x i64] }** %_ind1118
  %_ind1119 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1088, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1090, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1119
  %_ind1120 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1088, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1102, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1120
  %_ind1121 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1088, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1108, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1121
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1088, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @_arr
  %_glob1123 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @_arr
  %_ptr1124 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_glob1123, i32 0, i32 1, i32 2
  %_elem1125 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1124
  %_ptr1126 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_elem1125, i32 0, i32 1, i32 0
  %_elem1127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1126
  %_ptr1128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1127, i32 0, i32 1, i32 1
  %_elem1129 = load i64, i64* %_ptr1128
  %_fun_return1122 = bitcast i64 %_elem1129 to i64
  ret i64 %_fun_return1122
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
