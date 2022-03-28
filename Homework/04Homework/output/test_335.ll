; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_a1524) {
  %_a1525 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1524, { i64, [0 x { i64, [0 x i64] }*] }** %_a1525
  %_local1527 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1525
  %_ptr1528 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1527, i32 0, i32 1, i32 1
  %_elem1529 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1528
  %_ptr1530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1529, i32 0, i32 1, i32 1
  %_elem1531 = load i64, i64* %_ptr1530
  %_fun_return1526 = bitcast i64 %_elem1531 to i64
  ret i64 %_fun_return1526
}

define i64 @g(i64 %_x1487) {
  %_x1488 = alloca i64
  store i64 %_x1487, i64* %_x1488
  %_raw_array1489 = call i64* @oat_alloc_array(i64 3)
  %_array1490 = bitcast i64* %_raw_array1489 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1491 = call i64* @oat_alloc_array(i64 3)
  %_array1492 = bitcast i64* %_raw_array1491 to { i64, [0 x i64] }*
  %_local1493 = load i64, i64* %_x1488
  %_local1494 = load i64, i64* %_x1488
  %_local1495 = load i64, i64* %_x1488
  %_ind1496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1492, i32 0, i32 1, i32 0
  store i64 %_local1493, i64* %_ind1496
  %_ind1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1492, i32 0, i32 1, i32 1
  store i64 %_local1494, i64* %_ind1497
  %_ind1498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1492, i32 0, i32 1, i32 2
  store i64 %_local1495, i64* %_ind1498
  %_raw_array1499 = call i64* @oat_alloc_array(i64 3)
  %_array1500 = bitcast i64* %_raw_array1499 to { i64, [0 x i64] }*
  %_local1501 = load i64, i64* %_x1488
  %_local1502 = load i64, i64* %_x1488
  %_local1503 = load i64, i64* %_x1488
  %_ind1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1500, i32 0, i32 1, i32 0
  store i64 %_local1501, i64* %_ind1504
  %_ind1505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1500, i32 0, i32 1, i32 1
  store i64 %_local1502, i64* %_ind1505
  %_ind1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1500, i32 0, i32 1, i32 2
  store i64 %_local1503, i64* %_ind1506
  %_raw_array1507 = call i64* @oat_alloc_array(i64 3)
  %_array1508 = bitcast i64* %_raw_array1507 to { i64, [0 x i64] }*
  %_local1509 = load i64, i64* %_x1488
  %_local1510 = load i64, i64* %_x1488
  %_local1511 = load i64, i64* %_x1488
  %_ind1512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1508, i32 0, i32 1, i32 0
  store i64 %_local1509, i64* %_ind1512
  %_ind1513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1508, i32 0, i32 1, i32 1
  store i64 %_local1510, i64* %_ind1513
  %_ind1514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1508, i32 0, i32 1, i32 2
  store i64 %_local1511, i64* %_ind1514
  %_ind1515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1492, { i64, [0 x i64] }** %_ind1515
  %_ind1516 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1500, { i64, [0 x i64] }** %_ind1516
  %_ind1517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1508, { i64, [0 x i64] }** %_ind1517
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local1519 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1520 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1519, i32 0, i32 1, i32 1
  %_elem1521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1520
  %_ptr1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1521, i32 0, i32 1, i32 1
  %_elem1523 = load i64, i64* %_ptr1522
  %_fun_return1518 = bitcast i64 %_elem1523 to i64
  ret i64 %_fun_return1518
}

define i64 @program(i64 %_argc1363, { i64, [0 x i8*] }* %_argv1364) {
  %_argc1365 = alloca i64
  store i64 %_argc1363, i64* %_argc1365
  %_argv1366 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1364, { i64, [0 x i8*] }** %_argv1366
  %_raw_array1367 = call i64* @oat_alloc_array(i64 3)
  %_array1368 = bitcast i64* %_raw_array1367 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1369 = call i64* @oat_alloc_array(i64 3)
  %_array1370 = bitcast i64* %_raw_array1369 to { i64, [0 x i64] }*
  %_ind1371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1370, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1371
  %_ind1372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1370, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1372
  %_ind1373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1370, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1373
  %_raw_array1374 = call i64* @oat_alloc_array(i64 3)
  %_array1375 = bitcast i64* %_raw_array1374 to { i64, [0 x i64] }*
  %_ind1376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1375, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1376
  %_ind1377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1375, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1377
  %_ind1378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1375, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1378
  %_raw_array1379 = call i64* @oat_alloc_array(i64 3)
  %_array1380 = bitcast i64* %_raw_array1379 to { i64, [0 x i64] }*
  %_ind1381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1380, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1381
  %_ind1382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1380, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1382
  %_ind1383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1380, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1383
  %_ind1384 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1368, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1370, { i64, [0 x i64] }** %_ind1384
  %_ind1385 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1368, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1375, { i64, [0 x i64] }** %_ind1385
  %_ind1386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1368, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1380, { i64, [0 x i64] }** %_ind1386
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1368, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_raw_array1387 = call i64* @oat_alloc_array(i64 4)
  %_array1388 = bitcast i64* %_raw_array1387 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1389 = call i64* @oat_alloc_array(i64 5)
  %_array1390 = bitcast i64* %_raw_array1389 to { i64, [0 x i64] }*
  %_bop1391 = mul i64 0, 0
  %_bop1392 = mul i64 0, 1
  %_bop1393 = mul i64 0, 2
  %_bop1394 = mul i64 0, 3
  %_bop1395 = mul i64 0, 4
  %_ind1396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 0
  store i64 %_bop1391, i64* %_ind1396
  %_ind1397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 1
  store i64 %_bop1392, i64* %_ind1397
  %_ind1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 2
  store i64 %_bop1393, i64* %_ind1398
  %_ind1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 3
  store i64 %_bop1394, i64* %_ind1399
  %_ind1400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 4
  store i64 %_bop1395, i64* %_ind1400
  %_raw_array1401 = call i64* @oat_alloc_array(i64 5)
  %_array1402 = bitcast i64* %_raw_array1401 to { i64, [0 x i64] }*
  %_bop1403 = mul i64 1, 0
  %_bop1404 = mul i64 1, 1
  %_bop1405 = mul i64 1, 2
  %_bop1406 = mul i64 1, 3
  %_bop1407 = mul i64 1, 4
  %_ind1408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 0
  store i64 %_bop1403, i64* %_ind1408
  %_ind1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 1
  store i64 %_bop1404, i64* %_ind1409
  %_ind1410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 2
  store i64 %_bop1405, i64* %_ind1410
  %_ind1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 3
  store i64 %_bop1406, i64* %_ind1411
  %_ind1412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 4
  store i64 %_bop1407, i64* %_ind1412
  %_raw_array1413 = call i64* @oat_alloc_array(i64 5)
  %_array1414 = bitcast i64* %_raw_array1413 to { i64, [0 x i64] }*
  %_bop1415 = mul i64 2, 0
  %_bop1416 = mul i64 2, 1
  %_bop1417 = mul i64 2, 2
  %_bop1418 = mul i64 2, 3
  %_bop1419 = mul i64 2, 4
  %_ind1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1414, i32 0, i32 1, i32 0
  store i64 %_bop1415, i64* %_ind1420
  %_ind1421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1414, i32 0, i32 1, i32 1
  store i64 %_bop1416, i64* %_ind1421
  %_ind1422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1414, i32 0, i32 1, i32 2
  store i64 %_bop1417, i64* %_ind1422
  %_ind1423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1414, i32 0, i32 1, i32 3
  store i64 %_bop1418, i64* %_ind1423
  %_ind1424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1414, i32 0, i32 1, i32 4
  store i64 %_bop1419, i64* %_ind1424
  %_raw_array1425 = call i64* @oat_alloc_array(i64 5)
  %_array1426 = bitcast i64* %_raw_array1425 to { i64, [0 x i64] }*
  %_bop1427 = mul i64 3, 0
  %_bop1428 = mul i64 3, 1
  %_bop1429 = mul i64 3, 2
  %_bop1430 = mul i64 3, 3
  %_bop1431 = mul i64 3, 4
  %_ind1432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1426, i32 0, i32 1, i32 0
  store i64 %_bop1427, i64* %_ind1432
  %_ind1433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1426, i32 0, i32 1, i32 1
  store i64 %_bop1428, i64* %_ind1433
  %_ind1434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1426, i32 0, i32 1, i32 2
  store i64 %_bop1429, i64* %_ind1434
  %_ind1435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1426, i32 0, i32 1, i32 3
  store i64 %_bop1430, i64* %_ind1435
  %_ind1436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1426, i32 0, i32 1, i32 4
  store i64 %_bop1431, i64* %_ind1436
  %_ind1437 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1390, { i64, [0 x i64] }** %_ind1437
  %_ind1438 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1402, { i64, [0 x i64] }** %_ind1438
  %_ind1439 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1414, { i64, [0 x i64] }** %_ind1439
  %_ind1440 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1426, { i64, [0 x i64] }** %_ind1440
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1388, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_raw_array1441 = call i64* @oat_alloc_array(i64 3)
  %_array1442 = bitcast i64* %_raw_array1441 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1443 = call i64* @oat_alloc_array(i64 3)
  %_array1444 = bitcast i64* %_raw_array1443 to { i64, [0 x i64] }*
  %_bop1445 = mul i64 0, 0
  %_bop1446 = mul i64 0, 1
  %_bop1447 = mul i64 0, 2
  %_ind1448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1444, i32 0, i32 1, i32 0
  store i64 %_bop1445, i64* %_ind1448
  %_ind1449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1444, i32 0, i32 1, i32 1
  store i64 %_bop1446, i64* %_ind1449
  %_ind1450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1444, i32 0, i32 1, i32 2
  store i64 %_bop1447, i64* %_ind1450
  %_raw_array1451 = call i64* @oat_alloc_array(i64 3)
  %_array1452 = bitcast i64* %_raw_array1451 to { i64, [0 x i64] }*
  %_bop1453 = mul i64 1, 0
  %_bop1454 = mul i64 1, 1
  %_bop1455 = mul i64 1, 2
  %_ind1456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1452, i32 0, i32 1, i32 0
  store i64 %_bop1453, i64* %_ind1456
  %_ind1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1452, i32 0, i32 1, i32 1
  store i64 %_bop1454, i64* %_ind1457
  %_ind1458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1452, i32 0, i32 1, i32 2
  store i64 %_bop1455, i64* %_ind1458
  %_raw_array1459 = call i64* @oat_alloc_array(i64 3)
  %_array1460 = bitcast i64* %_raw_array1459 to { i64, [0 x i64] }*
  %_bop1461 = mul i64 2, 0
  %_bop1462 = mul i64 2, 1
  %_bop1463 = mul i64 2, 2
  %_ind1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 0
  store i64 %_bop1461, i64* %_ind1464
  %_ind1465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 1
  store i64 %_bop1462, i64* %_ind1465
  %_ind1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1460, i32 0, i32 1, i32 2
  store i64 %_bop1463, i64* %_ind1466
  %_ind1467 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1444, { i64, [0 x i64] }** %_ind1467
  %_ind1468 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1452, { i64, [0 x i64] }** %_ind1468
  %_ind1469 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1460, { i64, [0 x i64] }** %_ind1469
  %arr0 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, { i64, [0 x { i64, [0 x i64] }*] }** %arr0
  %_local1471 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1472 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1471, i32 0, i32 1, i32 3
  %_elem1473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1472
  %_ptr1474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1473, i32 0, i32 1, i32 4
  %_elem1475 = load i64, i64* %_ptr1474
  %_local1476 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_ptr1477 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1476, i32 0, i32 1, i32 1
  %_elem1478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1477
  %_ptr1479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1478, i32 0, i32 1, i32 2
  %_elem1480 = load i64, i64* %_ptr1479
  %_bop1481 = add i64 %_elem1475, %_elem1480
  %_local1482 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr0
  %_ret1483 = call i64 @_f({ i64, [0 x { i64, [0 x i64] }*] }* %_local1482)
  %_bop1484 = add i64 %_bop1481, %_ret1483
  %_ret1485 = call i64 @_g(i64 4)
  %_bop1486 = add i64 %_bop1484, %_ret1485
  %_fun_return1470 = bitcast i64 %_bop1486 to i64
  ret i64 %_fun_return1470
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
