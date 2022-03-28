; generated from: hw4programs/msort2.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc3253, { i64, [0 x i8*] }* %_argv3254) {
  %_argc3255 = alloca i64
  store i64 %_argc3253, i64* %_argc3255
  %_argv3256 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3254, { i64, [0 x i8*] }** %_argv3256
  %_raw_array3257 = call i64* @oat_alloc_array(i64 10)
  %_array3258 = bitcast i64* %_raw_array3257 to { i64, [0 x i64] }*
  %_ind3259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3259
  %_ind3260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3260
  %_ind3261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3261
  %_ind3262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3262
  %_ind3263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3263
  %_ind3264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3264
  %_ind3265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3265
  %_ind3266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3266
  %_ind3267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3267
  %_ind3268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3258, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3268
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3258, { i64, [0 x i64] }** %a
  %i = alloca i64
  store i64 0, i64* %i
  %_local3269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret3270 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3269)
  call void @print_string(i8* %_ret3270)
  %_local3271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3271, i64 0, i64 9)
  %_raw_array3273 = call i64* @oat_alloc_array(i64 1)
  %_array3274 = bitcast i64* %_raw_array3273 to { i64, [0 x i64] }*
  %_ind3275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3274, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3275
  %_strr_arr3272 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3274)
  call void @print_string(i8* %_strr_arr3272)
  %_local3276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret3277 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3276)
  call void @print_string(i8* %_ret3277)
  %_raw_array3279 = call i64* @oat_alloc_array(i64 1)
  %_array3280 = bitcast i64* %_raw_array3279 to { i64, [0 x i64] }*
  %_ind3281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3280, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3281
  %_strr_arr3278 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3280)
  call void @print_string(i8* %_strr_arr3278)
  %_local3283 = load i64, i64* %i
  %_fun_return3282 = bitcast i64 %_local3283 to i64
  ret i64 %_fun_return3282
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3226, i64 %_low3227, i64 %_high3228) {
  %_a3229 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3226, { i64, [0 x i64] }** %_a3229
  %_low3230 = alloca i64
  store i64 %_low3227, i64* %_low3230
  %_high3231 = alloca i64
  store i64 %_high3228, i64* %_high3231
  %mid = alloca i64
  store i64 0, i64* %mid
  %_local3232 = load i64, i64* %_low3230
  %_local3233 = load i64, i64* %_high3231
  %_bop3234 = icmp slt i64 %_local3232, %_local3233
  br i1 %_bop3234, label %_if3250, label %_else3251
_if3250:
  %_local3235 = load i64, i64* %_low3230
  %_local3236 = load i64, i64* %_high3231
  %_bop3237 = add i64 %_local3235, %_local3236
  %_bop3238 = lshr i64 %_bop3237, 1
  store i64 %_bop3238, i64* %mid
  %_local3239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_local3240 = load i64, i64* %_low3230
  %_local3241 = load i64, i64* %mid
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3239, i64 %_local3240, i64 %_local3241)
  %_local3242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_local3243 = load i64, i64* %mid
  %_bop3244 = add i64 %_local3243, 1
  %_local3245 = load i64, i64* %_high3231
  call void @_oat_mergesort({ i64, [0 x i64] }* %_local3242, i64 %_bop3244, i64 %_local3245)
  %_local3246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3229
  %_local3247 = load i64, i64* %_low3230
  %_local3248 = load i64, i64* %_high3231
  %_local3249 = load i64, i64* %mid
  call void @_merge({ i64, [0 x i64] }* %_local3246, i64 %_local3247, i64 %_local3248, i64 %_local3249)
  br label %_fi3252
_else3251:
  br label %_fi3252
_fi3252:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a3118, i64 %_low3119, i64 %_high3120, i64 %_mid3121) {
  %_a3122 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3118, { i64, [0 x i64] }** %_a3122
  %_low3123 = alloca i64
  store i64 %_low3119, i64* %_low3123
  %_high3124 = alloca i64
  store i64 %_high3120, i64* %_high3124
  %_mid3125 = alloca i64
  store i64 %_mid3121, i64* %_mid3125
  %i = alloca i64
  store i64 0, i64* %i
  %j = alloca i64
  store i64 0, i64* %j
  %k = alloca i64
  store i64 0, i64* %k
  %_raw_array3126 = call i64* @oat_alloc_array(i64 50)
  %_array3127 = bitcast i64* %_raw_array3126 to { i64, [0 x i64] }*
  %c = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3127, { i64, [0 x i64] }** %c
  %_local3128 = load i64, i64* %_low3123
  store i64 %_local3128, i64* %i
  %_local3129 = load i64, i64* %_mid3125
  %_bop3130 = add i64 %_local3129, 1
  store i64 %_bop3130, i64* %j
  %_local3131 = load i64, i64* %_low3123
  store i64 %_local3131, i64* %k
  br label %_while3173
_while3173:
  %_local3132 = load i64, i64* %i
  %_local3133 = load i64, i64* %_mid3125
  %_bop3134 = icmp sle i64 %_local3132, %_local3133
  %_local3135 = load i64, i64* %j
  %_local3136 = load i64, i64* %_high3124
  %_bop3137 = icmp sle i64 %_local3135, %_local3136
  %_bop3138 = and i1 %_bop3134, %_bop3137
  br i1 %_bop3138, label %_do3174, label %_elihw3175
_do3174:
  %_local3139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3122
  %_local3140 = load i64, i64* %i
  %_ptr3141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3139, i32 0, i32 1, i64 %_local3140
  %_elem3142 = load i64, i64* %_ptr3141
  %_local3143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3122
  %_local3144 = load i64, i64* %j
  %_ptr3145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3143, i32 0, i32 1, i64 %_local3144
  %_elem3146 = load i64, i64* %_ptr3145
  %_bop3147 = icmp slt i64 %_elem3142, %_elem3146
  br i1 %_bop3147, label %_if3170, label %_else3171
_if3170:
  %_local3148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3122
  %_local3149 = load i64, i64* %i
  %_ptr3150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3148, i32 0, i32 1, i64 %_local3149
  %_elem3151 = load i64, i64* %_ptr3150
  %_local3152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3153 = load i64, i64* %k
  %_ind_assign3154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3152, i32 0, i32 1, i64 %_local3153
  store i64 %_elem3151, i64* %_ind_assign3154
  %_local3155 = load i64, i64* %k
  %_bop3156 = add i64 %_local3155, 1
  store i64 %_bop3156, i64* %k
  %_local3157 = load i64, i64* %i
  %_bop3158 = add i64 %_local3157, 1
  store i64 %_bop3158, i64* %i
  br label %_fi3172
_else3171:
  %_local3159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3122
  %_local3160 = load i64, i64* %j
  %_ptr3161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3159, i32 0, i32 1, i64 %_local3160
  %_elem3162 = load i64, i64* %_ptr3161
  %_local3163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3164 = load i64, i64* %k
  %_ind_assign3165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3163, i32 0, i32 1, i64 %_local3164
  store i64 %_elem3162, i64* %_ind_assign3165
  %_local3166 = load i64, i64* %k
  %_bop3167 = add i64 %_local3166, 1
  store i64 %_bop3167, i64* %k
  %_local3168 = load i64, i64* %j
  %_bop3169 = add i64 %_local3168, 1
  store i64 %_bop3169, i64* %j
  br label %_fi3172
_fi3172:
  br label %_while3173
_elihw3175:
  br label %_while3190
_while3190:
  %_local3176 = load i64, i64* %i
  %_local3177 = load i64, i64* %_mid3125
  %_bop3178 = icmp sle i64 %_local3176, %_local3177
  br i1 %_bop3178, label %_do3191, label %_elihw3192
_do3191:
  %_local3179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3122
  %_local3180 = load i64, i64* %i
  %_ptr3181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3179, i32 0, i32 1, i64 %_local3180
  %_elem3182 = load i64, i64* %_ptr3181
  %_local3183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3184 = load i64, i64* %k
  %_ind_assign3185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3183, i32 0, i32 1, i64 %_local3184
  store i64 %_elem3182, i64* %_ind_assign3185
  %_local3186 = load i64, i64* %k
  %_bop3187 = add i64 %_local3186, 1
  store i64 %_bop3187, i64* %k
  %_local3188 = load i64, i64* %i
  %_bop3189 = add i64 %_local3188, 1
  store i64 %_bop3189, i64* %i
  br label %_while3190
_elihw3192:
  br label %_while3207
_while3207:
  %_local3193 = load i64, i64* %j
  %_local3194 = load i64, i64* %_high3124
  %_bop3195 = icmp sle i64 %_local3193, %_local3194
  br i1 %_bop3195, label %_do3208, label %_elihw3209
_do3208:
  %_local3196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3122
  %_local3197 = load i64, i64* %j
  %_ptr3198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3196, i32 0, i32 1, i64 %_local3197
  %_elem3199 = load i64, i64* %_ptr3198
  %_local3200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3201 = load i64, i64* %k
  %_ind_assign3202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3200, i32 0, i32 1, i64 %_local3201
  store i64 %_elem3199, i64* %_ind_assign3202
  %_local3203 = load i64, i64* %k
  %_bop3204 = add i64 %_local3203, 1
  store i64 %_bop3204, i64* %k
  %_local3205 = load i64, i64* %j
  %_bop3206 = add i64 %_local3205, 1
  store i64 %_bop3206, i64* %j
  br label %_while3207
_elihw3209:
  %_local3210 = load i64, i64* %_low3123
  store i64 %_local3210, i64* %i
  br label %_while3223
_while3223:
  %_local3211 = load i64, i64* %i
  %_local3212 = load i64, i64* %k
  %_bop3213 = icmp slt i64 %_local3211, %_local3212
  br i1 %_bop3213, label %_do3224, label %_elihw3225
_do3224:
  %_local3214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_local3215 = load i64, i64* %i
  %_ptr3216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3214, i32 0, i32 1, i64 %_local3215
  %_elem3217 = load i64, i64* %_ptr3216
  %_local3218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3122
  %_local3219 = load i64, i64* %i
  %_ind_assign3220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3218, i32 0, i32 1, i64 %_local3219
  store i64 %_elem3217, i64* %_ind_assign3220
  %_local3221 = load i64, i64* %i
  %_bop3222 = add i64 %_local3221, 1
  store i64 %_bop3222, i64* %i
  br label %_while3223
_elihw3225:
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
