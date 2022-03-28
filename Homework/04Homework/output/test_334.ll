; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %_a1357) {
  %_a1358 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a1357, { i64, [0 x i64] }** %_a1358
  %_local1360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1358
  %_ptr1361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1360, i32 0, i32 1, i32 1
  %_elem1362 = load i64, i64* %_ptr1361
  %_fun_return1359 = bitcast i64 %_elem1362 to i64
  ret i64 %_fun_return1359
}

define i64 @g(i64 %_x1337) {
  %_x1338 = alloca i64
  store i64 %_x1337, i64* %_x1338
  %_raw_array1339 = call i64* @oat_alloc_array(i64 3)
  %_array1340 = bitcast i64* %_raw_array1339 to { i64, [0 x i64] }*
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1340, { i64, [0 x i64] }** %arr
  %_i1341 = alloca i64
  store i64 0, i64* %_i1341
  br label %_while1350
_while1350:
  %_local1342 = load i64, i64* %_i1341
  %_bop1343 = icmp slt i64 %_local1342, 3
  br i1 %_bop1343, label %_do1351, label %_elihw1352
_do1351:
  %_local1344 = load i64, i64* %_x1338
  %_local1345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1346 = load i64, i64* %_i1341
  %_ind_assign1347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1345, i32 0, i32 1, i64 %_local1346
  store i64 %_local1344, i64* %_ind_assign1347
  %_local1348 = load i64, i64* %_i1341
  %_bop1349 = add i64 %_local1348, 1
  store i64 %_bop1349, i64* %_i1341
  br label %_while1350
_elihw1352:
  %_local1354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr1355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1354, i32 0, i32 1, i32 1
  %_elem1356 = load i64, i64* %_ptr1355
  %_fun_return1353 = bitcast i64 %_elem1356 to i64
  ret i64 %_fun_return1353
}

define i64 @program(i64 %_argc1275, { i64, [0 x i8*] }* %_argv1276) {
  %_argc1277 = alloca i64
  store i64 %_argc1275, i64* %_argc1277
  %_argv1278 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1276, { i64, [0 x i8*] }** %_argv1278
  %_raw_array1279 = call i64* @oat_alloc_array(i64 3)
  %_array1280 = bitcast i64* %_raw_array1279 to { i64, [0 x i64] }*
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1280, { i64, [0 x i64] }** %a
  %_i1281 = alloca i64
  store i64 0, i64* %_i1281
  br label %_while1290
_while1290:
  %_local1282 = load i64, i64* %_i1281
  %_bop1283 = icmp slt i64 %_local1282, 3
  br i1 %_bop1283, label %_do1291, label %_elihw1292
_do1291:
  %_local1284 = load i64, i64* %_i1281
  %_local1285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_local1286 = load i64, i64* %_i1281
  %_ind_assign1287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1285, i32 0, i32 1, i64 %_local1286
  store i64 %_local1284, i64* %_ind_assign1287
  %_local1288 = load i64, i64* %_i1281
  %_bop1289 = add i64 %_local1288, 1
  store i64 %_bop1289, i64* %_i1281
  br label %_while1290
_elihw1292:
  %_raw_array1293 = call i64* @oat_alloc_array(i64 4)
  %_array1294 = bitcast i64* %_raw_array1293 to { i64, [0 x i64] }*
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1294, { i64, [0 x i64] }** %arr
  %_i1295 = alloca i64
  store i64 0, i64* %_i1295
  br label %_while1306
_while1306:
  %_local1296 = load i64, i64* %_i1295
  %_bop1297 = icmp slt i64 %_local1296, 4
  br i1 %_bop1297, label %_do1307, label %_elihw1308
_do1307:
  %_local1298 = load i64, i64* %_i1295
  %_local1299 = load i64, i64* %_i1295
  %_bop1300 = mul i64 %_local1298, %_local1299
  %_local1301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1302 = load i64, i64* %_i1295
  %_ind_assign1303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1301, i32 0, i32 1, i64 %_local1302
  store i64 %_bop1300, i64* %_ind_assign1303
  %_local1304 = load i64, i64* %_i1295
  %_bop1305 = add i64 %_local1304, 1
  store i64 %_bop1305, i64* %_i1295
  br label %_while1306
_elihw1308:
  %_raw_array1309 = call i64* @oat_alloc_array(i64 3)
  %_array1310 = bitcast i64* %_raw_array1309 to { i64, [0 x i64] }*
  %arr0 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1310, { i64, [0 x i64] }** %arr0
  %_i1311 = alloca i64
  store i64 0, i64* %_i1311
  br label %_while1321
_while1321:
  %_local1312 = load i64, i64* %_i1311
  %_bop1313 = icmp slt i64 %_local1312, 3
  br i1 %_bop1313, label %_do1322, label %_elihw1323
_do1322:
  %_local1314 = load i64, i64* %_i1311
  %_bop1315 = mul i64 2, %_local1314
  %_local1316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr0
  %_local1317 = load i64, i64* %_i1311
  %_ind_assign1318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1316, i32 0, i32 1, i64 %_local1317
  store i64 %_bop1315, i64* %_ind_assign1318
  %_local1319 = load i64, i64* %_i1311
  %_bop1320 = add i64 %_local1319, 1
  store i64 %_bop1320, i64* %_i1311
  br label %_while1321
_elihw1323:
  %_local1325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1325, i32 0, i32 1, i32 3
  %_elem1327 = load i64, i64* %_ptr1326
  %_local1328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1328, i32 0, i32 1, i32 1
  %_elem1330 = load i64, i64* %_ptr1329
  %_bop1331 = add i64 %_elem1327, %_elem1330
  %_local1332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr0
  %_ret1333 = call i64 @_f({ i64, [0 x i64] }* %_local1332)
  %_bop1334 = add i64 %_bop1331, %_ret1333
  %_ret1335 = call i64 @_g(i64 4)
  %_bop1336 = add i64 %_bop1334, %_ret1335
  %_fun_return1324 = bitcast i64 %_bop1336 to i64
  ret i64 %_fun_return1324
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
