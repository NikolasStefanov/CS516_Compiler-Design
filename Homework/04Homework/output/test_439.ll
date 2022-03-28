; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr1312) {
  %_arr1313 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1312, { i64, [0 x i64] }** %_arr1313
  %_local1315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1313
  %_fun_return1314 = bitcast { i64, [0 x i64] }* %_local1315 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return1314
}

define i64 @program(i64 %_argc1286, { i64, [0 x i8*] }* %_argv1287) {
  %_argc1288 = alloca i64
  store i64 %_argc1286, i64* %_argc1288
  %_argv1289 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1287, { i64, [0 x i8*] }** %_argv1289
  %_raw_array1290 = call i64* @oat_alloc_array(i64 2)
  %_array1291 = bitcast i64* %_raw_array1290 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1292 = call i64* @oat_alloc_array(i64 3)
  %_array1293 = bitcast i64* %_raw_array1292 to { i64, [0 x i64] }*
  %_ind1294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1293, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1294
  %_ind1295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1293, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1295
  %_ind1296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1293, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1296
  %_raw_array1297 = call i64* @oat_alloc_array(i64 3)
  %_array1298 = bitcast i64* %_raw_array1297 to { i64, [0 x i64] }*
  %_ind1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1298, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind1299
  %_ind1300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1298, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind1300
  %_ind1301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1298, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind1301
  %_ind1302 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1291, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1293, { i64, [0 x i64] }** %_ind1302
  %_ind1303 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1291, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1298, { i64, [0 x i64] }** %_ind1303
  %garr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1291, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_local1304 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_ptr1305 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1304, i32 0, i32 1, i32 1
  %_elem1306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1305
  %_ret1307 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_elem1306)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1307, { i64, [0 x i64] }** %arr
  %_local1309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr1310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1309, i32 0, i32 1, i32 1
  %_elem1311 = load i64, i64* %_ptr1310
  %_fun_return1308 = bitcast i64 %_elem1311 to i64
  ret i64 %_fun_return1308
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
