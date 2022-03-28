; generated from: hw4programs/run14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x i64] }* %_a1479) {
  %_a1480 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a1479, { i64, [0 x i64] }** %_a1480
  %_local1482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1480
  %_ptr1483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1482, i32 0, i32 1, i32 1
  %_elem1484 = load i64, i64* %_ptr1483
  %_fun_return1481 = bitcast i64 %_elem1484 to i64
  ret i64 %_fun_return1481
}

define i64 @g(i64 %_x1459) {
  %_x1460 = alloca i64
  store i64 %_x1459, i64* %_x1460
  %_raw_array1461 = call i64* @oat_alloc_array(i64 3)
  %_array1462 = bitcast i64* %_raw_array1461 to { i64, [0 x i64] }*
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1462, { i64, [0 x i64] }** %arr
  %_i1463 = alloca i64
  store i64 0, i64* %_i1463
  br label %_while1472
_while1472:
  %_local1464 = load i64, i64* %_i1463
  %_bop1465 = icmp slt i64 %_local1464, 3
  br i1 %_bop1465, label %_do1473, label %_elihw1474
_do1473:
  %_local1466 = load i64, i64* %_x1460
  %_local1467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1468 = load i64, i64* %_i1463
  %_ind_assign1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1467, i32 0, i32 1, i64 %_local1468
  store i64 %_local1466, i64* %_ind_assign1469
  %_local1470 = load i64, i64* %_i1463
  %_bop1471 = add i64 %_local1470, 1
  store i64 %_bop1471, i64* %_i1463
  br label %_while1472
_elihw1474:
  %_local1476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr1477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1476, i32 0, i32 1, i32 1
  %_elem1478 = load i64, i64* %_ptr1477
  %_fun_return1475 = bitcast i64 %_elem1478 to i64
  ret i64 %_fun_return1475
}

define i64 @program(i64 %_argc1397, { i64, [0 x i8*] }* %_argv1398) {
  %_argc1399 = alloca i64
  store i64 %_argc1397, i64* %_argc1399
  %_argv1400 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1398, { i64, [0 x i8*] }** %_argv1400
  %_raw_array1401 = call i64* @oat_alloc_array(i64 3)
  %_array1402 = bitcast i64* %_raw_array1401 to { i64, [0 x i64] }*
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1402, { i64, [0 x i64] }** %a
  %_i1403 = alloca i64
  store i64 0, i64* %_i1403
  br label %_while1412
_while1412:
  %_local1404 = load i64, i64* %_i1403
  %_bop1405 = icmp slt i64 %_local1404, 3
  br i1 %_bop1405, label %_do1413, label %_elihw1414
_do1413:
  %_local1406 = load i64, i64* %_i1403
  %_local1407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_local1408 = load i64, i64* %_i1403
  %_ind_assign1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1407, i32 0, i32 1, i64 %_local1408
  store i64 %_local1406, i64* %_ind_assign1409
  %_local1410 = load i64, i64* %_i1403
  %_bop1411 = add i64 %_local1410, 1
  store i64 %_bop1411, i64* %_i1403
  br label %_while1412
_elihw1414:
  %_raw_array1415 = call i64* @oat_alloc_array(i64 4)
  %_array1416 = bitcast i64* %_raw_array1415 to { i64, [0 x i64] }*
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1416, { i64, [0 x i64] }** %arr
  %_i1417 = alloca i64
  store i64 0, i64* %_i1417
  br label %_while1428
_while1428:
  %_local1418 = load i64, i64* %_i1417
  %_bop1419 = icmp slt i64 %_local1418, 4
  br i1 %_bop1419, label %_do1429, label %_elihw1430
_do1429:
  %_local1420 = load i64, i64* %_i1417
  %_local1421 = load i64, i64* %_i1417
  %_bop1422 = mul i64 %_local1420, %_local1421
  %_local1423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1424 = load i64, i64* %_i1417
  %_ind_assign1425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1423, i32 0, i32 1, i64 %_local1424
  store i64 %_bop1422, i64* %_ind_assign1425
  %_local1426 = load i64, i64* %_i1417
  %_bop1427 = add i64 %_local1426, 1
  store i64 %_bop1427, i64* %_i1417
  br label %_while1428
_elihw1430:
  %_raw_array1431 = call i64* @oat_alloc_array(i64 3)
  %_array1432 = bitcast i64* %_raw_array1431 to { i64, [0 x i64] }*
  %arr0 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1432, { i64, [0 x i64] }** %arr0
  %_i1433 = alloca i64
  store i64 0, i64* %_i1433
  br label %_while1443
_while1443:
  %_local1434 = load i64, i64* %_i1433
  %_bop1435 = icmp slt i64 %_local1434, 3
  br i1 %_bop1435, label %_do1444, label %_elihw1445
_do1444:
  %_local1436 = load i64, i64* %_i1433
  %_bop1437 = mul i64 2, %_local1436
  %_local1438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr0
  %_local1439 = load i64, i64* %_i1433
  %_ind_assign1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1438, i32 0, i32 1, i64 %_local1439
  store i64 %_bop1437, i64* %_ind_assign1440
  %_local1441 = load i64, i64* %_i1433
  %_bop1442 = add i64 %_local1441, 1
  store i64 %_bop1442, i64* %_i1433
  br label %_while1443
_elihw1445:
  %_local1447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr1448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1447, i32 0, i32 1, i32 3
  %_elem1449 = load i64, i64* %_ptr1448
  %_local1450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1450, i32 0, i32 1, i32 1
  %_elem1452 = load i64, i64* %_ptr1451
  %_bop1453 = add i64 %_elem1449, %_elem1452
  %_local1454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr0
  %_ret1455 = call i64 @_f({ i64, [0 x i64] }* %_local1454)
  %_bop1456 = add i64 %_bop1453, %_ret1455
  %_ret1457 = call i64 @_g(i64 4)
  %_bop1458 = add i64 %_bop1456, %_ret1457
  %_fun_return1446 = bitcast i64 %_bop1458 to i64
  ret i64 %_fun_return1446
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
