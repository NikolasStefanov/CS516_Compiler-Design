; generated from: hw4programs/run7.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %_argc1205, { i64, [0 x i8*] }* %_argv1206) {
  %_argc1207 = alloca i64
  store i64 %_argc1205, i64* %_argc1207
  %_argv1208 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1206, { i64, [0 x i8*] }** %_argv1208
  %_raw_array1209 = call i64* @oat_alloc_array(i64 3)
  %_array1210 = bitcast i64* %_raw_array1209 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1211 = call i64* @oat_alloc_array(i64 2)
  %_array1212 = bitcast i64* %_raw_array1211 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1213 = call i64* @oat_alloc_array(i64 2)
  %_array1214 = bitcast i64* %_raw_array1213 to { i64, [0 x i64] }*
  %_ind1215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1215
  %_ind1216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1216
  %_raw_array1217 = call i64* @oat_alloc_array(i64 2)
  %_array1218 = bitcast i64* %_raw_array1217 to { i64, [0 x i64] }*
  %_ind1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1218, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1219
  %_ind1220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1218, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1220
  %_ind1221 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1212, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1214, { i64, [0 x i64] }** %_ind1221
  %_ind1222 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1212, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1218, { i64, [0 x i64] }** %_ind1222
  %_raw_array1223 = call i64* @oat_alloc_array(i64 1)
  %_array1224 = bitcast i64* %_raw_array1223 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1225 = call i64* @oat_alloc_array(i64 1)
  %_array1226 = bitcast i64* %_raw_array1225 to { i64, [0 x i64] }*
  %_ind1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1226, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind1227
  %_ind1228 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1224, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1226, { i64, [0 x i64] }** %_ind1228
  %_raw_array1229 = call i64* @oat_alloc_array(i64 2)
  %_array1230 = bitcast i64* %_raw_array1229 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1231 = call i64* @oat_alloc_array(i64 2)
  %_array1232 = bitcast i64* %_raw_array1231 to { i64, [0 x i64] }*
  %_ind1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind1233
  %_ind1234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 1
  store i64 20, i64* %_ind1234
  %_raw_array1235 = call i64* @oat_alloc_array(i64 2)
  %_array1236 = bitcast i64* %_raw_array1235 to { i64, [0 x i64] }*
  %_ind1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 0
  store i64 30, i64* %_ind1237
  %_ind1238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1236, i32 0, i32 1, i32 1
  store i64 40, i64* %_ind1238
  %_ind1239 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1230, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1232, { i64, [0 x i64] }** %_ind1239
  %_ind1240 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1230, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1236, { i64, [0 x i64] }** %_ind1240
  %_ind1241 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1210, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1212, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1241
  %_ind1242 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1210, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1224, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1242
  %_ind1243 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1210, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1230, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1243
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1210, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @_arr
  %_glob1245 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @_arr
  %_ptr1246 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_glob1245, i32 0, i32 1, i32 2
  %_elem1247 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr1246
  %_ptr1248 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_elem1247, i32 0, i32 1, i32 0
  %_elem1249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1248
  %_ptr1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1249, i32 0, i32 1, i32 1
  %_elem1251 = load i64, i64* %_ptr1250
  %_fun_return1244 = bitcast i64 %_elem1251 to i64
  ret i64 %_fun_return1244
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
