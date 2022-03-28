; generated from: hw4programs/bsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @bubble_sort({ i64, [0 x i64] }* %_numbers2900, i64 %_array_size2901) {
  %_numbers2902 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_numbers2900, { i64, [0 x i64] }** %_numbers2902
  %_array_size2903 = alloca i64
  store i64 %_array_size2901, i64* %_array_size2903
  %temp = alloca i64
  store i64 0, i64* %temp
  %_local2904 = load i64, i64* %_array_size2903
  %_bop2905 = sub i64 %_local2904, 1
  %i = alloca i64
  store i64 %_bop2905, i64* %i
  br label %_while2949
_while2949:
  %_local2906 = load i64, i64* %i
  %_bop2907 = icmp sgt i64 %_local2906, 0
  br i1 %_bop2907, label %_do2950, label %_elihw2951
_do2950:
  %_j2908 = alloca i64
  store i64 1, i64* %_j2908
  br label %_while2944
_while2944:
  %_local2909 = load i64, i64* %_j2908
  %_local2910 = load i64, i64* %i
  %_bop2911 = icmp sle i64 %_local2909, %_local2910
  br i1 %_bop2911, label %_do2945, label %_elihw2946
_do2945:
  %_local2912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2902
  %_local2913 = load i64, i64* %_j2908
  %_bop2914 = sub i64 %_local2913, 1
  %_ptr2915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2912, i32 0, i32 1, i64 %_bop2914
  %_elem2916 = load i64, i64* %_ptr2915
  %_local2917 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2902
  %_local2918 = load i64, i64* %i
  %_ptr2919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2917, i32 0, i32 1, i64 %_local2918
  %_elem2920 = load i64, i64* %_ptr2919
  %_bop2921 = icmp sgt i64 %_elem2916, %_elem2920
  br i1 %_bop2921, label %_if2939, label %_else2940
_if2939:
  %_local2922 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2902
  %_local2923 = load i64, i64* %_j2908
  %_bop2924 = sub i64 %_local2923, 1
  %_ptr2925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2922, i32 0, i32 1, i64 %_bop2924
  %_elem2926 = load i64, i64* %_ptr2925
  store i64 %_elem2926, i64* %temp
  %_local2927 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2902
  %_local2928 = load i64, i64* %i
  %_ptr2929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2927, i32 0, i32 1, i64 %_local2928
  %_elem2930 = load i64, i64* %_ptr2929
  %_local2931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2902
  %_local2932 = load i64, i64* %_j2908
  %_bop2933 = sub i64 %_local2932, 1
  %_ind_assign2934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2931, i32 0, i32 1, i64 %_bop2933
  store i64 %_elem2930, i64* %_ind_assign2934
  %_local2935 = load i64, i64* %temp
  %_local2936 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2902
  %_local2937 = load i64, i64* %i
  %_ind_assign2938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2936, i32 0, i32 1, i64 %_local2937
  store i64 %_local2935, i64* %_ind_assign2938
  br label %_fi2941
_else2940:
  br label %_fi2941
_fi2941:
  %_local2942 = load i64, i64* %_j2908
  %_bop2943 = add i64 %_local2942, 1
  store i64 %_bop2943, i64* %_j2908
  br label %_while2944
_elihw2946:
  %_local2947 = load i64, i64* %i
  %_bop2948 = sub i64 %_local2947, 1
  store i64 %_bop2948, i64* %i
  br label %_while2949
_elihw2951:
  ret void
}

define i64 @program(i64 %_argc2867, { i64, [0 x i8*] }* %_argv2868) {
  %_argc2869 = alloca i64
  store i64 %_argc2867, i64* %_argc2869
  %_argv2870 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2868, { i64, [0 x i8*] }** %_argv2870
  %_raw_array2871 = call i64* @oat_alloc_array(i64 8)
  %_array2872 = bitcast i64* %_raw_array2871 to { i64, [0 x i64] }*
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2872, { i64, [0 x i64] }** %a
  %_local2873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2873, i32 0, i32 1, i32 0
  store i64 121, i64* %_ind_assign2874
  %_local2875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2875, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind_assign2876
  %_local2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2877, i32 0, i32 1, i32 2
  store i64 120, i64* %_ind_assign2878
  %_local2879 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2879, i32 0, i32 1, i32 3
  store i64 111, i64* %_ind_assign2880
  %_local2881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2881, i32 0, i32 1, i32 4
  store i64 116, i64* %_ind_assign2882
  %_local2883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2883, i32 0, i32 1, i32 5
  store i64 110, i64* %_ind_assign2884
  %_local2885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2885, i32 0, i32 1, i32 6
  store i64 117, i64* %_ind_assign2886
  %_local2887 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ind_assign2888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2887, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind_assign2888
  %_local2889 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2890 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2889)
  call void @print_string(i8* %_ret2890)
  %_raw_array2892 = call i64* @oat_alloc_array(i64 1)
  %_array2893 = bitcast i64* %_raw_array2892 to { i64, [0 x i64] }*
  %_ind2894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2893, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind2894
  %_strr_arr2891 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2893)
  call void @print_string(i8* %_strr_arr2891)
  %_local2895 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_bubble_sort({ i64, [0 x i64] }* %_local2895, i64 8)
  %_local2896 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2897 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2896)
  call void @print_string(i8* %_ret2897)
  %_uop2899 = mul i64 1, -1
  %_fun_return2898 = bitcast i64 %_uop2899 to i64
  ret i64 %_fun_return2898
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
