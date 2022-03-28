; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1532, { i64, [0 x i8*] }* %_argv1533) {
  %_argc1534 = alloca i64
  store i64 %_argc1532, i64* %_argc1534
  %_argv1535 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1533, { i64, [0 x i8*] }** %_argv1535
  %x = alloca i64
  store i64 10, i64* %x
  %_raw_array1536 = call i64* @oat_alloc_array(i64 3)
  %_array1537 = bitcast i64* %_raw_array1536 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1538 = call i64* @oat_alloc_array(i64 3)
  %_array1539 = bitcast i64* %_raw_array1538 to { i64, [0 x i64] }*
  %_local1540 = load i64, i64* %x
  %_bop1541 = add i64 %_local1540, 0
  %_bop1542 = add i64 %_bop1541, 0
  %_local1543 = load i64, i64* %x
  %_bop1544 = add i64 %_local1543, 0
  %_bop1545 = add i64 %_bop1544, 1
  %_local1546 = load i64, i64* %x
  %_bop1547 = add i64 %_local1546, 0
  %_bop1548 = add i64 %_bop1547, 2
  %_ind1549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1539, i32 0, i32 1, i32 0
  store i64 %_bop1542, i64* %_ind1549
  %_ind1550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1539, i32 0, i32 1, i32 1
  store i64 %_bop1545, i64* %_ind1550
  %_ind1551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1539, i32 0, i32 1, i32 2
  store i64 %_bop1548, i64* %_ind1551
  %_raw_array1552 = call i64* @oat_alloc_array(i64 3)
  %_array1553 = bitcast i64* %_raw_array1552 to { i64, [0 x i64] }*
  %_local1554 = load i64, i64* %x
  %_bop1555 = add i64 %_local1554, 1
  %_bop1556 = add i64 %_bop1555, 0
  %_local1557 = load i64, i64* %x
  %_bop1558 = add i64 %_local1557, 1
  %_bop1559 = add i64 %_bop1558, 1
  %_local1560 = load i64, i64* %x
  %_bop1561 = add i64 %_local1560, 1
  %_bop1562 = add i64 %_bop1561, 2
  %_ind1563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1553, i32 0, i32 1, i32 0
  store i64 %_bop1556, i64* %_ind1563
  %_ind1564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1553, i32 0, i32 1, i32 1
  store i64 %_bop1559, i64* %_ind1564
  %_ind1565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1553, i32 0, i32 1, i32 2
  store i64 %_bop1562, i64* %_ind1565
  %_raw_array1566 = call i64* @oat_alloc_array(i64 3)
  %_array1567 = bitcast i64* %_raw_array1566 to { i64, [0 x i64] }*
  %_local1568 = load i64, i64* %x
  %_bop1569 = add i64 %_local1568, 2
  %_bop1570 = add i64 %_bop1569, 0
  %_local1571 = load i64, i64* %x
  %_bop1572 = add i64 %_local1571, 2
  %_bop1573 = add i64 %_bop1572, 1
  %_local1574 = load i64, i64* %x
  %_bop1575 = add i64 %_local1574, 2
  %_bop1576 = add i64 %_bop1575, 2
  %_ind1577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 0
  store i64 %_bop1570, i64* %_ind1577
  %_ind1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 1
  store i64 %_bop1573, i64* %_ind1578
  %_ind1579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 2
  store i64 %_bop1576, i64* %_ind1579
  %_ind1580 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1537, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1539, { i64, [0 x i64] }** %_ind1580
  %_ind1581 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1537, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1553, { i64, [0 x i64] }** %_ind1581
  %_ind1582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1537, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1567, { i64, [0 x i64] }** %_ind1582
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1537, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local1583 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %b = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local1583, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_local1585 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_ptr1586 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1585, i32 0, i32 1, i32 2
  %_elem1587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1586
  %_ptr1588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1587, i32 0, i32 1, i32 1
  %_elem1589 = load i64, i64* %_ptr1588
  %_fun_return1584 = bitcast i64 %_elem1589 to i64
  ret i64 %_fun_return1584
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
