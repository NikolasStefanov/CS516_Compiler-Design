; generated from: hw4programs/qsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @quick_sort({ i64, [0 x i64] }* %_a2843, i64 %_l2844, i64 %_r2845) {
  %_a2846 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2843, { i64, [0 x i64] }** %_a2846
  %_l2847 = alloca i64
  store i64 %_l2844, i64* %_l2847
  %_r2848 = alloca i64
  store i64 %_r2845, i64* %_r2848
  %j = alloca i64
  store i64 0, i64* %j
  %_local2849 = load i64, i64* %_l2847
  %_local2850 = load i64, i64* %_r2848
  %_bop2851 = icmp slt i64 %_local2849, %_local2850
  br i1 %_bop2851, label %_if2864, label %_else2865
_if2864:
  %_local2852 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2846
  %_local2853 = load i64, i64* %_l2847
  %_local2854 = load i64, i64* %_r2848
  %_ret2855 = call i64 @_partition({ i64, [0 x i64] }* %_local2852, i64 %_local2853, i64 %_local2854)
  store i64 %_ret2855, i64* %j
  %_local2856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2846
  %_local2857 = load i64, i64* %_l2847
  %_local2858 = load i64, i64* %j
  %_bop2859 = sub i64 %_local2858, 1
  call void @_quick_sort({ i64, [0 x i64] }* %_local2856, i64 %_local2857, i64 %_bop2859)
  %_local2860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2846
  %_local2861 = load i64, i64* %j
  %_bop2862 = add i64 %_local2861, 1
  %_local2863 = load i64, i64* %_r2848
  call void @_quick_sort({ i64, [0 x i64] }* %_local2860, i64 %_bop2862, i64 %_local2863)
  br label %_fi2866
_else2865:
  br label %_fi2866
_fi2866:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %_a2752, i64 %_l2753, i64 %_r2754) {
  %_a2755 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2752, { i64, [0 x i64] }** %_a2755
  %_l2756 = alloca i64
  store i64 %_l2753, i64* %_l2756
  %_r2757 = alloca i64
  store i64 %_r2754, i64* %_r2757
  %_local2758 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2759 = load i64, i64* %_l2756
  %_ptr2760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2758, i32 0, i32 1, i64 %_local2759
  %_elem2761 = load i64, i64* %_ptr2760
  %pivot = alloca i64
  store i64 %_elem2761, i64* %pivot
  %_local2762 = load i64, i64* %_l2756
  %i = alloca i64
  store i64 %_local2762, i64* %i
  %_local2763 = load i64, i64* %_r2757
  %_bop2764 = add i64 %_local2763, 1
  %j = alloca i64
  store i64 %_bop2764, i64* %j
  %t = alloca i64
  store i64 0, i64* %t
  %done = alloca i64
  store i64 0, i64* %done
  br label %_while2823
_while2823:
  %_local2765 = load i64, i64* %done
  %_bop2766 = icmp eq i64 %_local2765, 0
  br i1 %_bop2766, label %_do2824, label %_elihw2825
_do2824:
  %_local2767 = load i64, i64* %i
  %_bop2768 = add i64 %_local2767, 1
  store i64 %_bop2768, i64* %i
  br label %_while2781
_while2781:
  %_local2769 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2770 = load i64, i64* %i
  %_ptr2771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2769, i32 0, i32 1, i64 %_local2770
  %_elem2772 = load i64, i64* %_ptr2771
  %_local2773 = load i64, i64* %pivot
  %_bop2774 = icmp sle i64 %_elem2772, %_local2773
  %_local2775 = load i64, i64* %i
  %_local2776 = load i64, i64* %_r2757
  %_bop2777 = icmp sle i64 %_local2775, %_local2776
  %_bop2778 = and i1 %_bop2774, %_bop2777
  br i1 %_bop2778, label %_do2782, label %_elihw2783
_do2782:
  %_local2779 = load i64, i64* %i
  %_bop2780 = add i64 %_local2779, 1
  store i64 %_bop2780, i64* %i
  br label %_while2781
_elihw2783:
  %_local2784 = load i64, i64* %j
  %_bop2785 = sub i64 %_local2784, 1
  store i64 %_bop2785, i64* %j
  br label %_while2794
_while2794:
  %_local2786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2787 = load i64, i64* %j
  %_ptr2788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2786, i32 0, i32 1, i64 %_local2787
  %_elem2789 = load i64, i64* %_ptr2788
  %_local2790 = load i64, i64* %pivot
  %_bop2791 = icmp sgt i64 %_elem2789, %_local2790
  br i1 %_bop2791, label %_do2795, label %_elihw2796
_do2795:
  %_local2792 = load i64, i64* %j
  %_bop2793 = sub i64 %_local2792, 1
  store i64 %_bop2793, i64* %j
  br label %_while2794
_elihw2796:
  %_local2797 = load i64, i64* %i
  %_local2798 = load i64, i64* %j
  %_bop2799 = icmp sge i64 %_local2797, %_local2798
  br i1 %_bop2799, label %_if2800, label %_else2801
_if2800:
  store i64 1, i64* %done
  br label %_fi2802
_else2801:
  br label %_fi2802
_fi2802:
  %_local2803 = load i64, i64* %done
  %_bop2804 = icmp eq i64 %_local2803, 0
  br i1 %_bop2804, label %_if2820, label %_else2821
_if2820:
  %_local2805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2806 = load i64, i64* %i
  %_ptr2807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2805, i32 0, i32 1, i64 %_local2806
  %_elem2808 = load i64, i64* %_ptr2807
  store i64 %_elem2808, i64* %t
  %_local2809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2810 = load i64, i64* %j
  %_ptr2811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2809, i32 0, i32 1, i64 %_local2810
  %_elem2812 = load i64, i64* %_ptr2811
  %_local2813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2814 = load i64, i64* %i
  %_ind_assign2815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2813, i32 0, i32 1, i64 %_local2814
  store i64 %_elem2812, i64* %_ind_assign2815
  %_local2816 = load i64, i64* %t
  %_local2817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2818 = load i64, i64* %j
  %_ind_assign2819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2817, i32 0, i32 1, i64 %_local2818
  store i64 %_local2816, i64* %_ind_assign2819
  br label %_fi2822
_else2821:
  br label %_fi2822
_fi2822:
  br label %_while2823
_elihw2825:
  %_local2826 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2827 = load i64, i64* %_l2756
  %_ptr2828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2826, i32 0, i32 1, i64 %_local2827
  %_elem2829 = load i64, i64* %_ptr2828
  store i64 %_elem2829, i64* %t
  %_local2830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2831 = load i64, i64* %j
  %_ptr2832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2830, i32 0, i32 1, i64 %_local2831
  %_elem2833 = load i64, i64* %_ptr2832
  %_local2834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2835 = load i64, i64* %_l2756
  %_ind_assign2836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2834, i32 0, i32 1, i64 %_local2835
  store i64 %_elem2833, i64* %_ind_assign2836
  %_local2837 = load i64, i64* %t
  %_local2838 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2755
  %_local2839 = load i64, i64* %j
  %_ind_assign2840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2838, i32 0, i32 1, i64 %_local2839
  store i64 %_local2837, i64* %_ind_assign2840
  %_local2842 = load i64, i64* %j
  %_fun_return2841 = bitcast i64 %_local2842 to i64
  ret i64 %_fun_return2841
}

define i64 @program(i64 %_argc2731, { i64, [0 x i8*] }* %_argv2732) {
  %_argc2733 = alloca i64
  store i64 %_argc2731, i64* %_argc2733
  %_argv2734 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2732, { i64, [0 x i8*] }** %_argv2734
  %_raw_array2735 = call i64* @oat_alloc_array(i64 9)
  %_array2736 = bitcast i64* %_raw_array2735 to { i64, [0 x i64] }*
  %_ind2737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind2737
  %_ind2738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2738
  %_ind2739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind2739
  %_ind2740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind2740
  %_ind2741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind2741
  %_ind2742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind2742
  %_ind2743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind2743
  %_ind2744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2744
  %_ind2745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2736, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind2745
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2736, { i64, [0 x i64] }** %a
  %_local2746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2747 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2746)
  call void @print_string(i8* %_ret2747)
  %_local2748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_quick_sort({ i64, [0 x i64] }* %_local2748, i64 0, i64 8)
  %_local2749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2750 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2749)
  call void @print_string(i8* %_ret2750)
  %_fun_return2751 = bitcast i64 255 to i64
  ret i64 %_fun_return2751
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
