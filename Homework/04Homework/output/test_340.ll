; generated from: hw4programs/run22.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1630, { i64, [0 x i8*] }* %_argv1631) {
  %_argc1632 = alloca i64
  store i64 %_argc1630, i64* %_argc1632
  %_argv1633 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1631, { i64, [0 x i8*] }** %_argv1633
  %_raw_array1634 = call i64* @oat_alloc_array(i64 2)
  %_array1635 = bitcast i64* %_raw_array1634 to { i64, [0 x i8*] }*
  %_raw_array1637 = call i64* @oat_alloc_array(i64 3)
  %_array1638 = bitcast i64* %_raw_array1637 to { i64, [0 x i64] }*
  %_ind1639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1638, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind1639
  %_ind1640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1638, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind1640
  %_ind1641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1638, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1641
  %_strr_arr1636 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1638)
  %_raw_array1643 = call i64* @oat_alloc_array(i64 3)
  %_array1644 = bitcast i64* %_raw_array1643 to { i64, [0 x i64] }*
  %_ind1645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 0
  store i64 100, i64* %_ind1645
  %_ind1646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1646
  %_ind1647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 2
  store i64 102, i64* %_ind1647
  %_strr_arr1642 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1644)
  %_ind1648 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1635, i32 0, i32 1, i32 0
  store i8* %_strr_arr1636, i8** %_ind1648
  %_ind1649 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1635, i32 0, i32 1, i32 1
  store i8* %_strr_arr1642, i8** %_ind1649
  %strs = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_array1635, { i64, [0 x i8*] }** %strs
  %_local1650 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %strs
  %_ptr1651 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_local1650, i32 0, i32 1, i32 0
  %_elem1652 = load i8*, i8** %_ptr1651
  call void @print_string(i8* %_elem1652)
  %_fun_return1653 = bitcast i64 0 to i64
  ret i64 %_fun_return1653
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
