; generated from: hw4programs/run21.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc553, { i64, [0 x i8*] }* %_argv554) {
  %_argc555 = alloca i64
  store i64 %_argc553, i64* %_argc555
  %_argv556 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv554, { i64, [0 x i8*] }** %_argv556
  %_raw_array557 = call i64* @oat_alloc_array(i64 2)
  %_array558 = bitcast i64* %_raw_array557 to { i64, [0 x i64] }*
  %_ind559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array558, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind559
  %_ind560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array558, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind560
  %i = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array558, { i64, [0 x i64] }** %i
  %_local562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %i
  %_ptr563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local562, i32 0, i32 1, i32 0
  %_elem564 = load i64, i64* %_ptr563
  %_fun_return561 = bitcast i64 %_elem564 to i64
  ret i64 %_fun_return561
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
