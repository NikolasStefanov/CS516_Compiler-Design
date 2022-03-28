; generated from: hw4programs/lib15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i8* @sub(i8* %_str2557, i64 %_start2558, i64 %_len2559) {
  %_str2560 = alloca i8*
  store i8* %_str2557, i8** %_str2560
  %_start2561 = alloca i64
  store i64 %_start2558, i64* %_start2561
  %_len2562 = alloca i64
  store i64 %_len2559, i64* %_len2562
  %_local2563 = load i8*, i8** %_str2560
  %_ret2564 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2563)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2564, { i64, [0 x i64] }** %arr
  %_local2565 = load i64, i64* %_len2562
  %_raw_array2566 = call i64* @oat_alloc_array(i64 %_local2565)
  %_array2567 = bitcast i64* %_raw_array2566 to { i64, [0 x i64] }*
  %r = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2567, { i64, [0 x i64] }** %r
  %_i2568 = alloca i64
  store i64 0, i64* %_i2568
  br label %_while2583
_while2583:
  %_local2569 = load i64, i64* %_i2568
  %_local2570 = load i64, i64* %_len2562
  %_bop2571 = icmp slt i64 %_local2569, %_local2570
  br i1 %_bop2571, label %_do2584, label %_elihw2585
_do2584:
  %_local2572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2573 = load i64, i64* %_i2568
  %_local2574 = load i64, i64* %_start2561
  %_bop2575 = add i64 %_local2573, %_local2574
  %_ptr2576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2572, i32 0, i32 1, i64 %_bop2575
  %_elem2577 = load i64, i64* %_ptr2576
  %_local2578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %r
  %_local2579 = load i64, i64* %_i2568
  %_ind_assign2580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2578, i32 0, i32 1, i64 %_local2579
  store i64 %_elem2577, i64* %_ind_assign2580
  %_local2581 = load i64, i64* %_i2568
  %_bop2582 = add i64 %_local2581, 1
  store i64 %_bop2582, i64* %_i2568
  br label %_while2583
_elihw2585:
  %_local2587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %r
  %_ret2588 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2587)
  %_fun_return2586 = bitcast i8* %_ret2588 to i8*
  ret i8* %_fun_return2586
}

define i64 @program(i64 %_argc2548, { i64, [0 x i8*] }* %_argv2549) {
  %_argc2550 = alloca i64
  store i64 %_argc2548, i64* %_argc2550
  %_argv2551 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2549, { i64, [0 x i8*] }** %_argv2551
  %_local2552 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2551
  %_ptr2553 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_local2552, i32 0, i32 1, i32 1
  %_elem2554 = load i8*, i8** %_ptr2553
  %_ret2555 = call i8* @_sub(i8* %_elem2554, i64 3, i64 5)
  call void @print_string(i8* %_ret2555)
  %_fun_return2556 = bitcast i64 0 to i64
  ret i64 %_fun_return2556
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
