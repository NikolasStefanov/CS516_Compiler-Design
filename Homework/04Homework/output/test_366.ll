; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc3421, { i64, [0 x i8*] }* %_argv3422) {
  %_argc3423 = alloca i64
  store i64 %_argc3421, i64* %_argc3423
  %_argv3424 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3422, { i64, [0 x i8*] }** %_argv3424
  %_raw_array3425 = call i64* @oat_alloc_array(i64 2)
  %_array3426 = bitcast i64* %_raw_array3425 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3427 = call i64* @oat_alloc_array(i64 3)
  %_array3428 = bitcast i64* %_raw_array3427 to { i64, [0 x i64] }*
  %_ind3429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3428, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3429
  %_ind3430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3428, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3430
  %_ind3431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3428, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3431
  %_raw_array3432 = call i64* @oat_alloc_array(i64 3)
  %_array3433 = bitcast i64* %_raw_array3432 to { i64, [0 x i64] }*
  %_ind3434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3433, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3434
  %_ind3435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3433, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3435
  %_ind3436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3433, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3436
  %_ind3437 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3426, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3428, { i64, [0 x i64] }** %_ind3437
  %_ind3438 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3426, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3433, { i64, [0 x i64] }** %_ind3438
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3426, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_raw_array3439 = call i64* @oat_alloc_array(i64 3)
  %_array3440 = bitcast i64* %_raw_array3439 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3441 = call i64* @oat_alloc_array(i64 4)
  %_array3442 = bitcast i64* %_raw_array3441 to { i64, [0 x i64] }*
  %_ind3443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3442, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3443
  %_ind3444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3442, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3444
  %_ind3445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3442, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3445
  %_ind3446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3442, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3446
  %_raw_array3447 = call i64* @oat_alloc_array(i64 4)
  %_array3448 = bitcast i64* %_raw_array3447 to { i64, [0 x i64] }*
  %_ind3449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3448, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3449
  %_ind3450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3448, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3450
  %_ind3451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3448, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3451
  %_ind3452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3448, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3452
  %_raw_array3453 = call i64* @oat_alloc_array(i64 4)
  %_array3454 = bitcast i64* %_raw_array3453 to { i64, [0 x i64] }*
  %_ind3455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3454, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3455
  %_ind3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3454, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3456
  %_ind3457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3454, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3457
  %_ind3458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3454, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3458
  %_ind3459 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3440, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3442, { i64, [0 x i64] }** %_ind3459
  %_ind3460 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3440, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3448, { i64, [0 x i64] }** %_ind3460
  %_ind3461 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3440, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3454, { i64, [0 x i64] }** %_ind3461
  %b = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3440, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_raw_array3462 = call i64* @oat_alloc_array(i64 2)
  %_array3463 = bitcast i64* %_raw_array3462 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3464 = call i64* @oat_alloc_array(i64 4)
  %_array3465 = bitcast i64* %_raw_array3464 to { i64, [0 x i64] }*
  %_ind3466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3465, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3466
  %_ind3467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3465, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3467
  %_ind3468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3465, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3468
  %_ind3469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3465, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3469
  %_raw_array3470 = call i64* @oat_alloc_array(i64 4)
  %_array3471 = bitcast i64* %_raw_array3470 to { i64, [0 x i64] }*
  %_ind3472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3471, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3472
  %_ind3473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3471, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3473
  %_ind3474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3471, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3474
  %_ind3475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3471, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3475
  %_ind3476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3463, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3465, { i64, [0 x i64] }** %_ind3476
  %_ind3477 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3463, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3471, { i64, [0 x i64] }** %_ind3477
  %c = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3463, { i64, [0 x { i64, [0 x i64] }*] }** %c
  %_local3478 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local3479 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_local3480 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_local3478, { i64, [0 x { i64, [0 x i64] }*] }* %_local3479, { i64, [0 x { i64, [0 x i64] }*] }* %_local3480)
  %_local3481 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_local3481, i64 2)
  %_local3482 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local3483 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_local3484 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_local3482, { i64, [0 x { i64, [0 x i64] }*] }* %_local3483, { i64, [0 x { i64, [0 x i64] }*] }* %_local3484)
  %_local3485 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_local3485, i64 2)
  %_fun_return3486 = bitcast i64 0 to i64
  ret i64 %_fun_return3486
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13362, { i64, [0 x { i64, [0 x i64] }*] }* %_a23363, { i64, [0 x { i64, [0 x i64] }*] }* %_a33364) {
  %_a13365 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13362, { i64, [0 x { i64, [0 x i64] }*] }** %_a13365
  %_a23366 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23363, { i64, [0 x { i64, [0 x i64] }*] }** %_a23366
  %_a33367 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33364, { i64, [0 x { i64, [0 x i64] }*] }** %_a33367
  %_i3368 = alloca i64
  store i64 0, i64* %_i3368
  br label %_while3418
_while3418:
  %_local3369 = load i64, i64* %_i3368
  %_bop3370 = icmp slt i64 %_local3369, 2
  br i1 %_bop3370, label %_do3419, label %_elihw3420
_do3419:
  %_j3371 = alloca i64
  store i64 0, i64* %_j3371
  br label %_while3413
_while3413:
  %_local3372 = load i64, i64* %_j3371
  %_bop3373 = icmp slt i64 %_local3372, 4
  br i1 %_bop3373, label %_do3414, label %_elihw3415
_do3414:
  %_k3374 = alloca i64
  store i64 0, i64* %_k3374
  br label %_while3408
_while3408:
  %_local3375 = load i64, i64* %_k3374
  %_bop3376 = icmp slt i64 %_local3375, 3
  br i1 %_bop3376, label %_do3409, label %_elihw3410
_do3409:
  %_local3377 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33367
  %_local3378 = load i64, i64* %_i3368
  %_ptr3379 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3377, i32 0, i32 1, i64 %_local3378
  %_elem3380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3379
  %_local3381 = load i64, i64* %_j3371
  %_ptr3382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3380, i32 0, i32 1, i64 %_local3381
  %_elem3383 = load i64, i64* %_ptr3382
  %_local3384 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13365
  %_local3385 = load i64, i64* %_i3368
  %_ptr3386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3384, i32 0, i32 1, i64 %_local3385
  %_elem3387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3386
  %_local3388 = load i64, i64* %_k3374
  %_ptr3389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3387, i32 0, i32 1, i64 %_local3388
  %_elem3390 = load i64, i64* %_ptr3389
  %_local3391 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23366
  %_local3392 = load i64, i64* %_k3374
  %_ptr3393 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3391, i32 0, i32 1, i64 %_local3392
  %_elem3394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3393
  %_local3395 = load i64, i64* %_j3371
  %_ptr3396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3394, i32 0, i32 1, i64 %_local3395
  %_elem3397 = load i64, i64* %_ptr3396
  %_bop3398 = mul i64 %_elem3390, %_elem3397
  %_bop3399 = add i64 %_elem3383, %_bop3398
  %_local3400 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33367
  %_local3401 = load i64, i64* %_i3368
  %_ptr3402 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3400, i32 0, i32 1, i64 %_local3401
  %_elem3403 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3402
  %_local3404 = load i64, i64* %_j3371
  %_ind_assign3405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3403, i32 0, i32 1, i64 %_local3404
  store i64 %_bop3399, i64* %_ind_assign3405
  %_local3406 = load i64, i64* %_k3374
  %_bop3407 = add i64 %_local3406, 1
  store i64 %_bop3407, i64* %_k3374
  br label %_while3408
_elihw3410:
  %_local3411 = load i64, i64* %_j3371
  %_bop3412 = add i64 %_local3411, 1
  store i64 %_bop3412, i64* %_j3371
  br label %_while3413
_elihw3415:
  %_local3416 = load i64, i64* %_i3368
  %_bop3417 = add i64 %_local3416, 1
  store i64 %_bop3417, i64* %_i3368
  br label %_while3418
_elihw3420:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13329, { i64, [0 x { i64, [0 x i64] }*] }* %_a23330, { i64, [0 x { i64, [0 x i64] }*] }* %_a33331) {
  %_a13332 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13329, { i64, [0 x { i64, [0 x i64] }*] }** %_a13332
  %_a23333 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23330, { i64, [0 x { i64, [0 x i64] }*] }** %_a23333
  %_a33334 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33331, { i64, [0 x { i64, [0 x i64] }*] }** %_a33334
  %_i3335 = alloca i64
  store i64 0, i64* %_i3335
  br label %_while3359
_while3359:
  %_local3336 = load i64, i64* %_i3335
  %_bop3337 = icmp slt i64 %_local3336, 2
  br i1 %_bop3337, label %_do3360, label %_elihw3361
_do3360:
  %_j3338 = alloca i64
  store i64 0, i64* %_j3338
  br label %_while3354
_while3354:
  %_local3339 = load i64, i64* %_j3338
  %_bop3340 = icmp slt i64 %_local3339, 4
  br i1 %_bop3340, label %_do3355, label %_elihw3356
_do3355:
  %_local3341 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13332
  %_local3342 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23333
  %_local3343 = load i64, i64* %_i3335
  %_local3344 = load i64, i64* %_j3338
  %_ret3345 = call i64 @_dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_local3341, { i64, [0 x { i64, [0 x i64] }*] }* %_local3342, i64 %_local3343, i64 %_local3344)
  %_local3346 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33334
  %_local3347 = load i64, i64* %_i3335
  %_ptr3348 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3346, i32 0, i32 1, i64 %_local3347
  %_elem3349 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3348
  %_local3350 = load i64, i64* %_j3338
  %_ind_assign3351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3349, i32 0, i32 1, i64 %_local3350
  store i64 %_ret3345, i64* %_ind_assign3351
  %_local3352 = load i64, i64* %_j3338
  %_bop3353 = add i64 %_local3352, 1
  store i64 %_bop3353, i64* %_j3338
  br label %_while3354
_elihw3356:
  %_local3357 = load i64, i64* %_i3335
  %_bop3358 = add i64 %_local3357, 1
  store i64 %_bop3358, i64* %_i3335
  br label %_while3359
_elihw3361:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13294, { i64, [0 x { i64, [0 x i64] }*] }* %_a23295, i64 %_row3296, i64 %_col3297) {
  %_a13298 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13294, { i64, [0 x { i64, [0 x i64] }*] }** %_a13298
  %_a23299 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23295, { i64, [0 x { i64, [0 x i64] }*] }** %_a23299
  %_row3300 = alloca i64
  store i64 %_row3296, i64* %_row3300
  %_col3301 = alloca i64
  store i64 %_col3297, i64* %_col3301
  %sum = alloca i64
  store i64 0, i64* %sum
  %_k3302 = alloca i64
  store i64 0, i64* %_k3302
  br label %_while3324
_while3324:
  %_local3303 = load i64, i64* %_k3302
  %_bop3304 = icmp slt i64 %_local3303, 3
  br i1 %_bop3304, label %_do3325, label %_elihw3326
_do3325:
  %_local3305 = load i64, i64* %sum
  %_local3306 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13298
  %_local3307 = load i64, i64* %_row3300
  %_ptr3308 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3306, i32 0, i32 1, i64 %_local3307
  %_elem3309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3308
  %_local3310 = load i64, i64* %_k3302
  %_ptr3311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3309, i32 0, i32 1, i64 %_local3310
  %_elem3312 = load i64, i64* %_ptr3311
  %_local3313 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23299
  %_local3314 = load i64, i64* %_k3302
  %_ptr3315 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3313, i32 0, i32 1, i64 %_local3314
  %_elem3316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3315
  %_local3317 = load i64, i64* %_col3301
  %_ptr3318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3316, i32 0, i32 1, i64 %_local3317
  %_elem3319 = load i64, i64* %_ptr3318
  %_bop3320 = mul i64 %_elem3312, %_elem3319
  %_bop3321 = add i64 %_local3305, %_bop3320
  store i64 %_bop3321, i64* %sum
  %_local3322 = load i64, i64* %_k3302
  %_bop3323 = add i64 %_local3322, 1
  store i64 %_bop3323, i64* %_k3302
  br label %_while3324
_elihw3326:
  %_local3328 = load i64, i64* %sum
  %_fun_return3327 = bitcast i64 %_local3328 to i64
  ret i64 %_fun_return3327
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3258, i64 %_n3259) {
  %_ar3260 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3258, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3260
  %_n3261 = alloca i64
  store i64 %_n3259, i64* %_n3261
  %_i3262 = alloca i64
  store i64 0, i64* %_i3262
  br label %_while3291
_while3291:
  %_local3263 = load i64, i64* %_i3262
  %_local3264 = load i64, i64* %_n3261
  %_bop3265 = icmp slt i64 %_local3263, %_local3264
  br i1 %_bop3265, label %_do3292, label %_elihw3293
_do3292:
  %_j3266 = alloca i64
  store i64 0, i64* %_j3266
  br label %_while3282
_while3282:
  %_local3267 = load i64, i64* %_j3266
  %_bop3268 = icmp slt i64 %_local3267, 4
  br i1 %_bop3268, label %_do3283, label %_elihw3284
_do3283:
  %_local3269 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3260
  %_local3270 = load i64, i64* %_i3262
  %_ptr3271 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3269, i32 0, i32 1, i64 %_local3270
  %_elem3272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3271
  %_local3273 = load i64, i64* %_j3266
  %_ptr3274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3272, i32 0, i32 1, i64 %_local3273
  %_elem3275 = load i64, i64* %_ptr3274
  call void @print_int(i64 %_elem3275)
  %_raw_array3277 = call i64* @oat_alloc_array(i64 1)
  %_array3278 = bitcast i64* %_raw_array3277 to { i64, [0 x i64] }*
  %_ind3279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3278, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3279
  %_strr_arr3276 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3278)
  call void @print_string(i8* %_strr_arr3276)
  %_local3280 = load i64, i64* %_j3266
  %_bop3281 = add i64 %_local3280, 1
  store i64 %_bop3281, i64* %_j3266
  br label %_while3282
_elihw3284:
  %_raw_array3286 = call i64* @oat_alloc_array(i64 1)
  %_array3287 = bitcast i64* %_raw_array3286 to { i64, [0 x i64] }*
  %_ind3288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3287, i32 0, i32 1, i32 0
  store i64 9, i64* %_ind3288
  %_strr_arr3285 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3287)
  call void @print_string(i8* %_strr_arr3285)
  %_local3289 = load i64, i64* %_i3262
  %_bop3290 = add i64 %_local3289, 1
  store i64 %_bop3290, i64* %_i3262
  br label %_while3291
_elihw3293:
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
