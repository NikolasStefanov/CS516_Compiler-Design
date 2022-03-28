; generated from: hw4programs/selectionsort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @getminindex({ i64, [0 x i64] }* %_a3344, i64 %_s3345, i64 %_b3346) {
  %_a3347 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3344, { i64, [0 x i64] }** %_a3347
  %_s3348 = alloca i64
  store i64 %_s3345, i64* %_s3348
  %_b3349 = alloca i64
  store i64 %_b3346, i64* %_b3349
  %_local3350 = load i64, i64* %_s3348
  %i = alloca i64
  store i64 %_local3350, i64* %i
  %_local3351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3347
  %_local3352 = load i64, i64* %_s3348
  %_ptr3353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3351, i32 0, i32 1, i64 %_local3352
  %_elem3354 = load i64, i64* %_ptr3353
  %min = alloca i64
  store i64 %_elem3354, i64* %min
  %_local3355 = load i64, i64* %_s3348
  %mi = alloca i64
  store i64 %_local3355, i64* %mi
  br label %_while3375
_while3375:
  %_local3356 = load i64, i64* %i
  %_local3357 = load i64, i64* %_b3349
  %_bop3358 = icmp slt i64 %_local3356, %_local3357
  br i1 %_bop3358, label %_do3376, label %_elihw3377
_do3376:
  %_local3359 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3347
  %_local3360 = load i64, i64* %i
  %_ptr3361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3359, i32 0, i32 1, i64 %_local3360
  %_elem3362 = load i64, i64* %_ptr3361
  %_local3363 = load i64, i64* %min
  %_bop3364 = icmp slt i64 %_elem3362, %_local3363
  br i1 %_bop3364, label %_if3370, label %_else3371
_if3370:
  %_local3365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3347
  %_local3366 = load i64, i64* %i
  %_ptr3367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3365, i32 0, i32 1, i64 %_local3366
  %_elem3368 = load i64, i64* %_ptr3367
  store i64 %_elem3368, i64* %min
  %_local3369 = load i64, i64* %i
  store i64 %_local3369, i64* %mi
  br label %_fi3372
_else3371:
  br label %_fi3372
_fi3372:
  %_local3373 = load i64, i64* %i
  %_bop3374 = add i64 %_local3373, 1
  store i64 %_bop3374, i64* %i
  br label %_while3375
_elihw3377:
  %_local3379 = load i64, i64* %mi
  %_fun_return3378 = bitcast i64 %_local3379 to i64
  ret i64 %_fun_return3378
}

define void @selectionsort({ i64, [0 x i64] }* %_a3312, i64 %_s3313) {
  %_a3314 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3312, { i64, [0 x i64] }** %_a3314
  %_s3315 = alloca i64
  store i64 %_s3313, i64* %_s3315
  %t = alloca i64
  store i64 0, i64* %t
  %mi = alloca i64
  store i64 0, i64* %mi
  %_i3316 = alloca i64
  store i64 0, i64* %_i3316
  br label %_while3341
_while3341:
  %_local3317 = load i64, i64* %_i3316
  %_local3318 = load i64, i64* %_s3315
  %_bop3319 = icmp slt i64 %_local3317, %_local3318
  br i1 %_bop3319, label %_do3342, label %_elihw3343
_do3342:
  %_local3320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3314
  %_local3321 = load i64, i64* %_i3316
  %_local3322 = load i64, i64* %_s3315
  %_ret3323 = call i64 @_getminindex({ i64, [0 x i64] }* %_local3320, i64 %_local3321, i64 %_local3322)
  store i64 %_ret3323, i64* %mi
  %_local3324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3314
  %_local3325 = load i64, i64* %_i3316
  %_ptr3326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3324, i32 0, i32 1, i64 %_local3325
  %_elem3327 = load i64, i64* %_ptr3326
  store i64 %_elem3327, i64* %t
  %_local3328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3314
  %_local3329 = load i64, i64* %mi
  %_ptr3330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3328, i32 0, i32 1, i64 %_local3329
  %_elem3331 = load i64, i64* %_ptr3330
  %_local3332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3314
  %_local3333 = load i64, i64* %_i3316
  %_ind_assign3334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3332, i32 0, i32 1, i64 %_local3333
  store i64 %_elem3331, i64* %_ind_assign3334
  %_local3335 = load i64, i64* %t
  %_local3336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3314
  %_local3337 = load i64, i64* %mi
  %_ind_assign3338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3336, i32 0, i32 1, i64 %_local3337
  store i64 %_local3335, i64* %_ind_assign3338
  %_local3339 = load i64, i64* %_i3316
  %_bop3340 = add i64 %_local3339, 1
  store i64 %_bop3340, i64* %_i3316
  br label %_while3341
_elihw3343:
  ret void
}

define i64 @program(i64 %_argc3284, { i64, [0 x i8*] }* %_argv3285) {
  %_argc3286 = alloca i64
  store i64 %_argc3284, i64* %_argc3286
  %_argv3287 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3285, { i64, [0 x i8*] }** %_argv3287
  %_raw_array3288 = call i64* @oat_alloc_array(i64 8)
  %_array3289 = bitcast i64* %_raw_array3288 to { i64, [0 x i64] }*
  %_ind3290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3290
  %_ind3291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3291
  %_ind3292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3292
  %_ind3293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3293
  %_ind3294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3294
  %_ind3295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3295
  %_ind3296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3296
  %_ind3297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3289, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3297
  %ar = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3289, { i64, [0 x i64] }** %ar
  %_local3298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %ar
  call void @_selectionsort({ i64, [0 x i64] }* %_local3298, i64 8)
  %_i3299 = alloca i64
  store i64 0, i64* %_i3299
  br label %_while3308
_while3308:
  %_local3300 = load i64, i64* %_i3299
  %_bop3301 = icmp slt i64 %_local3300, 8
  br i1 %_bop3301, label %_do3309, label %_elihw3310
_do3309:
  %_local3302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %ar
  %_local3303 = load i64, i64* %_i3299
  %_ptr3304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3302, i32 0, i32 1, i64 %_local3303
  %_elem3305 = load i64, i64* %_ptr3304
  call void @print_int(i64 %_elem3305)
  %_local3306 = load i64, i64* %_i3299
  %_bop3307 = add i64 %_local3306, 1
  store i64 %_bop3307, i64* %_i3299
  br label %_while3308
_elihw3310:
  %_fun_return3311 = bitcast i64 0 to i64
  ret i64 %_fun_return3311
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
