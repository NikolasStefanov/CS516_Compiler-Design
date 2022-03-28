; generated from: hw4programs/run50.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc998, { i64, [0 x i8*] }* %_argv999) {
  %_argc1000 = alloca i64
  store i64 %_argc998, i64* %_argc1000
  %_argv1001 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv999, { i64, [0 x i8*] }** %_argv1001
  %_raw_array1003 = call i64* @oat_alloc_array(i64 5)
  %_array1004 = bitcast i64* %_raw_array1003 to { i64, [0 x i64] }*
  %_ind1005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1004, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind1005
  %_ind1006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1004, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind1006
  %_ind1007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1004, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1007
  %_ind1008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1004, i32 0, i32 1, i32 3
  store i64 100, i64* %_ind1008
  %_ind1009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1004, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind1009
  %_strr_arr1002 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1004)
  call void @print_string(i8* %_strr_arr1002)
  %_fun_return1010 = bitcast i64 0 to i64
  ret i64 %_fun_return1010
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
