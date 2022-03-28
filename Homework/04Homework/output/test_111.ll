; generated from: hw4programs/run10.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr742) {
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr742, { i64, [0 x i64] }** %arr
  %_local743 = load { i64, [0 x i64] }, { i64, [0 x i64] }* %arr
  ret { i64, [0 x i64] } %_local743
}

define i64 @program(i64 %_argc719, { i64, [0 x i8*] }* %_argv720) {
  %argc = alloca i64
  store i64 %_argc719, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv720, { i64, [0 x i8*] }** %argv
  %_raw_array721 = call i64* @oat_alloc_array(i64 2)
  %_array722 = bitcast i64* %_raw_array721 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array723 = call i64* @oat_alloc_array(i64 3)
  %_array724 = bitcast i64* %_raw_array723 to { i64, [0 x i64] }*
  %_ind725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array724, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind725
  %_ind726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array724, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind726
  %_ind727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array724, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind727
  %_raw_array728 = call i64* @oat_alloc_array(i64 3)
  %_array729 = bitcast i64* %_raw_array728 to { i64, [0 x i64] }*
  %_ind730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array729, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind730
  %_ind731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array729, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind731
  %_ind732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array729, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind732
  %_ind733 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array722, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array724, { i64, [0 x i64] }** %_ind733
  %_ind734 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array722, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array729, { i64, [0 x i64] }** %_ind734
  %garr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array722, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_local735 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_ptr736 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local735, i32 0, i32 1, i32 1
  %_elem737 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr736
  %_ret738 = call { i64, [0 x i64] }* %_ret738({ i64, [0 x i64] }* %_elem737)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret738, { i64, [0 x i64] }** %arr
  %_local739 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local739, i32 0, i32 1, i32 1
  %_elem741 = load i64, i64* %_ptr740
  ret i64 %_elem741
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
