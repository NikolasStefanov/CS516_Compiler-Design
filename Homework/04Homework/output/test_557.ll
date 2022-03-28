; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1829, { i64, [0 x i8*] }* %_argv1830) {
  %_argc1831 = alloca i64
  store i64 %_argc1829, i64* %_argc1831
  %_argv1832 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1830, { i64, [0 x i8*] }** %_argv1832
  %_raw_array1833 = call i64* @oat_alloc_array(i64 3)
  %_array1834 = bitcast i64* %_raw_array1833 to { i64, [0 x i64] }*
  %_ind1835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1834, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1835
  %_ind1836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1834, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1836
  %_ind1837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1834, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1837
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1834, { i64, [0 x i64] }** %a
  %_local1838 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret1839 = call i8* @string_of_array({ i64, [0 x i64] }* %_local1838)
  %str = alloca i8*
  store i8* %_ret1839, i8** %str
  %_local1840 = load i8*, i8** %str
  call void @print_string(i8* %_local1840)
  %_fun_return1841 = bitcast i64 0 to i64
  ret i64 %_fun_return1841
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
