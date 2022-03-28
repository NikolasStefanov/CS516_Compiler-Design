; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1654, { i64, [0 x i8*] }* %_argv1655) {
  %_argc1656 = alloca i64
  store i64 %_argc1654, i64* %_argc1656
  %_argv1657 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1655, { i64, [0 x i8*] }** %_argv1657
  %x = alloca i64
  store i64 10, i64* %x
  %_raw_array1658 = call i64* @oat_alloc_array(i64 3)
  %_array1659 = bitcast i64* %_raw_array1658 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1660 = call i64* @oat_alloc_array(i64 3)
  %_array1661 = bitcast i64* %_raw_array1660 to { i64, [0 x i64] }*
  %_local1662 = load i64, i64* %x
  %_bop1663 = add i64 %_local1662, 0
  %_bop1664 = add i64 %_bop1663, 0
  %_local1665 = load i64, i64* %x
  %_bop1666 = add i64 %_local1665, 0
  %_bop1667 = add i64 %_bop1666, 1
  %_local1668 = load i64, i64* %x
  %_bop1669 = add i64 %_local1668, 0
  %_bop1670 = add i64 %_bop1669, 2
  %_ind1671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1661, i32 0, i32 1, i32 0
  store i64 %_bop1664, i64* %_ind1671
  %_ind1672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1661, i32 0, i32 1, i32 1
  store i64 %_bop1667, i64* %_ind1672
  %_ind1673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1661, i32 0, i32 1, i32 2
  store i64 %_bop1670, i64* %_ind1673
  %_raw_array1674 = call i64* @oat_alloc_array(i64 3)
  %_array1675 = bitcast i64* %_raw_array1674 to { i64, [0 x i64] }*
  %_local1676 = load i64, i64* %x
  %_bop1677 = add i64 %_local1676, 1
  %_bop1678 = add i64 %_bop1677, 0
  %_local1679 = load i64, i64* %x
  %_bop1680 = add i64 %_local1679, 1
  %_bop1681 = add i64 %_bop1680, 1
  %_local1682 = load i64, i64* %x
  %_bop1683 = add i64 %_local1682, 1
  %_bop1684 = add i64 %_bop1683, 2
  %_ind1685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1675, i32 0, i32 1, i32 0
  store i64 %_bop1678, i64* %_ind1685
  %_ind1686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1675, i32 0, i32 1, i32 1
  store i64 %_bop1681, i64* %_ind1686
  %_ind1687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1675, i32 0, i32 1, i32 2
  store i64 %_bop1684, i64* %_ind1687
  %_raw_array1688 = call i64* @oat_alloc_array(i64 3)
  %_array1689 = bitcast i64* %_raw_array1688 to { i64, [0 x i64] }*
  %_local1690 = load i64, i64* %x
  %_bop1691 = add i64 %_local1690, 2
  %_bop1692 = add i64 %_bop1691, 0
  %_local1693 = load i64, i64* %x
  %_bop1694 = add i64 %_local1693, 2
  %_bop1695 = add i64 %_bop1694, 1
  %_local1696 = load i64, i64* %x
  %_bop1697 = add i64 %_local1696, 2
  %_bop1698 = add i64 %_bop1697, 2
  %_ind1699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1689, i32 0, i32 1, i32 0
  store i64 %_bop1692, i64* %_ind1699
  %_ind1700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1689, i32 0, i32 1, i32 1
  store i64 %_bop1695, i64* %_ind1700
  %_ind1701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1689, i32 0, i32 1, i32 2
  store i64 %_bop1698, i64* %_ind1701
  %_ind1702 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1659, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1661, { i64, [0 x i64] }** %_ind1702
  %_ind1703 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1659, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1675, { i64, [0 x i64] }** %_ind1703
  %_ind1704 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1659, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1689, { i64, [0 x i64] }** %_ind1704
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1659, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local1705 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %b = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local1705, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_local1707 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_ptr1708 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1707, i32 0, i32 1, i32 2
  %_elem1709 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1708
  %_ptr1710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1709, i32 0, i32 1, i32 1
  %_elem1711 = load i64, i64* %_ptr1710
  %_fun_return1706 = bitcast i64 %_elem1711 to i64
  ret i64 %_fun_return1706
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
