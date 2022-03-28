; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2605, { i64, [0 x i8*] }* %_argv2606) {
  %_argc2607 = alloca i64
  store i64 %_argc2605, i64* %_argc2607
  %_argv2608 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2606, { i64, [0 x i8*] }** %_argv2608
  %_raw_array2610 = call i64* @oat_alloc_array(i64 10)
  %_array2611 = bitcast i64* %_raw_array2610 to { i64, [0 x i64] }*
  %_ind2612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 0
  store i64 49, i64* %_ind2612
  %_ind2613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 1
  store i64 50, i64* %_ind2613
  %_ind2614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 2
  store i64 51, i64* %_ind2614
  %_ind2615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 3
  store i64 52, i64* %_ind2615
  %_ind2616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 4
  store i64 57, i64* %_ind2616
  %_ind2617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 5
  store i64 54, i64* %_ind2617
  %_ind2618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 6
  store i64 55, i64* %_ind2618
  %_ind2619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 7
  store i64 56, i64* %_ind2619
  %_ind2620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 8
  store i64 57, i64* %_ind2620
  %_ind2621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2611, i32 0, i32 1, i32 9
  store i64 48, i64* %_ind2621
  %_strr_arr2609 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2611)
  %_ret2622 = call { i64, [0 x i64] }* @array_of_string(i8* %_strr_arr2609)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2622, { i64, [0 x i64] }** %arr
  %sum = alloca i64
  store i64 0, i64* %sum
  %_i2623 = alloca i64
  store i64 0, i64* %_i2623
  br label %_while2632
_while2632:
  %_local2624 = load i64, i64* %_i2623
  %_bop2625 = icmp slt i64 %_local2624, 10
  br i1 %_bop2625, label %_do2633, label %_elihw2634
_do2633:
  %_local2626 = load i64, i64* %_i2623
  %_local2627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2628 = load i64, i64* %_i2623
  %_ind_assign2629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2627, i32 0, i32 1, i64 %_local2628
  store i64 %_local2626, i64* %_ind_assign2629
  %_local2630 = load i64, i64* %_i2623
  %_bop2631 = add i64 %_local2630, 1
  store i64 %_bop2631, i64* %_i2623
  br label %_while2632
_elihw2634:
  %_i2635 = alloca i64
  store i64 0, i64* %_i2635
  br label %_while2646
_while2646:
  %_local2636 = load i64, i64* %_i2635
  %_bop2637 = icmp slt i64 %_local2636, 10
  br i1 %_bop2637, label %_do2647, label %_elihw2648
_do2647:
  %_local2638 = load i64, i64* %sum
  %_local2639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2640 = load i64, i64* %_i2635
  %_ptr2641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2639, i32 0, i32 1, i64 %_local2640
  %_elem2642 = load i64, i64* %_ptr2641
  %_bop2643 = add i64 %_local2638, %_elem2642
  store i64 %_bop2643, i64* %sum
  %_local2644 = load i64, i64* %_i2635
  %_bop2645 = add i64 %_local2644, 1
  store i64 %_bop2645, i64* %_i2635
  br label %_while2646
_elihw2648:
  %_local2650 = load i64, i64* %sum
  %_fun_return2649 = bitcast i64 %_local2650 to i64
  ret i64 %_fun_return2649
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
