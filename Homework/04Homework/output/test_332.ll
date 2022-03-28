; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr1190) {
  %_arr1191 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1190, { i64, [0 x i64] }** %_arr1191
  %_local1193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1191
  %_fun_return1192 = bitcast { i64, [0 x i64] }* %_local1193 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return1192
}

define i64 @program(i64 %_argc1164, { i64, [0 x i8*] }* %_argv1165) {
  %_argc1166 = alloca i64
  store i64 %_argc1164, i64* %_argc1166
  %_argv1167 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1165, { i64, [0 x i8*] }** %_argv1167
  %_raw_array1168 = call i64* @oat_alloc_array(i64 2)
  %_array1169 = bitcast i64* %_raw_array1168 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1170 = call i64* @oat_alloc_array(i64 3)
  %_array1171 = bitcast i64* %_raw_array1170 to { i64, [0 x i64] }*
  %_ind1172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1171, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1172
  %_ind1173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1171, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1173
  %_ind1174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1171, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1174
  %_raw_array1175 = call i64* @oat_alloc_array(i64 3)
  %_array1176 = bitcast i64* %_raw_array1175 to { i64, [0 x i64] }*
  %_ind1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1176, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind1177
  %_ind1178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1176, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind1178
  %_ind1179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1176, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind1179
  %_ind1180 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1169, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1171, { i64, [0 x i64] }** %_ind1180
  %_ind1181 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1169, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1176, { i64, [0 x i64] }** %_ind1181
  %garr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1169, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_local1182 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_ptr1183 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1182, i32 0, i32 1, i32 1
  %_elem1184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1183
  %_ret1185 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_elem1184)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1185, { i64, [0 x i64] }** %arr
  %_local1187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr1188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1187, i32 0, i32 1, i32 1
  %_elem1189 = load i64, i64* %_ptr1188
  %_fun_return1186 = bitcast i64 %_elem1189 to i64
  ret i64 %_fun_return1186
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
