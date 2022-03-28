; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc632, { i64, [0 x i8*] }* %_argv633) {
  %argc = alloca i64
  store i64 %_argc632, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv633, { i64, [0 x i8*] }** %argv
  %_raw_array634 = call i64* @oat_alloc_array(i64 2)
  %_array635 = bitcast i64* %_raw_array634 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array636 = call i64* @oat_alloc_array(i64 2)
  %_array637 = bitcast i64* %_raw_array636 to { i64, [0 x i64] }*
  %_ind638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array637, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind638
  %_ind639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array637, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind639
  %_raw_array640 = call i64* @oat_alloc_array(i64 2)
  %_array641 = bitcast i64* %_raw_array640 to { i64, [0 x i64] }*
  %_ind642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind642
  %_ind643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind643
  %_ind644 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array635, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array637, { i64, [0 x i64] }** %_ind644
  %_ind645 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array635, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array641, { i64, [0 x i64] }** %_ind645
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array635, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local646 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local646, i32 0, i32 1, i32 0
  %_elem648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr647
  %_ptr649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem648, i32 0, i32 1, i32 0
  %_elem650 = load i64, i64* %_ptr649
  ret i64 %_elem650
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
