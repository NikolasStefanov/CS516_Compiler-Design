; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1707, { i64, [0 x i8*] }* %_argv1708) {
  %_argc1709 = alloca i64
  store i64 %_argc1707, i64* %_argc1709
  %_argv1710 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1708, { i64, [0 x i8*] }** %_argv1710
  %_raw_array1711 = call i64* @oat_alloc_array(i64 3)
  %_array1712 = bitcast i64* %_raw_array1711 to { i64, [0 x i64] }*
  %_ind1713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1712, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1713
  %_ind1714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1712, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1714
  %_ind1715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1712, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1715
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1712, { i64, [0 x i64] }** %a
  %_local1716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret1717 = call i8* @string_of_array({ i64, [0 x i64] }* %_local1716)
  %str = alloca i8*
  store i8* %_ret1717, i8** %str
  %_local1718 = load i8*, i8** %str
  call void @print_string(i8* %_local1718)
  %_fun_return1719 = bitcast i64 0 to i64
  ret i64 %_fun_return1719
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
