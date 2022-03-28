; generated from: hw4programs/msort2.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc3131, { i64, [0 x i8*] }* %_argv3132) {
  %_argc3133 = alloca i64
  store i64 %_argc3131, i64* %_argc3133
  %_argv3134 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3132, { i64, [0 x i8*] }** %_argv3134
  %_raw_array3135 = call i64* @oat_alloc_array(i64 10)
  %_array3136 = bitcast i64* %_raw_array3135 to { i64, [0 x i64] }*
  %_ind3137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3137
  %_ind3138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3138
  %_ind3139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3139
  %_ind3140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3140
  %_ind3141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3141
  %_ind3142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3142
  %_ind3143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3143
  %_ind3144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3144
  %_ind3145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3145
  %_ind3146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3146
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3136, { i64, [0 x i64] }** %a
  %i = alloca i64
  store i64 0, i64* %i
  %_local3147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret3148 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3147)
  call void @print_string(i8* %_ret3148)
  %_local3149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3149, i64 0, i64 9)
  %_raw_array3151 = call i64* @oat_alloc_array(i64 1)
  %_array3152 = bitcast i64* %_raw_array3151 to { i64, [0 x i64] }*
  %_ind3153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3153
  %_strr_arr3150 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3152)
  call void @print_string(i8* %_strr_arr3150)
  %_local3154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret3155 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3154)
  call void @print_string(i8* %_ret3155)
  %_raw_array3157 = call i64* @oat_alloc_array(i64 1)
  %_array3158 = bitcast i64* %_raw_array3157 to { i64, [0 x i64] }*
  %_ind3159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3158, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3159
  %_strr_arr3156 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3158)
  call void @print_string(i8* %_strr_arr3156)
  %_local3161 = load i64, i64* %i
  %_fun_return3160 = bitcast i64 %_local3161 to i64
  ret i64 %_fun_return3160
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3104, i64 %_low3105, i64 %_high3106) {
  %_a3107 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3104, { i64, [0 x i64] }** %_a3107
  %_low3108 = alloca i64
  store i64 %_low3105, i64* %_low3108
  %_high3109 = alloca i64
  store i64 %_high3106, i64* %_high3109
  %mid = alloca i64
  store i64 0, i64* %mid
  %_local3110 = load i64, i64* %_low3108
  %_local3111 = load i64, i64* %_high3109
  %_bop3112 = icmp slt i64 %_local3110, %_local3111
  br i1 %_bop3112, label %_if3128, label %_else3129
_if3128:
  %_local3113 = load i64, i64* %_low3108
  %_local3114 = load i64, i64* %_high3109
  %_bop3115 = add i64 %_local3113, %_local3114
  %_bop3116 = lshr i64 %_bop3115, 1
  store i64 %_bop3116, i64* %mid
  %_local3117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3107
  %_local3118 = load i64, i64* %_low3108
  %_local3119 = load i64, i64* %mid
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3117, i64 %_local3118, i64 %_local3119)
  %_local3120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3107
  %_local3121 = load i64, i64* %mid
  %_bop3122 = add i64 %_local3121, 1
  %_local3123 = load i64, i64* %_high3109
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3120, i64 %_bop3122, i64 %_local3123)
  %_local3124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3107
  %_local3125 = load i64, i64* %_low3108
  %_local3126 = load i64, i64* %_high3109
  %_local3127 = load i64, i64* %mid
  call void @_merge({ i64, [0 x i64] }* %_local3124, i64 %_local3125, i64 %_local3126, i64 %_local3127)
  br label %_fi3130
_else3129:
  br label %_fi3130
_fi3130:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a2996, i64 %_low2997, i64 %_high2998, i64 %_mid2999) {
  %_a3000 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2996, { i64, [0 x i64] }** %_a3000
  %_low3001 = alloca i64
  store i64 %_low2997, i64* %_low3001
  %_high3002 = alloca i64
  store i64 %_high2998, i64* %_high3002
  %_mid3003 = alloca i64
  store i64 %_mid2999, i64* %_mid3003
  %i = alloca i64
  store i64 0, i64* %i
  %j = alloca i64
  store i64 0, i64* %j
  %k = alloca i64
  store i64 0, i64* %k
  %_raw_array3004 = call i64* @oat_alloc_array(i64 50)
  %_array3005 = bitcast i64* %_raw_array3004 to { i64, [0 x i64] }*
  %c = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3005, { i64, [0 x i64] }** %c
  %_local3006 = load i64, i64* %_low3001
  store i64 %_local3006, i64* %i
  %_local3007 = load i64, i64* %_mid3003
  %_bop3008 = add i64 %_local3007, 1
  store i64 %_bop3008, i64* %j
  %_local3009 = load i64, i64* %_low3001
  store i64 %_local3009, i64* %k
  br label %_while3051
_while3051:
  %_local3010 = load i64, i64* %i
  %_local3011 = load i64, i64* %_mid3003
  %_bop3012 = icmp sle i64 %_local3010, %_local3011
  %_local3013 = load i64, i64* %j
  %_local3014 = load i64, i64* %_high3002
  %_bop3015 = icmp sle i64 %_local3013, %_local3014
  %_bop3016 = and i1 %_bop3012, %_bop3015
  br i1 %_bop3016, label %_do3052, label %_elihw3053
_do3052:
  %_local3017 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3000
  %_local3018 = load i64, i64* %i
  %_ptr3019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3017, i32 0, i32 1, i64 %_local3018
  %_elem3020 = load i64, i64* %_ptr3019
  %_local3021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3000
  %_local3022 = load i64, i64* %j
  %_ptr3023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3021, i32 0, i32 1, i64 %_local3022
  %_elem3024 = load i64, i64* %_ptr3023
  %_bop3025 = icmp slt i64 %_elem3020, %_elem3024
  br i1 %_bop3025, label %_if3048, label %_else3049
_if3048:
  %_local3026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3000
  %_local3027 = load i64, i64* %i
  %_ptr3028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3026, i32 0, i32 1, i64 %_local3027
  %_elem3029 = load i64, i64* %_ptr3028
  %_local3030 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3031 = load i64, i64* %k
  %_ind_assign3032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3030, i32 0, i32 1, i64 %_local3031
  store i64 %_elem3029, i64* %_ind_assign3032
  %_local3033 = load i64, i64* %k
  %_bop3034 = add i64 %_local3033, 1
  store i64 %_bop3034, i64* %k
  %_local3035 = load i64, i64* %i
  %_bop3036 = add i64 %_local3035, 1
  store i64 %_bop3036, i64* %i
  br label %_fi3050
_else3049:
  %_local3037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3000
  %_local3038 = load i64, i64* %j
  %_ptr3039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3037, i32 0, i32 1, i64 %_local3038
  %_elem3040 = load i64, i64* %_ptr3039
  %_local3041 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3042 = load i64, i64* %k
  %_ind_assign3043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3041, i32 0, i32 1, i64 %_local3042
  store i64 %_elem3040, i64* %_ind_assign3043
  %_local3044 = load i64, i64* %k
  %_bop3045 = add i64 %_local3044, 1
  store i64 %_bop3045, i64* %k
  %_local3046 = load i64, i64* %j
  %_bop3047 = add i64 %_local3046, 1
  store i64 %_bop3047, i64* %j
  br label %_fi3050
_fi3050:
  br label %_while3051
_elihw3053:
  br label %_while3068
_while3068:
  %_local3054 = load i64, i64* %i
  %_local3055 = load i64, i64* %_mid3003
  %_bop3056 = icmp sle i64 %_local3054, %_local3055
  br i1 %_bop3056, label %_do3069, label %_elihw3070
_do3069:
  %_local3057 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3000
  %_local3058 = load i64, i64* %i
  %_ptr3059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3057, i32 0, i32 1, i64 %_local3058
  %_elem3060 = load i64, i64* %_ptr3059
  %_local3061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3062 = load i64, i64* %k
  %_ind_assign3063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3061, i32 0, i32 1, i64 %_local3062
  store i64 %_elem3060, i64* %_ind_assign3063
  %_local3064 = load i64, i64* %k
  %_bop3065 = add i64 %_local3064, 1
  store i64 %_bop3065, i64* %k
  %_local3066 = load i64, i64* %i
  %_bop3067 = add i64 %_local3066, 1
  store i64 %_bop3067, i64* %i
  br label %_while3068
_elihw3070:
  br label %_while3085
_while3085:
  %_local3071 = load i64, i64* %j
  %_local3072 = load i64, i64* %_high3002
  %_bop3073 = icmp sle i64 %_local3071, %_local3072
  br i1 %_bop3073, label %_do3086, label %_elihw3087
_do3086:
  %_local3074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3000
  %_local3075 = load i64, i64* %j
  %_ptr3076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3074, i32 0, i32 1, i64 %_local3075
  %_elem3077 = load i64, i64* %_ptr3076
  %_local3078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3079 = load i64, i64* %k
  %_ind_assign3080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3078, i32 0, i32 1, i64 %_local3079
  store i64 %_elem3077, i64* %_ind_assign3080
  %_local3081 = load i64, i64* %k
  %_bop3082 = add i64 %_local3081, 1
  store i64 %_bop3082, i64* %k
  %_local3083 = load i64, i64* %j
  %_bop3084 = add i64 %_local3083, 1
  store i64 %_bop3084, i64* %j
  br label %_while3085
_elihw3087:
  %_local3088 = load i64, i64* %_low3001
  store i64 %_local3088, i64* %i
  br label %_while3101
_while3101:
  %_local3089 = load i64, i64* %i
  %_local3090 = load i64, i64* %k
  %_bop3091 = icmp slt i64 %_local3089, %_local3090
  br i1 %_bop3091, label %_do3102, label %_elihw3103
_do3102:
  %_local3092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3093 = load i64, i64* %i
  %_ptr3094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3092, i32 0, i32 1, i64 %_local3093
  %_elem3095 = load i64, i64* %_ptr3094
  %_local3096 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3000
  %_local3097 = load i64, i64* %i
  %_ind_assign3098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3096, i32 0, i32 1, i64 %_local3097
  store i64 %_elem3095, i64* %_ind_assign3098
  %_local3099 = load i64, i64* %i
  %_bop3100 = add i64 %_local3099, 1
  store i64 %_bop3100, i64* %i
  br label %_while3101
_elihw3103:
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
