; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2534, { i64, [0 x i8*] }* %_argv2535) {
  %_argc2536 = alloca i64
  store i64 %_argc2534, i64* %_argc2536
  %_argv2537 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2535, { i64, [0 x i8*] }** %_argv2537
  %_raw_array2538 = call i64* @oat_alloc_array(i64 5)
  %_array2539 = bitcast i64* %_raw_array2538 to { i64, [0 x i64] }*
  %_ind2540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2539, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2540
  %_ind2541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2539, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2541
  %_ind2542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2539, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2542
  %_ind2543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2539, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2543
  %_ind2544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2539, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2544
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2539, { i64, [0 x i64] }** %arr1
  %_local2545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ret2546 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2545)
  %str = alloca i8*
  store i8* %_ret2546, i8** %str
  %_local2547 = load i8*, i8** %str
  %_ret2548 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2547)
  %arr2 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2548, { i64, [0 x i64] }** %arr2
  %s = alloca i64
  store i64 0, i64* %s
  %_i2549 = alloca i64
  store i64 0, i64* %_i2549
  br label %_while2560
_while2560:
  %_local2550 = load i64, i64* %_i2549
  %_bop2551 = icmp slt i64 %_local2550, 5
  br i1 %_bop2551, label %_do2561, label %_elihw2562
_do2561:
  %_local2552 = load i64, i64* %s
  %_local2553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_local2554 = load i64, i64* %_i2549
  %_ptr2555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2553, i32 0, i32 1, i64 %_local2554
  %_elem2556 = load i64, i64* %_ptr2555
  %_bop2557 = add i64 %_local2552, %_elem2556
  store i64 %_bop2557, i64* %s
  %_local2558 = load i64, i64* %_i2549
  %_bop2559 = add i64 %_local2558, 1
  store i64 %_bop2559, i64* %_i2549
  br label %_while2560
_elihw2562:
  %_local2564 = load i64, i64* %s
  %_fun_return2563 = bitcast i64 %_local2564 to i64
  ret i64 %_fun_return2563
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
