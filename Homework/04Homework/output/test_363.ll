; generated from: hw4programs/msort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2965, { i64, [0 x i8*] }* %_argv2966) {
  %_argc2967 = alloca i64
  store i64 %_argc2965, i64* %_argc2967
  %_argv2968 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2966, { i64, [0 x i8*] }** %_argv2968
  %i = alloca i64
  store i64 0, i64* %i
  %_raw_array2969 = call i64* @oat_alloc_array(i64 10)
  %_array2970 = bitcast i64* %_raw_array2969 to { i64, [0 x i64] }*
  %_ind2971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind2971
  %_ind2972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind2972
  %_ind2973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind2973
  %_ind2974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind2974
  %_ind2975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind2975
  %_ind2976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind2976
  %_ind2977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind2977
  %_ind2978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind2978
  %_ind2979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind2979
  %_ind2980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2970, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind2980
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2970, { i64, [0 x i64] }** %a
  %_local2981 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2982 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2981)
  call void @print_string(i8* %_ret2982)
  %_local2983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local2983, i64 0, i64 9)
  %_raw_array2985 = call i64* @oat_alloc_array(i64 1)
  %_array2986 = bitcast i64* %_raw_array2985 to { i64, [0 x i64] }*
  %_ind2987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2986, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind2987
  %_strr_arr2984 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2986)
  call void @print_string(i8* %_strr_arr2984)
  %_local2988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2989 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2988)
  call void @print_string(i8* %_ret2989)
  %_raw_array2991 = call i64* @oat_alloc_array(i64 1)
  %_array2992 = bitcast i64* %_raw_array2991 to { i64, [0 x i64] }*
  %_ind2993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2992, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind2993
  %_strr_arr2990 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2992)
  call void @print_string(i8* %_strr_arr2990)
  %_local2995 = load i64, i64* %i
  %_fun_return2994 = bitcast i64 %_local2995 to i64
  ret i64 %_fun_return2994
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a2938, i64 %_low2939, i64 %_high2940) {
  %_a2941 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2938, { i64, [0 x i64] }** %_a2941
  %_low2942 = alloca i64
  store i64 %_low2939, i64* %_low2942
  %_high2943 = alloca i64
  store i64 %_high2940, i64* %_high2943
  %mid = alloca i64
  store i64 0, i64* %mid
  %_local2944 = load i64, i64* %_low2942
  %_local2945 = load i64, i64* %_high2943
  %_bop2946 = icmp slt i64 %_local2944, %_local2945
  br i1 %_bop2946, label %_if2962, label %_else2963
_if2962:
  %_local2947 = load i64, i64* %_low2942
  %_local2948 = load i64, i64* %_high2943
  %_bop2949 = add i64 %_local2947, %_local2948
  %_bop2950 = lshr i64 %_bop2949, 1
  store i64 %_bop2950, i64* %mid
  %_local2951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_local2952 = load i64, i64* %_low2942
  %_local2953 = load i64, i64* %mid
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local2951, i64 %_local2952, i64 %_local2953)
  %_local2954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_local2955 = load i64, i64* %mid
  %_bop2956 = add i64 %_local2955, 1
  %_local2957 = load i64, i64* %_high2943
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local2954, i64 %_bop2956, i64 %_local2957)
  %_local2958 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_local2959 = load i64, i64* %_low2942
  %_local2960 = load i64, i64* %_high2943
  %_local2961 = load i64, i64* %mid
  call void @_merge({ i64, [0 x i64] }* %_local2958, i64 %_local2959, i64 %_local2960, i64 %_local2961)
  br label %_fi2964
_else2963:
  br label %_fi2964
_fi2964:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a2830, i64 %_low2831, i64 %_high2832, i64 %_mid2833) {
  %_a2834 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2830, { i64, [0 x i64] }** %_a2834
  %_low2835 = alloca i64
  store i64 %_low2831, i64* %_low2835
  %_high2836 = alloca i64
  store i64 %_high2832, i64* %_high2836
  %_mid2837 = alloca i64
  store i64 %_mid2833, i64* %_mid2837
  %i = alloca i64
  store i64 0, i64* %i
  %j = alloca i64
  store i64 0, i64* %j
  %k = alloca i64
  store i64 0, i64* %k
  %_raw_array2838 = call i64* @oat_alloc_array(i64 50)
  %_array2839 = bitcast i64* %_raw_array2838 to { i64, [0 x i64] }*
  %c = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2839, { i64, [0 x i64] }** %c
  %_local2840 = load i64, i64* %_low2835
  store i64 %_local2840, i64* %i
  %_local2841 = load i64, i64* %_mid2837
  %_bop2842 = add i64 %_local2841, 1
  store i64 %_bop2842, i64* %j
  %_local2843 = load i64, i64* %_low2835
  store i64 %_local2843, i64* %k
  br label %_while2885
_while2885:
  %_local2844 = load i64, i64* %i
  %_local2845 = load i64, i64* %_mid2837
  %_bop2846 = icmp sle i64 %_local2844, %_local2845
  %_local2847 = load i64, i64* %j
  %_local2848 = load i64, i64* %_high2836
  %_bop2849 = icmp sle i64 %_local2847, %_local2848
  %_bop2850 = and i1 %_bop2846, %_bop2849
  br i1 %_bop2850, label %_do2886, label %_elihw2887
_do2886:
  %_local2851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2834
  %_local2852 = load i64, i64* %i
  %_ptr2853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2851, i32 0, i32 1, i64 %_local2852
  %_elem2854 = load i64, i64* %_ptr2853
  %_local2855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2834
  %_local2856 = load i64, i64* %j
  %_ptr2857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2855, i32 0, i32 1, i64 %_local2856
  %_elem2858 = load i64, i64* %_ptr2857
  %_bop2859 = icmp slt i64 %_elem2854, %_elem2858
  br i1 %_bop2859, label %_if2882, label %_else2883
_if2882:
  %_local2860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2834
  %_local2861 = load i64, i64* %i
  %_ptr2862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2860, i32 0, i32 1, i64 %_local2861
  %_elem2863 = load i64, i64* %_ptr2862
  %_local2864 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local2865 = load i64, i64* %k
  %_ind_assign2866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2864, i32 0, i32 1, i64 %_local2865
  store i64 %_elem2863, i64* %_ind_assign2866
  %_local2867 = load i64, i64* %k
  %_bop2868 = add i64 %_local2867, 1
  store i64 %_bop2868, i64* %k
  %_local2869 = load i64, i64* %i
  %_bop2870 = add i64 %_local2869, 1
  store i64 %_bop2870, i64* %i
  br label %_fi2884
_else2883:
  %_local2871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2834
  %_local2872 = load i64, i64* %j
  %_ptr2873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2871, i32 0, i32 1, i64 %_local2872
  %_elem2874 = load i64, i64* %_ptr2873
  %_local2875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local2876 = load i64, i64* %k
  %_ind_assign2877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2875, i32 0, i32 1, i64 %_local2876
  store i64 %_elem2874, i64* %_ind_assign2877
  %_local2878 = load i64, i64* %k
  %_bop2879 = add i64 %_local2878, 1
  store i64 %_bop2879, i64* %k
  %_local2880 = load i64, i64* %j
  %_bop2881 = add i64 %_local2880, 1
  store i64 %_bop2881, i64* %j
  br label %_fi2884
_fi2884:
  br label %_while2885
_elihw2887:
  br label %_while2902
_while2902:
  %_local2888 = load i64, i64* %i
  %_local2889 = load i64, i64* %_mid2837
  %_bop2890 = icmp sle i64 %_local2888, %_local2889
  br i1 %_bop2890, label %_do2903, label %_elihw2904
_do2903:
  %_local2891 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2834
  %_local2892 = load i64, i64* %i
  %_ptr2893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2891, i32 0, i32 1, i64 %_local2892
  %_elem2894 = load i64, i64* %_ptr2893
  %_local2895 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local2896 = load i64, i64* %k
  %_ind_assign2897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2895, i32 0, i32 1, i64 %_local2896
  store i64 %_elem2894, i64* %_ind_assign2897
  %_local2898 = load i64, i64* %k
  %_bop2899 = add i64 %_local2898, 1
  store i64 %_bop2899, i64* %k
  %_local2900 = load i64, i64* %i
  %_bop2901 = add i64 %_local2900, 1
  store i64 %_bop2901, i64* %i
  br label %_while2902
_elihw2904:
  br label %_while2919
_while2919:
  %_local2905 = load i64, i64* %j
  %_local2906 = load i64, i64* %_high2836
  %_bop2907 = icmp sle i64 %_local2905, %_local2906
  br i1 %_bop2907, label %_do2920, label %_elihw2921
_do2920:
  %_local2908 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2834
  %_local2909 = load i64, i64* %j
  %_ptr2910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2908, i32 0, i32 1, i64 %_local2909
  %_elem2911 = load i64, i64* %_ptr2910
  %_local2912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local2913 = load i64, i64* %k
  %_ind_assign2914 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2912, i32 0, i32 1, i64 %_local2913
  store i64 %_elem2911, i64* %_ind_assign2914
  %_local2915 = load i64, i64* %k
  %_bop2916 = add i64 %_local2915, 1
  store i64 %_bop2916, i64* %k
  %_local2917 = load i64, i64* %j
  %_bop2918 = add i64 %_local2917, 1
  store i64 %_bop2918, i64* %j
  br label %_while2919
_elihw2921:
  %_local2922 = load i64, i64* %_low2835
  store i64 %_local2922, i64* %i
  br label %_while2935
_while2935:
  %_local2923 = load i64, i64* %i
  %_local2924 = load i64, i64* %k
  %_bop2925 = icmp slt i64 %_local2923, %_local2924
  br i1 %_bop2925, label %_do2936, label %_elihw2937
_do2936:
  %_local2926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local2927 = load i64, i64* %i
  %_ptr2928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2926, i32 0, i32 1, i64 %_local2927
  %_elem2929 = load i64, i64* %_ptr2928
  %_local2930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2834
  %_local2931 = load i64, i64* %i
  %_ind_assign2932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2930, i32 0, i32 1, i64 %_local2931
  store i64 %_elem2929, i64* %_ind_assign2932
  %_local2933 = load i64, i64* %i
  %_bop2934 = add i64 %_local2933, 1
  store i64 %_bop2934, i64* %i
  br label %_while2935
_elihw2937:
  ret void
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
