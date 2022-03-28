; generated from: hw4programs/run20.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f() {
  %_fun_return1751 = bitcast i64 19 to i64
  ret i64 %_fun_return1751
}

define i64 @program(i64 %_argc1738, { i64, [0 x i8*] }* %_argv1739) {
  %_argc1740 = alloca i64
  store i64 %_argc1738, i64* %_argc1740
  %_argv1741 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1739, { i64, [0 x i8*] }** %_argv1741
  %_raw_array1742 = call i64* @oat_alloc_array(i64 3)
  %_array1743 = bitcast i64* %_raw_array1742 to { i64, [0 x i64] }*
  %_ind1744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1743, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1744
  %_ind1745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1743, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1745
  %_ind1746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1743, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1746
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1743, { i64, [0 x i64] }** %a
  %_local1748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1748, i32 0, i32 1, i32 2
  %_elem1750 = load i64, i64* %_ptr1749
  %_fun_return1747 = bitcast i64 %_elem1750 to i64
  ret i64 %_fun_return1747
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
