; generated from: hw4programs/run19.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1725, { i64, [0 x i8*] }* %_argv1726) {
  %_argc1727 = alloca i64
  store i64 %_argc1725, i64* %_argc1727
  %_argv1728 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1726, { i64, [0 x i8*] }** %_argv1728
  %i = alloca i64
  store i64 999, i64* %i
  %_raw_array1729 = call i64* @oat_alloc_array(i64 3)
  %_array1730 = bitcast i64* %_raw_array1729 to { i64, [0 x i64] }*
  %_ind1731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1731
  %_ind1732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1732
  %_ind1733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1730, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1733
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1730, { i64, [0 x i64] }** %a
  %_local1735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1735, i32 0, i32 1, i32 2
  %_elem1737 = load i64, i64* %_ptr1736
  %_fun_return1734 = bitcast i64 %_elem1737 to i64
  ret i64 %_fun_return1734
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
