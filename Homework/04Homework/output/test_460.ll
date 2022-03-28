; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2502, { i64, [0 x i8*] }* %_argv2503) {
  %_argc2504 = alloca i64
  store i64 %_argc2502, i64* %_argc2504
  %_argv2505 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2503, { i64, [0 x i8*] }** %_argv2505
  %_raw_array2506 = call i64* @oat_alloc_array(i64 5)
  %_array2507 = bitcast i64* %_raw_array2506 to { i64, [0 x i64] }*
  %_ind2508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2507, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2508
  %_ind2509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2507, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2509
  %_ind2510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2507, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2510
  %_ind2511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2507, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2511
  %_ind2512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2507, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2512
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2507, { i64, [0 x i64] }** %arr1
  %_local2513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ret2514 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2513)
  %str = alloca i8*
  store i8* %_ret2514, i8** %str
  %_local2515 = load i8*, i8** %str
  %_ret2516 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2515)
  %arr2 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2516, { i64, [0 x i64] }** %arr2
  %s = alloca i64
  store i64 0, i64* %s
  %_i2517 = alloca i64
  store i64 0, i64* %_i2517
  br label %_while2528
_while2528:
  %_local2518 = load i64, i64* %_i2517
  %_bop2519 = icmp slt i64 %_local2518, 5
  br i1 %_bop2519, label %_do2529, label %_elihw2530
_do2529:
  %_local2520 = load i64, i64* %s
  %_local2521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_local2522 = load i64, i64* %_i2517
  %_ptr2523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2521, i32 0, i32 1, i64 %_local2522
  %_elem2524 = load i64, i64* %_ptr2523
  %_bop2525 = add i64 %_local2520, %_elem2524
  store i64 %_bop2525, i64* %s
  %_local2526 = load i64, i64* %_i2517
  %_bop2527 = add i64 %_local2526, 1
  store i64 %_bop2527, i64* %_i2517
  br label %_while2528
_elihw2530:
  %_local2531 = load i64, i64* %s
  call void @print_int(i64 %_local2531)
  %_local2533 = load i64, i64* %s
  %_fun_return2532 = bitcast i64 %_local2533 to i64
  ret i64 %_fun_return2532
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
