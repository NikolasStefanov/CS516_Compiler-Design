; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2472, { i64, [0 x i8*] }* %_argv2473) {
  %_argc2474 = alloca i64
  store i64 %_argc2472, i64* %_argc2474
  %_argv2475 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2473, { i64, [0 x i8*] }** %_argv2475
  %_raw_array2477 = call i64* @oat_alloc_array(i64 5)
  %_array2478 = bitcast i64* %_raw_array2477 to { i64, [0 x i64] }*
  %_ind2479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2478, i32 0, i32 1, i32 0
  store i64 104, i64* %_ind2479
  %_ind2480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2478, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind2480
  %_ind2481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2478, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind2481
  %_ind2482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2478, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind2482
  %_ind2483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2478, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind2483
  %_strr_arr2476 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2478)
  %str = alloca i8*
  store i8* %_strr_arr2476, i8** %str
  %_local2484 = load i8*, i8** %str
  %_ret2485 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2484)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2485, { i64, [0 x i64] }** %arr
  %s = alloca i64
  store i64 0, i64* %s
  %_i2486 = alloca i64
  store i64 0, i64* %_i2486
  br label %_while2497
_while2497:
  %_local2487 = load i64, i64* %_i2486
  %_bop2488 = icmp slt i64 %_local2487, 5
  br i1 %_bop2488, label %_do2498, label %_elihw2499
_do2498:
  %_local2489 = load i64, i64* %s
  %_local2490 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2491 = load i64, i64* %_i2486
  %_ptr2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2490, i32 0, i32 1, i64 %_local2491
  %_elem2493 = load i64, i64* %_ptr2492
  %_bop2494 = add i64 %_local2489, %_elem2493
  store i64 %_bop2494, i64* %s
  %_local2495 = load i64, i64* %_i2486
  %_bop2496 = add i64 %_local2495, 1
  store i64 %_bop2496, i64* %_i2486
  br label %_while2497
_elihw2499:
  %_local2501 = load i64, i64* %s
  %_fun_return2500 = bitcast i64 %_local2501 to i64
  ret i64 %_fun_return2500
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
