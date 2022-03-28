; generated from: hw4programs/qsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @quick_sort({ i64, [0 x i64] }* %_a2721, i64 %_l2722, i64 %_r2723) {
  %_a2724 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2721, { i64, [0 x i64] }** %_a2724
  %_l2725 = alloca i64
  store i64 %_l2722, i64* %_l2725
  %_r2726 = alloca i64
  store i64 %_r2723, i64* %_r2726
  %j = alloca i64
  store i64 0, i64* %j
  %_local2727 = load i64, i64* %_l2725
  %_local2728 = load i64, i64* %_r2726
  %_bop2729 = icmp slt i64 %_local2727, %_local2728
  br i1 %_bop2729, label %_if2742, label %_else2743
_if2742:
  %_local2730 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2724
  %_local2731 = load i64, i64* %_l2725
  %_local2732 = load i64, i64* %_r2726
  %_ret2733 = call i64 @_partition({ i64, [0 x i64] }* %_local2730, i64 %_local2731, i64 %_local2732)
  store i64 %_ret2733, i64* %j
  %_local2734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2724
  %_local2735 = load i64, i64* %_l2725
  %_local2736 = load i64, i64* %j
  %_bop2737 = sub i64 %_local2736, 1
  call void @_quick_sort({ i64, [0 x i64] }* %_local2734, i64 %_local2735, i64 %_bop2737)
  %_local2738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2724
  %_local2739 = load i64, i64* %j
  %_bop2740 = add i64 %_local2739, 1
  %_local2741 = load i64, i64* %_r2726
  call void @_quick_sort({ i64, [0 x i64] }* %_local2738, i64 %_bop2740, i64 %_local2741)
  br label %_fi2744
_else2743:
  br label %_fi2744
_fi2744:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %_a2630, i64 %_l2631, i64 %_r2632) {
  %_a2633 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2630, { i64, [0 x i64] }** %_a2633
  %_l2634 = alloca i64
  store i64 %_l2631, i64* %_l2634
  %_r2635 = alloca i64
  store i64 %_r2632, i64* %_r2635
  %_local2636 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2637 = load i64, i64* %_l2634
  %_ptr2638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2636, i32 0, i32 1, i64 %_local2637
  %_elem2639 = load i64, i64* %_ptr2638
  %pivot = alloca i64
  store i64 %_elem2639, i64* %pivot
  %_local2640 = load i64, i64* %_l2634
  %i = alloca i64
  store i64 %_local2640, i64* %i
  %_local2641 = load i64, i64* %_r2635
  %_bop2642 = add i64 %_local2641, 1
  %j = alloca i64
  store i64 %_bop2642, i64* %j
  %t = alloca i64
  store i64 0, i64* %t
  %done = alloca i64
  store i64 0, i64* %done
  br label %_while2701
_while2701:
  %_local2643 = load i64, i64* %done
  %_bop2644 = icmp eq i64 %_local2643, 0
  br i1 %_bop2644, label %_do2702, label %_elihw2703
_do2702:
  %_local2645 = load i64, i64* %i
  %_bop2646 = add i64 %_local2645, 1
  store i64 %_bop2646, i64* %i
  br label %_while2659
_while2659:
  %_local2647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2648 = load i64, i64* %i
  %_ptr2649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2647, i32 0, i32 1, i64 %_local2648
  %_elem2650 = load i64, i64* %_ptr2649
  %_local2651 = load i64, i64* %pivot
  %_bop2652 = icmp sle i64 %_elem2650, %_local2651
  %_local2653 = load i64, i64* %i
  %_local2654 = load i64, i64* %_r2635
  %_bop2655 = icmp sle i64 %_local2653, %_local2654
  %_bop2656 = and i1 %_bop2652, %_bop2655
  br i1 %_bop2656, label %_do2660, label %_elihw2661
_do2660:
  %_local2657 = load i64, i64* %i
  %_bop2658 = add i64 %_local2657, 1
  store i64 %_bop2658, i64* %i
  br label %_while2659
_elihw2661:
  %_local2662 = load i64, i64* %j
  %_bop2663 = sub i64 %_local2662, 1
  store i64 %_bop2663, i64* %j
  br label %_while2672
_while2672:
  %_local2664 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2665 = load i64, i64* %j
  %_ptr2666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2664, i32 0, i32 1, i64 %_local2665
  %_elem2667 = load i64, i64* %_ptr2666
  %_local2668 = load i64, i64* %pivot
  %_bop2669 = icmp sgt i64 %_elem2667, %_local2668
  br i1 %_bop2669, label %_do2673, label %_elihw2674
_do2673:
  %_local2670 = load i64, i64* %j
  %_bop2671 = sub i64 %_local2670, 1
  store i64 %_bop2671, i64* %j
  br label %_while2672
_elihw2674:
  %_local2675 = load i64, i64* %i
  %_local2676 = load i64, i64* %j
  %_bop2677 = icmp sge i64 %_local2675, %_local2676
  br i1 %_bop2677, label %_if2678, label %_else2679
_if2678:
  store i64 1, i64* %done
  br label %_fi2680
_else2679:
  br label %_fi2680
_fi2680:
  %_local2681 = load i64, i64* %done
  %_bop2682 = icmp eq i64 %_local2681, 0
  br i1 %_bop2682, label %_if2698, label %_else2699
_if2698:
  %_local2683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2684 = load i64, i64* %i
  %_ptr2685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2683, i32 0, i32 1, i64 %_local2684
  %_elem2686 = load i64, i64* %_ptr2685
  store i64 %_elem2686, i64* %t
  %_local2687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2688 = load i64, i64* %j
  %_ptr2689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2687, i32 0, i32 1, i64 %_local2688
  %_elem2690 = load i64, i64* %_ptr2689
  %_local2691 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2692 = load i64, i64* %i
  %_ind_assign2693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2691, i32 0, i32 1, i64 %_local2692
  store i64 %_elem2690, i64* %_ind_assign2693
  %_local2694 = load i64, i64* %t
  %_local2695 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2696 = load i64, i64* %j
  %_ind_assign2697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2695, i32 0, i32 1, i64 %_local2696
  store i64 %_local2694, i64* %_ind_assign2697
  br label %_fi2700
_else2699:
  br label %_fi2700
_fi2700:
  br label %_while2701
_elihw2703:
  %_local2704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2705 = load i64, i64* %_l2634
  %_ptr2706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2704, i32 0, i32 1, i64 %_local2705
  %_elem2707 = load i64, i64* %_ptr2706
  store i64 %_elem2707, i64* %t
  %_local2708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2709 = load i64, i64* %j
  %_ptr2710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2708, i32 0, i32 1, i64 %_local2709
  %_elem2711 = load i64, i64* %_ptr2710
  %_local2712 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2713 = load i64, i64* %_l2634
  %_ind_assign2714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2712, i32 0, i32 1, i64 %_local2713
  store i64 %_elem2711, i64* %_ind_assign2714
  %_local2715 = load i64, i64* %t
  %_local2716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2633
  %_local2717 = load i64, i64* %j
  %_ind_assign2718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2716, i32 0, i32 1, i64 %_local2717
  store i64 %_local2715, i64* %_ind_assign2718
  %_local2720 = load i64, i64* %j
  %_fun_return2719 = bitcast i64 %_local2720 to i64
  ret i64 %_fun_return2719
}

define i64 @program(i64 %_argc2609, { i64, [0 x i8*] }* %_argv2610) {
  %_argc2611 = alloca i64
  store i64 %_argc2609, i64* %_argc2611
  %_argv2612 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2610, { i64, [0 x i8*] }** %_argv2612
  %_raw_array2613 = call i64* @oat_alloc_array(i64 9)
  %_array2614 = bitcast i64* %_raw_array2613 to { i64, [0 x i64] }*
  %_ind2615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind2615
  %_ind2616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2616
  %_ind2617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind2617
  %_ind2618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind2618
  %_ind2619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind2619
  %_ind2620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind2620
  %_ind2621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind2621
  %_ind2622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2622
  %_ind2623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2614, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind2623
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2614, { i64, [0 x i64] }** %a
  %_local2624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2625 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2624)
  call void @print_string(i8* %_ret2625)
  %_local2626 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_quick_sort({ i64, [0 x i64] }* %_local2626, i64 0, i64 8)
  %_local2627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2628 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2627)
  call void @print_string(i8* %_ret2628)
  %_fun_return2629 = bitcast i64 255 to i64
  ret i64 %_fun_return2629
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
