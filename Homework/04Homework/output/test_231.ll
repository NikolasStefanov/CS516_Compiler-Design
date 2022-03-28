; generated from: hw4programs/run18.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1590, { i64, [0 x i8*] }* %_argv1591) {
  %_argc1592 = alloca i64
  store i64 %_argc1590, i64* %_argc1592
  %_argv1593 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1591, { i64, [0 x i8*] }** %_argv1593
  %_raw_array1594 = call i64* @oat_alloc_array(i64 3)
  %_array1595 = bitcast i64* %_raw_array1594 to { i64, [0 x i64] }*
  %_ind1596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1595, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1596
  %_ind1597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1595, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1597
  %_ind1598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1595, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1598
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1595, { i64, [0 x i64] }** %a
  %_local1600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1600, i32 0, i32 1, i32 2
  %_elem1602 = load i64, i64* %_ptr1601
  %_fun_return1599 = bitcast i64 %_elem1602 to i64
  ret i64 %_fun_return1599
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
