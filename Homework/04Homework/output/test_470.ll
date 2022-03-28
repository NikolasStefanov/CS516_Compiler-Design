; generated from: hw4programs/msort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc3087, { i64, [0 x i8*] }* %_argv3088) {
  %_argc3089 = alloca i64
  store i64 %_argc3087, i64* %_argc3089
  %_argv3090 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3088, { i64, [0 x i8*] }** %_argv3090
  %i = alloca i64
  store i64 0, i64* %i
  %_raw_array3091 = call i64* @oat_alloc_array(i64 10)
  %_array3092 = bitcast i64* %_raw_array3091 to { i64, [0 x i64] }*
  %_ind3093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3093
  %_ind3094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3094
  %_ind3095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3095
  %_ind3096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3096
  %_ind3097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3097
  %_ind3098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3098
  %_ind3099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3099
  %_ind3100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3100
  %_ind3101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3101
  %_ind3102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3092, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3102
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3092, { i64, [0 x i64] }** %a
  %_local3103 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret3104 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3103)
  call void @print_string(i8* %_ret3104)
  %_local3105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3105, i64 0, i64 9)
  %_raw_array3107 = call i64* @oat_alloc_array(i64 1)
  %_array3108 = bitcast i64* %_raw_array3107 to { i64, [0 x i64] }*
  %_ind3109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3108, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3109
  %_strr_arr3106 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3108)
  call void @print_string(i8* %_strr_arr3106)
  %_local3110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret3111 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3110)
  call void @print_string(i8* %_ret3111)
  %_raw_array3113 = call i64* @oat_alloc_array(i64 1)
  %_array3114 = bitcast i64* %_raw_array3113 to { i64, [0 x i64] }*
  %_ind3115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3114, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3115
  %_strr_arr3112 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3114)
  call void @print_string(i8* %_strr_arr3112)
  %_local3117 = load i64, i64* %i
  %_fun_return3116 = bitcast i64 %_local3117 to i64
  ret i64 %_fun_return3116
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3060, i64 %_low3061, i64 %_high3062) {
  %_a3063 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3060, { i64, [0 x i64] }** %_a3063
  %_low3064 = alloca i64
  store i64 %_low3061, i64* %_low3064
  %_high3065 = alloca i64
  store i64 %_high3062, i64* %_high3065
  %mid = alloca i64
  store i64 0, i64* %mid
  %_local3066 = load i64, i64* %_low3064
  %_local3067 = load i64, i64* %_high3065
  %_bop3068 = icmp slt i64 %_local3066, %_local3067
  br i1 %_bop3068, label %_if3084, label %_else3085
_if3084:
  %_local3069 = load i64, i64* %_low3064
  %_local3070 = load i64, i64* %_high3065
  %_bop3071 = add i64 %_local3069, %_local3070
  %_bop3072 = lshr i64 %_bop3071, 1
  store i64 %_bop3072, i64* %mid
  %_local3073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3063
  %_local3074 = load i64, i64* %_low3064
  %_local3075 = load i64, i64* %mid
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3073, i64 %_local3074, i64 %_local3075)
  %_local3076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3063
  %_local3077 = load i64, i64* %mid
  %_bop3078 = add i64 %_local3077, 1
  %_local3079 = load i64, i64* %_high3065
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3076, i64 %_bop3078, i64 %_local3079)
  %_local3080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3063
  %_local3081 = load i64, i64* %_low3064
  %_local3082 = load i64, i64* %_high3065
  %_local3083 = load i64, i64* %mid
  call void @_merge({ i64, [0 x i64] }* %_local3080, i64 %_local3081, i64 %_local3082, i64 %_local3083)
  br label %_fi3086
_else3085:
  br label %_fi3086
_fi3086:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a2952, i64 %_low2953, i64 %_high2954, i64 %_mid2955) {
  %_a2956 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2952, { i64, [0 x i64] }** %_a2956
  %_low2957 = alloca i64
  store i64 %_low2953, i64* %_low2957
  %_high2958 = alloca i64
  store i64 %_high2954, i64* %_high2958
  %_mid2959 = alloca i64
  store i64 %_mid2955, i64* %_mid2959
  %i = alloca i64
  store i64 0, i64* %i
  %j = alloca i64
  store i64 0, i64* %j
  %k = alloca i64
  store i64 0, i64* %k
  %_raw_array2960 = call i64* @oat_alloc_array(i64 50)
  %_array2961 = bitcast i64* %_raw_array2960 to { i64, [0 x i64] }*
  %c = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2961, { i64, [0 x i64] }** %c
  %_local2962 = load i64, i64* %_low2957
  store i64 %_local2962, i64* %i
  %_local2963 = load i64, i64* %_mid2959
  %_bop2964 = add i64 %_local2963, 1
  store i64 %_bop2964, i64* %j
  %_local2965 = load i64, i64* %_low2957
  store i64 %_local2965, i64* %k
  br label %_while3007
_while3007:
  %_local2966 = load i64, i64* %i
  %_local2967 = load i64, i64* %_mid2959
  %_bop2968 = icmp sle i64 %_local2966, %_local2967
  %_local2969 = load i64, i64* %j
  %_local2970 = load i64, i64* %_high2958
  %_bop2971 = icmp sle i64 %_local2969, %_local2970
  %_bop2972 = and i1 %_bop2968, %_bop2971
  br i1 %_bop2972, label %_do3008, label %_elihw3009
_do3008:
  %_local2973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2956
  %_local2974 = load i64, i64* %i
  %_ptr2975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2973, i32 0, i32 1, i64 %_local2974
  %_elem2976 = load i64, i64* %_ptr2975
  %_local2977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2956
  %_local2978 = load i64, i64* %j
  %_ptr2979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2977, i32 0, i32 1, i64 %_local2978
  %_elem2980 = load i64, i64* %_ptr2979
  %_bop2981 = icmp slt i64 %_elem2976, %_elem2980
  br i1 %_bop2981, label %_if3004, label %_else3005
_if3004:
  %_local2982 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2956
  %_local2983 = load i64, i64* %i
  %_ptr2984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2982, i32 0, i32 1, i64 %_local2983
  %_elem2985 = load i64, i64* %_ptr2984
  %_local2986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local2987 = load i64, i64* %k
  %_ind_assign2988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2986, i32 0, i32 1, i64 %_local2987
  store i64 %_elem2985, i64* %_ind_assign2988
  %_local2989 = load i64, i64* %k
  %_bop2990 = add i64 %_local2989, 1
  store i64 %_bop2990, i64* %k
  %_local2991 = load i64, i64* %i
  %_bop2992 = add i64 %_local2991, 1
  store i64 %_bop2992, i64* %i
  br label %_fi3006
_else3005:
  %_local2993 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2956
  %_local2994 = load i64, i64* %j
  %_ptr2995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2993, i32 0, i32 1, i64 %_local2994
  %_elem2996 = load i64, i64* %_ptr2995
  %_local2997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local2998 = load i64, i64* %k
  %_ind_assign2999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2997, i32 0, i32 1, i64 %_local2998
  store i64 %_elem2996, i64* %_ind_assign2999
  %_local3000 = load i64, i64* %k
  %_bop3001 = add i64 %_local3000, 1
  store i64 %_bop3001, i64* %k
  %_local3002 = load i64, i64* %j
  %_bop3003 = add i64 %_local3002, 1
  store i64 %_bop3003, i64* %j
  br label %_fi3006
_fi3006:
  br label %_while3007
_elihw3009:
  br label %_while3024
_while3024:
  %_local3010 = load i64, i64* %i
  %_local3011 = load i64, i64* %_mid2959
  %_bop3012 = icmp sle i64 %_local3010, %_local3011
  br i1 %_bop3012, label %_do3025, label %_elihw3026
_do3025:
  %_local3013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2956
  %_local3014 = load i64, i64* %i
  %_ptr3015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3013, i32 0, i32 1, i64 %_local3014
  %_elem3016 = load i64, i64* %_ptr3015
  %_local3017 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3018 = load i64, i64* %k
  %_ind_assign3019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3017, i32 0, i32 1, i64 %_local3018
  store i64 %_elem3016, i64* %_ind_assign3019
  %_local3020 = load i64, i64* %k
  %_bop3021 = add i64 %_local3020, 1
  store i64 %_bop3021, i64* %k
  %_local3022 = load i64, i64* %i
  %_bop3023 = add i64 %_local3022, 1
  store i64 %_bop3023, i64* %i
  br label %_while3024
_elihw3026:
  br label %_while3041
_while3041:
  %_local3027 = load i64, i64* %j
  %_local3028 = load i64, i64* %_high2958
  %_bop3029 = icmp sle i64 %_local3027, %_local3028
  br i1 %_bop3029, label %_do3042, label %_elihw3043
_do3042:
  %_local3030 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2956
  %_local3031 = load i64, i64* %j
  %_ptr3032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3030, i32 0, i32 1, i64 %_local3031
  %_elem3033 = load i64, i64* %_ptr3032
  %_local3034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3035 = load i64, i64* %k
  %_ind_assign3036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3034, i32 0, i32 1, i64 %_local3035
  store i64 %_elem3033, i64* %_ind_assign3036
  %_local3037 = load i64, i64* %k
  %_bop3038 = add i64 %_local3037, 1
  store i64 %_bop3038, i64* %k
  %_local3039 = load i64, i64* %j
  %_bop3040 = add i64 %_local3039, 1
  store i64 %_bop3040, i64* %j
  br label %_while3041
_elihw3043:
  %_local3044 = load i64, i64* %_low2957
  store i64 %_local3044, i64* %i
  br label %_while3057
_while3057:
  %_local3045 = load i64, i64* %i
  %_local3046 = load i64, i64* %k
  %_bop3047 = icmp slt i64 %_local3045, %_local3046
  br i1 %_bop3047, label %_do3058, label %_elihw3059
_do3058:
  %_local3048 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3049 = load i64, i64* %i
  %_ptr3050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3048, i32 0, i32 1, i64 %_local3049
  %_elem3051 = load i64, i64* %_ptr3050
  %_local3052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2956
  %_local3053 = load i64, i64* %i
  %_ind_assign3054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3052, i32 0, i32 1, i64 %_local3053
  store i64 %_elem3051, i64* %_ind_assign3054
  %_local3055 = load i64, i64* %i
  %_bop3056 = add i64 %_local3055, 1
  store i64 %_bop3056, i64* %i
  br label %_while3057
_elihw3059:
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
