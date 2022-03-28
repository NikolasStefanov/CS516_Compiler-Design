; generated from: hw4programs/run23.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1776, { i64, [0 x i8*] }* %_argv1777) {
  %_argc1778 = alloca i64
  store i64 %_argc1776, i64* %_argc1778
  %_argv1779 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1777, { i64, [0 x i8*] }** %_argv1779
  %_raw_array1780 = call i64* @oat_alloc_array(i64 2)
  %_array1781 = bitcast i64* %_raw_array1780 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1782 = call i64* @oat_alloc_array(i64 2)
  %_array1783 = bitcast i64* %_raw_array1782 to { i64, [0 x i8*] }*
  %_raw_array1785 = call i64* @oat_alloc_array(i64 3)
  %_array1786 = bitcast i64* %_raw_array1785 to { i64, [0 x i64] }*
  %_ind1787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1786, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind1787
  %_ind1788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1786, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind1788
  %_ind1789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1786, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1789
  %_strr_arr1784 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1786)
  %_raw_array1791 = call i64* @oat_alloc_array(i64 3)
  %_array1792 = bitcast i64* %_raw_array1791 to { i64, [0 x i64] }*
  %_ind1793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 0
  store i64 100, i64* %_ind1793
  %_ind1794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1794
  %_ind1795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1792, i32 0, i32 1, i32 2
  store i64 102, i64* %_ind1795
  %_strr_arr1790 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1792)
  %_ind1796 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1783, i32 0, i32 1, i32 0
  store i8* %_strr_arr1784, i8** %_ind1796
  %_ind1797 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1783, i32 0, i32 1, i32 1
  store i8* %_strr_arr1790, i8** %_ind1797
  %_raw_array1798 = call i64* @oat_alloc_array(i64 2)
  %_array1799 = bitcast i64* %_raw_array1798 to { i64, [0 x i8*] }*
  %_raw_array1801 = call i64* @oat_alloc_array(i64 3)
  %_array1802 = bitcast i64* %_raw_array1801 to { i64, [0 x i64] }*
  %_ind1803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1802, i32 0, i32 1, i32 0
  store i64 55, i64* %_ind1803
  %_ind1804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1802, i32 0, i32 1, i32 1
  store i64 56, i64* %_ind1804
  %_ind1805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1802, i32 0, i32 1, i32 2
  store i64 57, i64* %_ind1805
  %_strr_arr1800 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1802)
  %_raw_array1807 = call i64* @oat_alloc_array(i64 3)
  %_array1808 = bitcast i64* %_raw_array1807 to { i64, [0 x i64] }*
  %_ind1809 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1808, i32 0, i32 1, i32 0
  store i64 49, i64* %_ind1809
  %_ind1810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1808, i32 0, i32 1, i32 1
  store i64 50, i64* %_ind1810
  %_ind1811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1808, i32 0, i32 1, i32 2
  store i64 51, i64* %_ind1811
  %_strr_arr1806 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1808)
  %_ind1812 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1799, i32 0, i32 1, i32 0
  store i8* %_strr_arr1800, i8** %_ind1812
  %_ind1813 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1799, i32 0, i32 1, i32 1
  store i8* %_strr_arr1806, i8** %_ind1813
  %_ind1814 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1781, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1783, { i64, [0 x i8*] }** %_ind1814
  %_ind1815 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1781, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1799, { i64, [0 x i8*] }** %_ind1815
  %strs = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1781, { i64, [0 x { i64, [0 x i8*] }*] }** %strs
  %_local1816 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %strs
  %_ptr1817 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_local1816, i32 0, i32 1, i32 1
  %_elem1818 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_ptr1817
  %_ptr1819 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_elem1818, i32 0, i32 1, i32 1
  %_elem1820 = load i8*, i8** %_ptr1819
  call void @print_string(i8* %_elem1820)
  %_fun_return1821 = bitcast i64 0 to i64
  ret i64 %_fun_return1821
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
