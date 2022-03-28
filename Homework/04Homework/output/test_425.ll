; generated from: hw4programs/run49.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc987, { i64, [0 x i8*] }* %_argv988) {
  %_argc989 = alloca i64
  store i64 %_argc987, i64* %_argc989
  %_argv990 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv988, { i64, [0 x i8*] }** %_argv990
  %_raw_array992 = call i64* @oat_alloc_array(i64 3)
  %_array993 = bitcast i64* %_raw_array992 to { i64, [0 x i64] }*
  %_ind994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array993, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind994
  %_ind995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array993, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind995
  %_ind996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array993, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind996
  %_strr_arr991 = call i8* @string_of_array({ i64, [0 x i64] }* %_array993)
  call void @print_string(i8* %_strr_arr991)
  %_fun_return997 = bitcast i64 0 to i64
  ret i64 %_fun_return997
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
