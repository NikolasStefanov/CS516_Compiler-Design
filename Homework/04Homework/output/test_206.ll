; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc645, { i64, [0 x i8*] }* %_argv646) {
  %_argc647 = alloca i64
  store i64 %_argc645, i64* %_argc647
  %_argv648 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv646, { i64, [0 x i8*] }** %_argv648
  %_raw_array649 = call i64* @oat_alloc_array(i64 2)
  %_array650 = bitcast i64* %_raw_array649 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array651 = call i64* @oat_alloc_array(i64 2)
  %_array652 = bitcast i64* %_raw_array651 to { i64, [0 x i64] }*
  %_ind653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array652, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind653
  %_ind654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array652, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind654
  %_raw_array655 = call i64* @oat_alloc_array(i64 2)
  %_array656 = bitcast i64* %_raw_array655 to { i64, [0 x i64] }*
  %_ind657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array656, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind657
  %_ind658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array656, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind658
  %_ind659 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array650, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array652, { i64, [0 x i64] }** %_ind659
  %_ind660 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array650, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array656, { i64, [0 x i64] }** %_ind660
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array650, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local662 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_ptr663 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local662, i32 0, i32 1, i32 0
  %_elem664 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr663
  %_ptr665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem664, i32 0, i32 1, i32 1
  %_elem666 = load i64, i64* %_ptr665
  %_fun_return661 = bitcast i64 %_elem666 to i64
  ret i64 %_fun_return661
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
