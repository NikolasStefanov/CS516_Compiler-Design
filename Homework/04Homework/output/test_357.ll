; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2483, { i64, [0 x i8*] }* %_argv2484) {
  %_argc2485 = alloca i64
  store i64 %_argc2483, i64* %_argc2485
  %_argv2486 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2484, { i64, [0 x i8*] }** %_argv2486
  %_raw_array2488 = call i64* @oat_alloc_array(i64 10)
  %_array2489 = bitcast i64* %_raw_array2488 to { i64, [0 x i64] }*
  %_ind2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 0
  store i64 49, i64* %_ind2490
  %_ind2491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 1
  store i64 50, i64* %_ind2491
  %_ind2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 2
  store i64 51, i64* %_ind2492
  %_ind2493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 3
  store i64 52, i64* %_ind2493
  %_ind2494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 4
  store i64 57, i64* %_ind2494
  %_ind2495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 5
  store i64 54, i64* %_ind2495
  %_ind2496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 6
  store i64 55, i64* %_ind2496
  %_ind2497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 7
  store i64 56, i64* %_ind2497
  %_ind2498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 8
  store i64 57, i64* %_ind2498
  %_ind2499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 9
  store i64 48, i64* %_ind2499
  %_strr_arr2487 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2489)
  %_ret2500 = call { i64, [0 x i64] }* @array_of_string(i8* %_strr_arr2487)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2500, { i64, [0 x i64] }** %arr
  %sum = alloca i64
  store i64 0, i64* %sum
  %_i2501 = alloca i64
  store i64 0, i64* %_i2501
  br label %_while2510
_while2510:
  %_local2502 = load i64, i64* %_i2501
  %_bop2503 = icmp slt i64 %_local2502, 10
  br i1 %_bop2503, label %_do2511, label %_elihw2512
_do2511:
  %_local2504 = load i64, i64* %_i2501
  %_local2505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2506 = load i64, i64* %_i2501
  %_ind_assign2507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2505, i32 0, i32 1, i64 %_local2506
  store i64 %_local2504, i64* %_ind_assign2507
  %_local2508 = load i64, i64* %_i2501
  %_bop2509 = add i64 %_local2508, 1
  store i64 %_bop2509, i64* %_i2501
  br label %_while2510
_elihw2512:
  %_i2513 = alloca i64
  store i64 0, i64* %_i2513
  br label %_while2524
_while2524:
  %_local2514 = load i64, i64* %_i2513
  %_bop2515 = icmp slt i64 %_local2514, 10
  br i1 %_bop2515, label %_do2525, label %_elihw2526
_do2525:
  %_local2516 = load i64, i64* %sum
  %_local2517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2518 = load i64, i64* %_i2513
  %_ptr2519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2517, i32 0, i32 1, i64 %_local2518
  %_elem2520 = load i64, i64* %_ptr2519
  %_bop2521 = add i64 %_local2516, %_elem2520
  store i64 %_bop2521, i64* %sum
  %_local2522 = load i64, i64* %_i2513
  %_bop2523 = add i64 %_local2522, 1
  store i64 %_bop2523, i64* %_i2513
  br label %_while2524
_elihw2526:
  %_local2528 = load i64, i64* %sum
  %_fun_return2527 = bitcast i64 %_local2528 to i64
  ret i64 %_fun_return2527
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
