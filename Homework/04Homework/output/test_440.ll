; generated from: hw4programs/run11.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %_arr1391) {
  %_arr1392 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1391, { i64, [0 x i64] }** %_arr1392
  %_local1394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1392
  %_ptr1395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1394, i32 0, i32 1, i32 3
  %_elem1396 = load i64, i64* %_ptr1395
  %_fun_return1393 = bitcast i64 %_elem1396 to i64
  ret i64 %_fun_return1393
}

define { i64, [0 x i64] }* @g() {
  %_raw_array1383 = call i64* @oat_alloc_array(i64 4)
  %_array1384 = bitcast i64* %_raw_array1383 to { i64, [0 x i64] }*
  %_ind1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1385
  %_ind1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1386
  %_ind1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1387
  %_ind1388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 3
  store i64 99, i64* %_ind1388
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1384, { i64, [0 x i64] }** %arr
  %_local1390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_fun_return1389 = bitcast { i64, [0 x i64] }* %_local1390 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return1389
}

define i64 @program(i64 %_argc1316, { i64, [0 x i8*] }* %_argv1317) {
  %_argc1318 = alloca i64
  store i64 %_argc1316, i64* %_argc1318
  %_argv1319 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1317, { i64, [0 x i8*] }** %_argv1319
  %_raw_array1320 = call i64* @oat_alloc_array(i64 3)
  %_array1321 = bitcast i64* %_raw_array1320 to { i64, [0 x i64] }*
  %_ind1322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1321, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1322
  %_ind1323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1321, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1323
  %_ind1324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1321, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1324
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1321, { i64, [0 x i64] }** %arr1
  %_raw_array1325 = call i64* @oat_alloc_array(i64 3)
  %_array1326 = bitcast i64* %_raw_array1325 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1327 = call i64* @oat_alloc_array(i64 3)
  %_array1328 = bitcast i64* %_raw_array1327 to { i64, [0 x i64] }*
  %_ind1329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1328, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1329
  %_ind1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1328, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1330
  %_ind1331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1328, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1331
  %_raw_array1332 = call i64* @oat_alloc_array(i64 3)
  %_array1333 = bitcast i64* %_raw_array1332 to { i64, [0 x i64] }*
  %_ind1334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1334
  %_ind1335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1335
  %_ind1336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1336
  %_raw_array1337 = call i64* @oat_alloc_array(i64 3)
  %_array1338 = bitcast i64* %_raw_array1337 to { i64, [0 x i64] }*
  %_ind1339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1338, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1339
  %_ind1340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1338, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1340
  %_ind1341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1338, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1341
  %_ind1342 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1326, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1328, { i64, [0 x i64] }** %_ind1342
  %_ind1343 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1326, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1333, { i64, [0 x i64] }** %_ind1343
  %_ind1344 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1326, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1338, { i64, [0 x i64] }** %_ind1344
  %arr2 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1326, { i64, [0 x { i64, [0 x i64] }*] }** %arr2
  %c = alloca i64
  store i64 1, i64* %c
  %_ret1345 = call { i64, [0 x i64] }* @_g()
  %arr4 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1345, { i64, [0 x i64] }** %arr4
  %_raw_array1346 = call i64* @oat_alloc_array(i64 4)
  %_array1347 = bitcast i64* %_raw_array1346 to { i64, [0 x i64] }*
  %_ind1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1347, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1348
  %_ind1349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1347, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1349
  %_ind1350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1347, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1350
  %_ind1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1347, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind1351
  %arr3 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1347, { i64, [0 x i64] }** %arr3
  %_local1352 = load i64, i64* %c
  %_glob1353 = load i64, i64* @_i
  %_bop1354 = add i64 %_local1352, %_glob1353
  store i64 %_bop1354, i64* %c
  %_local1355 = load i64, i64* %c
  %_local1356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ptr1357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1356, i32 0, i32 1, i32 1
  %_elem1358 = load i64, i64* %_ptr1357
  %_bop1359 = add i64 %_local1355, %_elem1358
  store i64 %_bop1359, i64* %c
  %_local1360 = load i64, i64* %c
  %_local1361 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr2
  %_ptr1362 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1361, i32 0, i32 1, i32 1
  %_elem1363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1362
  %_ptr1364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1363, i32 0, i32 1, i32 1
  %_elem1365 = load i64, i64* %_ptr1364
  %_bop1366 = add i64 %_local1360, %_elem1365
  store i64 %_bop1366, i64* %c
  %_local1367 = load i64, i64* %c
  %_local1368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr3
  %_ptr1369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1368, i32 0, i32 1, i32 3
  %_elem1370 = load i64, i64* %_ptr1369
  %_bop1371 = add i64 %_local1367, %_elem1370
  store i64 %_bop1371, i64* %c
  %_local1372 = load i64, i64* %c
  %_local1373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr3
  %_ret1374 = call i64 @_f({ i64, [0 x i64] }* %_local1373)
  %_bop1375 = add i64 %_local1372, %_ret1374
  store i64 %_bop1375, i64* %c
  %_local1376 = load i64, i64* %c
  %_local1377 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr4
  %_ptr1378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1377, i32 0, i32 1, i32 1
  %_elem1379 = load i64, i64* %_ptr1378
  %_bop1380 = add i64 %_local1376, %_elem1379
  store i64 %_bop1380, i64* %c
  %_local1382 = load i64, i64* %c
  %_fun_return1381 = bitcast i64 %_local1382 to i64
  ret i64 %_fun_return1381
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
