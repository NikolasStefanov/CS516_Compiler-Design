; generated from: hw4programs/run15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_a1646) {
  %_a1647 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1646, { i64, [0 x { i64, [0 x i64] }*] }** %_a1647
  %_local1649 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1647
  %_ptr1650 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1649, i32 0, i32 1, i32 1
  %_elem1651 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1650
  %_ptr1652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1651, i32 0, i32 1, i32 1
  %_elem1653 = load i64, i64* %_ptr1652
  %_fun_return1648 = bitcast i64 %_elem1653 to i64
  ret i64 %_fun_return1648
}

define i64 @g(i64 %_x1609) {
  %_x1610 = alloca i64
  store i64 %_x1609, i64* %_x1610
  %_raw_array1611 = call i64* @oat_alloc_array(i64 3)
  %_array1612 = bitcast i64* %_raw_array1611 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1613 = call i64* @oat_alloc_array(i64 3)
  %_array1614 = bitcast i64* %_raw_array1613 to { i64, [0 x i64] }*
  %_local1615 = load i64, i64* %_x1610
  %_local1616 = load i64, i64* %_x1610
  %_local1617 = load i64, i64* %_x1610
  %_ind1618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1614, i32 0, i32 1, i32 0
  store i64 %_local1615, i64* %_ind1618
  %_ind1619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1614, i32 0, i32 1, i32 1
  store i64 %_local1616, i64* %_ind1619
  %_ind1620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1614, i32 0, i32 1, i32 2
  store i64 %_local1617, i64* %_ind1620
  %_raw_array1621 = call i64* @oat_alloc_array(i64 3)
  %_array1622 = bitcast i64* %_raw_array1621 to { i64, [0 x i64] }*
  %_local1623 = load i64, i64* %_x1610
  %_local1624 = load i64, i64* %_x1610
  %_local1625 = load i64, i64* %_x1610
  %_ind1626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1622, i32 0, i32 1, i32 0
  store i64 %_local1623, i64* %_ind1626
  %_ind1627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1622, i32 0, i32 1, i32 1
  store i64 %_local1624, i64* %_ind1627
  %_ind1628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1622, i32 0, i32 1, i32 2
  store i64 %_local1625, i64* %_ind1628
  %_raw_array1629 = call i64* @oat_alloc_array(i64 3)
  %_array1630 = bitcast i64* %_raw_array1629 to { i64, [0 x i64] }*
  %_local1631 = load i64, i64* %_x1610
  %_local1632 = load i64, i64* %_x1610
  %_local1633 = load i64, i64* %_x1610
  %_ind1634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 0
  store i64 %_local1631, i64* %_ind1634
  %_ind1635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 1
  store i64 %_local1632, i64* %_ind1635
  %_ind1636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 2
  store i64 %_local1633, i64* %_ind1636
  %_ind1637 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1612, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1614, { i64, [0 x i64] }** %_ind1637
  %_ind1638 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1612, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1622, { i64, [0 x i64] }** %_ind1638
  %_ind1639 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1612, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1630, { i64, [0 x i64] }** %_ind1639
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1612, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local1641 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1642 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1641, i32 0, i32 1, i32 1
  %_elem1643 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1642
  %_ptr1644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1643, i32 0, i32 1, i32 1
  %_elem1645 = load i64, i64* %_ptr1644
  %_fun_return1640 = bitcast i64 %_elem1645 to i64
  ret i64 %_fun_return1640
}

define i64 @program(i64 %_argc1485, { i64, [0 x i8*] }* %_argv1486) {
  %_argc1487 = alloca i64
  store i64 %_argc1485, i64* %_argc1487
  %_argv1488 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1486, { i64, [0 x i8*] }** %_argv1488
  %_raw_array1489 = call i64* @oat_alloc_array(i64 3)
  %_array1490 = bitcast i64* %_raw_array1489 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1491 = call i64* @oat_alloc_array(i64 3)
  %_array1492 = bitcast i64* %_raw_array1491 to { i64, [0 x i64] }*
  %_ind1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1492, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1493
  %_ind1494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1492, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1494
  %_ind1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1492, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1495
  %_raw_array1496 = call i64* @oat_alloc_array(i64 3)
  %_array1497 = bitcast i64* %_raw_array1496 to { i64, [0 x i64] }*
  %_ind1498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1497, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1498
  %_ind1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1497, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1499
  %_ind1500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1497, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1500
  %_raw_array1501 = call i64* @oat_alloc_array(i64 3)
  %_array1502 = bitcast i64* %_raw_array1501 to { i64, [0 x i64] }*
  %_ind1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1503
  %_ind1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1504
  %_ind1505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1505
  %_ind1506 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1492, { i64, [0 x i64] }** %_ind1506
  %_ind1507 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1497, { i64, [0 x i64] }** %_ind1507
  %_ind1508 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1502, { i64, [0 x i64] }** %_ind1508
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1490, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_raw_array1509 = call i64* @oat_alloc_array(i64 4)
  %_array1510 = bitcast i64* %_raw_array1509 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1511 = call i64* @oat_alloc_array(i64 5)
  %_array1512 = bitcast i64* %_raw_array1511 to { i64, [0 x i64] }*
  %_bop1513 = mul i64 0, 0
  %_bop1514 = mul i64 0, 1
  %_bop1515 = mul i64 0, 2
  %_bop1516 = mul i64 0, 3
  %_bop1517 = mul i64 0, 4
  %_ind1518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1512, i32 0, i32 1, i32 0
  store i64 %_bop1513, i64* %_ind1518
  %_ind1519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1512, i32 0, i32 1, i32 1
  store i64 %_bop1514, i64* %_ind1519
  %_ind1520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1512, i32 0, i32 1, i32 2
  store i64 %_bop1515, i64* %_ind1520
  %_ind1521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1512, i32 0, i32 1, i32 3
  store i64 %_bop1516, i64* %_ind1521
  %_ind1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1512, i32 0, i32 1, i32 4
  store i64 %_bop1517, i64* %_ind1522
  %_raw_array1523 = call i64* @oat_alloc_array(i64 5)
  %_array1524 = bitcast i64* %_raw_array1523 to { i64, [0 x i64] }*
  %_bop1525 = mul i64 1, 0
  %_bop1526 = mul i64 1, 1
  %_bop1527 = mul i64 1, 2
  %_bop1528 = mul i64 1, 3
  %_bop1529 = mul i64 1, 4
  %_ind1530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 0
  store i64 %_bop1525, i64* %_ind1530
  %_ind1531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 1
  store i64 %_bop1526, i64* %_ind1531
  %_ind1532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 2
  store i64 %_bop1527, i64* %_ind1532
  %_ind1533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 3
  store i64 %_bop1528, i64* %_ind1533
  %_ind1534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1524, i32 0, i32 1, i32 4
  store i64 %_bop1529, i64* %_ind1534
  %_raw_array1535 = call i64* @oat_alloc_array(i64 5)
  %_array1536 = bitcast i64* %_raw_array1535 to { i64, [0 x i64] }*
  %_bop1537 = mul i64 2, 0
  %_bop1538 = mul i64 2, 1
  %_bop1539 = mul i64 2, 2
  %_bop1540 = mul i64 2, 3
  %_bop1541 = mul i64 2, 4
  %_ind1542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 0
  store i64 %_bop1537, i64* %_ind1542
  %_ind1543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 1
  store i64 %_bop1538, i64* %_ind1543
  %_ind1544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 2
  store i64 %_bop1539, i64* %_ind1544
  %_ind1545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 3
  store i64 %_bop1540, i64* %_ind1545
  %_ind1546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 4
  store i64 %_bop1541, i64* %_ind1546
  %_raw_array1547 = call i64* @oat_alloc_array(i64 5)
  %_array1548 = bitcast i64* %_raw_array1547 to { i64, [0 x i64] }*
  %_bop1549 = mul i64 3, 0
  %_bop1550 = mul i64 3, 1
  %_bop1551 = mul i64 3, 2
  %_bop1552 = mul i64 3, 3
  %_bop1553 = mul i64 3, 4
  %_ind1554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1548, i32 0, i32 1, i32 0
  store i64 %_bop1549, i64* %_ind1554
  %_ind1555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1548, i32 0, i32 1, i32 1
  store i64 %_bop1550, i64* %_ind1555
  %_ind1556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1548, i32 0, i32 1, i32 2
  store i64 %_bop1551, i64* %_ind1556
  %_ind1557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1548, i32 0, i32 1, i32 3
  store i64 %_bop1552, i64* %_ind1557
  %_ind1558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1548, i32 0, i32 1, i32 4
  store i64 %_bop1553, i64* %_ind1558
  %_ind1559 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1510, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1512, { i64, [0 x i64] }** %_ind1559
  %_ind1560 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1510, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1524, { i64, [0 x i64] }** %_ind1560
  %_ind1561 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1510, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1536, { i64, [0 x i64] }** %_ind1561
  %_ind1562 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1510, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1548, { i64, [0 x i64] }** %_ind1562
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1510, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_raw_array1563 = call i64* @oat_alloc_array(i64 3)
  %_array1564 = bitcast i64* %_raw_array1563 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1565 = call i64* @oat_alloc_array(i64 3)
  %_array1566 = bitcast i64* %_raw_array1565 to { i64, [0 x i64] }*
  %_bop1567 = mul i64 0, 0
  %_bop1568 = mul i64 0, 1
  %_bop1569 = mul i64 0, 2
  %_ind1570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1566, i32 0, i32 1, i32 0
  store i64 %_bop1567, i64* %_ind1570
  %_ind1571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1566, i32 0, i32 1, i32 1
  store i64 %_bop1568, i64* %_ind1571
  %_ind1572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1566, i32 0, i32 1, i32 2
  store i64 %_bop1569, i64* %_ind1572
  %_raw_array1573 = call i64* @oat_alloc_array(i64 3)
  %_array1574 = bitcast i64* %_raw_array1573 to { i64, [0 x i64] }*
  %_bop1575 = mul i64 1, 0
  %_bop1576 = mul i64 1, 1
  %_bop1577 = mul i64 1, 2
  %_ind1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1574, i32 0, i32 1, i32 0
  store i64 %_bop1575, i64* %_ind1578
  %_ind1579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1574, i32 0, i32 1, i32 1
  store i64 %_bop1576, i64* %_ind1579
  %_ind1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1574, i32 0, i32 1, i32 2
  store i64 %_bop1577, i64* %_ind1580
  %_raw_array1581 = call i64* @oat_alloc_array(i64 3)
  %_array1582 = bitcast i64* %_raw_array1581 to { i64, [0 x i64] }*
  %_bop1583 = mul i64 2, 0
  %_bop1584 = mul i64 2, 1
  %_bop1585 = mul i64 2, 2
  %_ind1586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 0
  store i64 %_bop1583, i64* %_ind1586
  %_ind1587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 1
  store i64 %_bop1584, i64* %_ind1587
  %_ind1588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 2
  store i64 %_bop1585, i64* %_ind1588
  %_ind1589 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1564, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1566, { i64, [0 x i64] }** %_ind1589
  %_ind1590 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1564, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1574, { i64, [0 x i64] }** %_ind1590
  %_ind1591 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1564, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1582, { i64, [0 x i64] }** %_ind1591
  %arr0 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1564, { i64, [0 x { i64, [0 x i64] }*] }** %arr0
  %_local1593 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1594 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1593, i32 0, i32 1, i32 3
  %_elem1595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1594
  %_ptr1596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1595, i32 0, i32 1, i32 4
  %_elem1597 = load i64, i64* %_ptr1596
  %_local1598 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_ptr1599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1598, i32 0, i32 1, i32 1
  %_elem1600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1599
  %_ptr1601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1600, i32 0, i32 1, i32 2
  %_elem1602 = load i64, i64* %_ptr1601
  %_bop1603 = add i64 %_elem1597, %_elem1602
  %_local1604 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr0
  %_ret1605 = call i64 @_f({ i64, [0 x { i64, [0 x i64] }*] }* %_local1604)
  %_bop1606 = add i64 %_bop1603, %_ret1605
  %_ret1607 = call i64 @_g(i64 4)
  %_bop1608 = add i64 %_bop1606, %_ret1607
  %_fun_return1592 = bitcast i64 %_bop1608 to i64
  ret i64 %_fun_return1592
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
