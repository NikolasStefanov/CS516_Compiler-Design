; generated from: hw4programs/run44.oat
target triple = "x86_64-apple-macosx10.13.0"
@str = global { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* null

define i64 @program(i64 %_argc1109, { i64, [0 x i8*] }* %_argv1110) {
  %argc = alloca i64
  store i64 %_argc1109, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1110, { i64, [0 x i8*] }** %argv
  %_raw_array1111 = call i64* @oat_alloc_array(i64 1)
  %_array1112 = bitcast i64* %_raw_array1111 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1113 = call i64* @oat_alloc_array(i64 1)
  %_array1114 = bitcast i64* %_raw_array1113 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1115 = call i64* @oat_alloc_array(i64 1)
  %_array1116 = bitcast i64* %_raw_array1115 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1117 = call i64* @oat_alloc_array(i64 1)
  %_array1118 = bitcast i64* %_raw_array1117 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array1119 = call i64* @oat_alloc_array(i64 1)
  %_array1120 = bitcast i64* %_raw_array1119 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*
  %_raw_array1121 = call i64* @oat_alloc_array(i64 1)
  %_array1122 = bitcast i64* %_raw_array1121 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*
  %_raw_array1123 = call i64* @oat_alloc_array(i64 1)
  %_array1124 = bitcast i64* %_raw_array1123 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*
  %_raw_array1125 = call i64* @oat_alloc_array(i64 1)
  %_array1126 = bitcast i64* %_raw_array1125 to { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*
  %_raw_array1127 = call i64* @oat_alloc_array(i64 1)
  %_array1128 = bitcast i64* %_raw_array1127 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1129 = call i64* @oat_alloc_array(i64 1)
  %_array1130 = bitcast i64* %_raw_array1129 to { i64, [0 x i8*] }*
  %_raw_array1132 = call i64* @oat_alloc_array(i64 5)
  %_array1133 = bitcast i64* %_raw_array1132 to { i64, [0 x i64] }*
  %_ind1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1133, i32 0, i32 1, i32 0
  store i64 104, i64* %_ind1134
  %_ind1135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1133, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1135
  %_ind1136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1133, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind1136
  %_ind1137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1133, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind1137
  %_ind1138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1133, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind1138
  %_strr_arr1131 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1133)
  %_ind1139 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1130, i32 0, i32 1, i32 0
  store i8* %_strr_arr1131, i8** %_ind1139
  %_ind1140 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1128, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1130, { i64, [0 x i8*] }** %_ind1140
  %_ind1141 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array1126, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1128, { i64, [0 x { i64, [0 x i8*] }*] }** %_ind1141
  %_ind1142 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array1124, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array1126, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_ind1142
  %_ind1143 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array1122, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array1124, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_ind1143
  %_ind1144 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array1120, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array1122, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_ind1144
  %_ind1145 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array1118, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array1120, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_ind1145
  %_ind1146 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array1116, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array1118, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_ind1146
  %_ind1147 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1114, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array1116, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_ind1147
  %_ind1148 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1112, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array1114, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_ind1148
  store void %_array1112, void* @_str
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
