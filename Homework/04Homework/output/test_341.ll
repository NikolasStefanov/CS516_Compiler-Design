; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1654, { i64, [0 x i8*] }* %_argv1655) {
  %_argc1656 = alloca i64
  store i64 %_argc1654, i64* %_argc1656
  %_argv1657 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1655, { i64, [0 x i8*] }** %_argv1657
  %_raw_array1658 = call i64* @oat_alloc_array(i64 2)
  %_array1659 = bitcast i64* %_raw_array1658 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1660 = call i64* @oat_alloc_array(i64 2)
  %_array1661 = bitcast i64* %_raw_array1660 to { i64, [0 x i8*] }*
  %_raw_array1663 = call i64* @oat_alloc_array(i64 3)
  %_array1664 = bitcast i64* %_raw_array1663 to { i64, [0 x i64] }*
  %_ind1665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind1665
  %_ind1666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind1666
  %_ind1667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1664, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1667
  %_strr_arr1662 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1664)
  %_raw_array1669 = call i64* @oat_alloc_array(i64 3)
  %_array1670 = bitcast i64* %_raw_array1669 to { i64, [0 x i64] }*
  %_ind1671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1670, i32 0, i32 1, i32 0
  store i64 100, i64* %_ind1671
  %_ind1672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1670, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1672
  %_ind1673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1670, i32 0, i32 1, i32 2
  store i64 102, i64* %_ind1673
  %_strr_arr1668 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1670)
  %_ind1674 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1661, i32 0, i32 1, i32 0
  store i8* %_strr_arr1662, i8** %_ind1674
  %_ind1675 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1661, i32 0, i32 1, i32 1
  store i8* %_strr_arr1668, i8** %_ind1675
  %_raw_array1676 = call i64* @oat_alloc_array(i64 2)
  %_array1677 = bitcast i64* %_raw_array1676 to { i64, [0 x i8*] }*
  %_raw_array1679 = call i64* @oat_alloc_array(i64 3)
  %_array1680 = bitcast i64* %_raw_array1679 to { i64, [0 x i64] }*
  %_ind1681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 0
  store i64 55, i64* %_ind1681
  %_ind1682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 1
  store i64 56, i64* %_ind1682
  %_ind1683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 2
  store i64 57, i64* %_ind1683
  %_strr_arr1678 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1680)
  %_raw_array1685 = call i64* @oat_alloc_array(i64 3)
  %_array1686 = bitcast i64* %_raw_array1685 to { i64, [0 x i64] }*
  %_ind1687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 0
  store i64 49, i64* %_ind1687
  %_ind1688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 1
  store i64 50, i64* %_ind1688
  %_ind1689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1686, i32 0, i32 1, i32 2
  store i64 51, i64* %_ind1689
  %_strr_arr1684 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1686)
  %_ind1690 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1677, i32 0, i32 1, i32 0
  store i8* %_strr_arr1678, i8** %_ind1690
  %_ind1691 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1677, i32 0, i32 1, i32 1
  store i8* %_strr_arr1684, i8** %_ind1691
  %_ind1692 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1659, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1661, { i64, [0 x i8*] }** %_ind1692
  %_ind1693 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1659, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1677, { i64, [0 x i8*] }** %_ind1693
  %strs = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1659, { i64, [0 x { i64, [0 x i8*] }*] }** %strs
  %_local1694 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %strs
  %_ptr1695 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_local1694, i32 0, i32 1, i32 1
  %_elem1696 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr1695
  %_ptr1697 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_elem1696, i32 0, i32 1, i32 1
  %_elem1698 = load i8*, i8** %_ptr1697
  call void @print_string(i8* %_elem1698)
  %_fun_return1699 = bitcast i64 0 to i64
  ret i64 %_fun_return1699
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
