; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc700, { i64, [0 x i8*] }* %_argv701) {
  %argc = alloca i64
  store i64 %_argc700, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv701, { i64, [0 x i8*] }** %argv
  %_raw_array702 = call i64* @oat_alloc_array(i64 2)
  %_array703 = bitcast i64* %_raw_array702 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array704 = call i64* @oat_alloc_array(i64 2)
  %_array705 = bitcast i64* %_raw_array704 to { i64, [0 x i64] }*
  %_ind706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind706
  %_ind707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind707
  %_raw_array708 = call i64* @oat_alloc_array(i64 2)
  %_array709 = bitcast i64* %_raw_array708 to { i64, [0 x i64] }*
  %_ind710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array709, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind710
  %_ind711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array709, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind711
  %_ind712 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array703, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array705, { i64, [0 x i64] }** %_ind712
  %_ind713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array703, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array709, { i64, [0 x i64] }** %_ind713
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array703, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local714 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr715 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local714, i32 0, i32 1, i32 1
  %_elem716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr715
  %_ptr717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem716, i32 0, i32 1, i32 1
  %_elem718 = load i64, i64* %_ptr717
  ret i64 %_elem718
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
