; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc410, { i64, [0 x i8*] }* %_argv411) {
  %argc = alloca i64
  store i64 %_argc410, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv411, { i64, [0 x i8*] }** %argv
  %_raw_array412 = call i64* @oat_alloc_array(i64 2)
  %_array413 = bitcast i64* %_raw_array412 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array414 = call i64* @oat_alloc_array(i64 2)
  %_array415 = bitcast i64* %_raw_array414 to { i64, [0 x i64] }*
  %_ind416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array415, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind416
  %_ind417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array415, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind417
  %_raw_array418 = call i64* @oat_alloc_array(i64 2)
  %_array419 = bitcast i64* %_raw_array418 to { i64, [0 x i64] }*
  %_ind420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array419, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind420
  %_ind421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array419, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind421
  %_ind422 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array413, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array415, { i64, [0 x i64] }** %_ind422
  %_ind423 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array413, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array419, { i64, [0 x i64] }** %_ind423
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array413, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local424 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_ptr425 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local424, i32 0, i32 1, i32 0
  %_elem426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr425
  %_ptr427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem426, i32 0, i32 1, i32 1
  %_elem428 = load i64, i64* %_ptr427
  ret i64 %_elem428
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
