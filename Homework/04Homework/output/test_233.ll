; generated from: hw4programs/run20.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f() {
  %_fun_return1629 = bitcast i64 19 to i64
  ret i64 %_fun_return1629
}

define i64 @program(i64 %_argc1616, { i64, [0 x i8*] }* %_argv1617) {
  %_argc1618 = alloca i64
  store i64 %_argc1616, i64* %_argc1618
  %_argv1619 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1617, { i64, [0 x i8*] }** %_argv1619
  %_raw_array1620 = call i64* @oat_alloc_array(i64 3)
  %_array1621 = bitcast i64* %_raw_array1620 to { i64, [0 x i64] }*
  %_ind1622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1621, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1622
  %_ind1623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1621, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1623
  %_ind1624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1621, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1624
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1621, { i64, [0 x i64] }** %a
  %_local1626 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr1627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1626, i32 0, i32 1, i32 2
  %_elem1628 = load i64, i64* %_ptr1627
  %_fun_return1625 = bitcast i64 %_elem1628 to i64
  ret i64 %_fun_return1625
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
