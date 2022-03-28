; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %_arr1269) {
  %_arr1270 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1269, { i64, [0 x i64] }** %_arr1270
  %_local1272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1270
  %_ptr1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1272, i32 0, i32 1, i32 3
  %_elem1274 = load i64, i64* %_ptr1273
  %_fun_return1271 = bitcast i64 %_elem1274 to i64
  ret i64 %_fun_return1271
}

define { i64, [0 x i64] }* @g() {
  %_raw_array1261 = call i64* @oat_alloc_array(i64 4)
  %_array1262 = bitcast i64* %_raw_array1261 to { i64, [0 x i64] }*
  %_ind1263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1263
  %_ind1264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1264
  %_ind1265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1265
  %_ind1266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 3
  store i64 99, i64* %_ind1266
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1262, { i64, [0 x i64] }** %arr
  %_local1268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_fun_return1267 = bitcast { i64, [0 x i64] }* %_local1268 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return1267
}

define i64 @program(i64 %_argc1194, { i64, [0 x i8*] }* %_argv1195) {
  %_argc1196 = alloca i64
  store i64 %_argc1194, i64* %_argc1196
  %_argv1197 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1195, { i64, [0 x i8*] }** %_argv1197
  %_raw_array1198 = call i64* @oat_alloc_array(i64 3)
  %_array1199 = bitcast i64* %_raw_array1198 to { i64, [0 x i64] }*
  %_ind1200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1199, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1200
  %_ind1201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1199, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1201
  %_ind1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1199, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1202
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1199, { i64, [0 x i64] }** %arr1
  %_raw_array1203 = call i64* @oat_alloc_array(i64 3)
  %_array1204 = bitcast i64* %_raw_array1203 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1205 = call i64* @oat_alloc_array(i64 3)
  %_array1206 = bitcast i64* %_raw_array1205 to { i64, [0 x i64] }*
  %_ind1207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1207
  %_ind1208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1208
  %_ind1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1209
  %_raw_array1210 = call i64* @oat_alloc_array(i64 3)
  %_array1211 = bitcast i64* %_raw_array1210 to { i64, [0 x i64] }*
  %_ind1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1212
  %_ind1213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1213
  %_ind1214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1211, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1214
  %_raw_array1215 = call i64* @oat_alloc_array(i64 3)
  %_array1216 = bitcast i64* %_raw_array1215 to { i64, [0 x i64] }*
  %_ind1217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1216, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1217
  %_ind1218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1216, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1218
  %_ind1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1216, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1219
  %_ind1220 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1206, { i64, [0 x i64] }** %_ind1220
  %_ind1221 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1211, { i64, [0 x i64] }** %_ind1221
  %_ind1222 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1216, { i64, [0 x i64] }** %_ind1222
  %arr2 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, { i64, [0 x { i64, [0 x i64] }*] }** %arr2
  %c = alloca i64
  store i64 1, i64* %c
  %_ret1223 = call { i64, [0 x i64] }* @_g()
  %arr4 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1223, { i64, [0 x i64] }** %arr4
  %_raw_array1224 = call i64* @oat_alloc_array(i64 4)
  %_array1225 = bitcast i64* %_raw_array1224 to { i64, [0 x i64] }*
  %_ind1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1226
  %_ind1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1227
  %_ind1228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1228
  %_ind1229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind1229
  %arr3 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1225, { i64, [0 x i64] }** %arr3
  %_local1230 = load i64, i64* %c
  %_glob1231 = load i64, i64* @_i
  %_bop1232 = add i64 %_local1230, %_glob1231
  store i64 %_bop1232, i64* %c
  %_local1233 = load i64, i64* %c
  %_local1234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ptr1235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1234, i32 0, i32 1, i32 1
  %_elem1236 = load i64, i64* %_ptr1235
  %_bop1237 = add i64 %_local1233, %_elem1236
  store i64 %_bop1237, i64* %c
  %_local1238 = load i64, i64* %c
  %_local1239 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr2
  %_ptr1240 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1239, i32 0, i32 1, i32 1
  %_elem1241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1240
  %_ptr1242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1241, i32 0, i32 1, i32 1
  %_elem1243 = load i64, i64* %_ptr1242
  %_bop1244 = add i64 %_local1238, %_elem1243
  store i64 %_bop1244, i64* %c
  %_local1245 = load i64, i64* %c
  %_local1246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr3
  %_ptr1247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1246, i32 0, i32 1, i32 3
  %_elem1248 = load i64, i64* %_ptr1247
  %_bop1249 = add i64 %_local1245, %_elem1248
  store i64 %_bop1249, i64* %c
  %_local1250 = load i64, i64* %c
  %_local1251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr3
  %_ret1252 = call i64 @_f({ i64, [0 x i64] }* %_local1251)
  %_bop1253 = add i64 %_local1250, %_ret1252
  store i64 %_bop1253, i64* %c
  %_local1254 = load i64, i64* %c
  %_local1255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr4
  %_ptr1256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1255, i32 0, i32 1, i32 1
  %_elem1257 = load i64, i64* %_ptr1256
  %_bop1258 = add i64 %_local1254, %_elem1257
  store i64 %_bop1258, i64* %c
  %_local1260 = load i64, i64* %c
  %_fun_return1259 = bitcast i64 %_local1260 to i64
  ret i64 %_fun_return1259
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
