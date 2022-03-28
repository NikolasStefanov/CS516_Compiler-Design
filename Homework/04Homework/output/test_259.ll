; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @getminindex({ i64, [0 x i64] }* %_a3222, i64 %_s3223, i64 %_b3224) {
  %_a3225 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3222, { i64, [0 x i64] }** %_a3225
  %_s3226 = alloca i64
  store i64 %_s3223, i64* %_s3226
  %_b3227 = alloca i64
  store i64 %_b3224, i64* %_b3227
  %_local3228 = load i64, i64* %_s3226
  %i = alloca i64
  store i64 %_local3228, i64* %i
  %_local3229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3225
  %_local3230 = load i64, i64* %_s3226
  %_ptr3231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3229, i32 0, i32 1, i64 %_local3230
  %_elem3232 = load i64, i64* %_ptr3231
  %min = alloca i64
  store i64 %_elem3232, i64* %min
  %_local3233 = load i64, i64* %_s3226
  %mi = alloca i64
  store i64 %_local3233, i64* %mi
  br label %_while3253
_while3253:
  %_local3234 = load i64, i64* %i
  %_local3235 = load i64, i64* %_b3227
  %_bop3236 = icmp slt i64 %_local3234, %_local3235
  br i1 %_bop3236, label %_do3254, label %_elihw3255
_do3254:
  %_local3237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3225
  %_local3238 = load i64, i64* %i
  %_ptr3239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3237, i32 0, i32 1, i64 %_local3238
  %_elem3240 = load i64, i64* %_ptr3239
  %_local3241 = load i64, i64* %min
  %_bop3242 = icmp slt i64 %_elem3240, %_local3241
  br i1 %_bop3242, label %_if3248, label %_else3249
_if3248:
  %_local3243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3225
  %_local3244 = load i64, i64* %i
  %_ptr3245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3243, i32 0, i32 1, i64 %_local3244
  %_elem3246 = load i64, i64* %_ptr3245
  store i64 %_elem3246, i64* %min
  %_local3247 = load i64, i64* %i
  store i64 %_local3247, i64* %mi
  br label %_fi3250
_else3249:
  br label %_fi3250
_fi3250:
  %_local3251 = load i64, i64* %i
  %_bop3252 = add i64 %_local3251, 1
  store i64 %_bop3252, i64* %i
  br label %_while3253
_elihw3255:
  %_local3257 = load i64, i64* %mi
  %_fun_return3256 = bitcast i64 %_local3257 to i64
  ret i64 %_fun_return3256
}

define void @selectionsort({ i64, [0 x i64] }* %_a3190, i64 %_s3191) {
  %_a3192 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3190, { i64, [0 x i64] }** %_a3192
  %_s3193 = alloca i64
  store i64 %_s3191, i64* %_s3193
  %t = alloca i64
  store i64 0, i64* %t
  %mi = alloca i64
  store i64 0, i64* %mi
  %_i3194 = alloca i64
  store i64 0, i64* %_i3194
  br label %_while3219
_while3219:
  %_local3195 = load i64, i64* %_i3194
  %_local3196 = load i64, i64* %_s3193
  %_bop3197 = icmp slt i64 %_local3195, %_local3196
  br i1 %_bop3197, label %_do3220, label %_elihw3221
_do3220:
  %_local3198 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3192
  %_local3199 = load i64, i64* %_i3194
  %_local3200 = load i64, i64* %_s3193
  %_ret3201 = call i64 @_getminindex({ i64, [0 x i64] }* %_local3198, i64 %_local3199, i64 %_local3200)
  store i64 %_ret3201, i64* %mi
  %_local3202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3192
  %_local3203 = load i64, i64* %_i3194
  %_ptr3204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3202, i32 0, i32 1, i64 %_local3203
  %_elem3205 = load i64, i64* %_ptr3204
  store i64 %_elem3205, i64* %t
  %_local3206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3192
  %_local3207 = load i64, i64* %mi
  %_ptr3208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3206, i32 0, i32 1, i64 %_local3207
  %_elem3209 = load i64, i64* %_ptr3208
  %_local3210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3192
  %_local3211 = load i64, i64* %_i3194
  %_ind_assign3212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3210, i32 0, i32 1, i64 %_local3211
  store i64 %_elem3209, i64* %_ind_assign3212
  %_local3213 = load i64, i64* %t
  %_local3214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3192
  %_local3215 = load i64, i64* %mi
  %_ind_assign3216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3214, i32 0, i32 1, i64 %_local3215
  store i64 %_local3213, i64* %_ind_assign3216
  %_local3217 = load i64, i64* %_i3194
  %_bop3218 = add i64 %_local3217, 1
  store i64 %_bop3218, i64* %_i3194
  br label %_while3219
_elihw3221:
  ret void
}

define i64 @program(i64 %_argc3162, { i64, [0 x i8*] }* %_argv3163) {
  %_argc3164 = alloca i64
  store i64 %_argc3162, i64* %_argc3164
  %_argv3165 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3163, { i64, [0 x i8*] }** %_argv3165
  %_raw_array3166 = call i64* @oat_alloc_array(i64 8)
  %_array3167 = bitcast i64* %_raw_array3166 to { i64, [0 x i64] }*
  %_ind3168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3168
  %_ind3169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3169
  %_ind3170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3170
  %_ind3171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3171
  %_ind3172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3172
  %_ind3173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3173
  %_ind3174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3174
  %_ind3175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3167, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3175
  %ar = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3167, { i64, [0 x i64] }** %ar
  %_local3176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %ar
  call void @_selectionsort({ i64, [0 x i64] }* %_local3176, i64 8)
  %_i3177 = alloca i64
  store i64 0, i64* %_i3177
  br label %_while3186
_while3186:
  %_local3178 = load i64, i64* %_i3177
  %_bop3179 = icmp slt i64 %_local3178, 8
  br i1 %_bop3179, label %_do3187, label %_elihw3188
_do3187:
  %_local3180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %ar
  %_local3181 = load i64, i64* %_i3177
  %_ptr3182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3180, i32 0, i32 1, i64 %_local3181
  %_elem3183 = load i64, i64* %_ptr3182
  call void @print_int(i64 %_elem3183)
  %_local3184 = load i64, i64* %_i3177
  %_bop3185 = add i64 %_local3184, 1
  store i64 %_bop3185, i64* %_i3177
  br label %_while3186
_elihw3188:
  %_fun_return3189 = bitcast i64 0 to i64
  ret i64 %_fun_return3189
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
