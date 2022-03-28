; generated from: hw4programs/bsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @bubble_sort({ i64, [0 x i64] }* %_numbers2778, i64 %_array_size2779) {
  %_numbers2780 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_numbers2778, { i64, [0 x i64] }** %_numbers2780
  %_array_size2781 = alloca i64
  store i64 %_array_size2779, i64* %_array_size2781
  %temp = alloca i64
  store i64 0, i64* %temp
  %_local2782 = load i64, i64* %_array_size2781
  %_bop2783 = sub i64 %_local2782, 1
  %i = alloca i64
  store i64 %_bop2783, i64* %i
  br label %_while2827
_while2827:
  %_local2784 = load i64, i64* %i
  %_bop2785 = icmp sgt i64 %_local2784, 0
  br i1 %_bop2785, label %_do2828, label %_elihw2829
_do2828:
  %_j2786 = alloca i64
  store i64 1, i64* %_j2786
  br label %_while2822
_while2822:
  %_local2787 = load i64, i64* %_j2786
  %_local2788 = load i64, i64* %i
  %_bop2789 = icmp sle i64 %_local2787, %_local2788
  br i1 %_bop2789, label %_do2823, label %_elihw2824
_do2823:
  %_local2790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2780
  %_local2791 = load i64, i64* %_j2786
  %_bop2792 = sub i64 %_local2791, 1
  %_ptr2793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2790, i32 0, i32 1, i64 %_bop2792
  %_elem2794 = load i64, i64* %_ptr2793
  %_local2795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2780
  %_local2796 = load i64, i64* %i
  %_ptr2797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2795, i32 0, i32 1, i64 %_local2796
  %_elem2798 = load i64, i64* %_ptr2797
  %_bop2799 = icmp sgt i64 %_elem2794, %_elem2798
  br i1 %_bop2799, label %_if2817, label %_else2818
_if2817:
  %_local2800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2780
  %_local2801 = load i64, i64* %_j2786
  %_bop2802 = sub i64 %_local2801, 1
  %_ptr2803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2800, i32 0, i32 1, i64 %_bop2802
  %_elem2804 = load i64, i64* %_ptr2803
  store i64 %_elem2804, i64* %temp
  %_local2805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2780
  %_local2806 = load i64, i64* %i
  %_ptr2807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2805, i32 0, i32 1, i64 %_local2806
  %_elem2808 = load i64, i64* %_ptr2807
  %_local2809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2780
  %_local2810 = load i64, i64* %_j2786
  %_bop2811 = sub i64 %_local2810, 1
  %_ind_assign2812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2809, i32 0, i32 1, i64 %_bop2811
  store i64 %_elem2808, i64* %_ind_assign2812
  %_local2813 = load i64, i64* %temp
  %_local2814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2780
  %_local2815 = load i64, i64* %i
  %_ind_assign2816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2814, i32 0, i32 1, i64 %_local2815
  store i64 %_local2813, i64* %_ind_assign2816
  br label %_fi2819
_else2818:
  br label %_fi2819
_fi2819:
  %_local2820 = load i64, i64* %_j2786
  %_bop2821 = add i64 %_local2820, 1
  store i64 %_bop2821, i64* %_j2786
  br label %_while2822
_elihw2824:
  %_local2825 = load i64, i64* %i
  %_bop2826 = sub i64 %_local2825, 1
  store i64 %_bop2826, i64* %i
  br label %_while2827
_elihw2829:
  ret void
}

define i64 @program(i64 %_argc2745, { i64, [0 x i8*] }* %_argv2746) {
  %_argc2747 = alloca i64
  store i64 %_argc2745, i64* %_argc2747
  %_argv2748 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2746, { i64, [0 x i8*] }** %_argv2748
  %_raw_array2749 = call i64* @oat_alloc_array(i64 8)
  %_array2750 = bitcast i64* %_raw_array2749 to { i64, [0 x i64] }*
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2750, { i64, [0 x i64] }** %a
  %_local2751 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2751, i32 0, i32 1, i32 0
  store i64 121, i64* %_ind_assign2752
  %_local2753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2753, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind_assign2754
  %_local2755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2755, i32 0, i32 1, i32 2
  store i64 120, i64* %_ind_assign2756
  %_local2757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2757, i32 0, i32 1, i32 3
  store i64 111, i64* %_ind_assign2758
  %_local2759 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2759, i32 0, i32 1, i32 4
  store i64 116, i64* %_ind_assign2760
  %_local2761 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2761, i32 0, i32 1, i32 5
  store i64 110, i64* %_ind_assign2762
  %_local2763 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2763, i32 0, i32 1, i32 6
  store i64 117, i64* %_ind_assign2764
  %_local2765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2765, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind_assign2766
  %_local2767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2768 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2767)
  call void @print_string(i8* %_ret2768)
  %_raw_array2770 = call i64* @oat_alloc_array(i64 1)
  %_array2771 = bitcast i64* %_raw_array2770 to { i64, [0 x i64] }*
  %_ind2772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2771, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind2772
  %_strr_arr2769 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2771)
  call void @print_string(i8* %_strr_arr2769)
  %_local2773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_bubble_sort({ i64, [0 x i64] }* %_local2773, i64 8)
  %_local2774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2775 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2774)
  call void @print_string(i8* %_ret2775)
  %_uop2777 = mul i64 1, -1
  %_fun_return2776 = bitcast i64 %_uop2777 to i64
  ret i64 %_fun_return2776
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
