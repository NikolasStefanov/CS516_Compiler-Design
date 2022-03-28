; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc3543, { i64, [0 x i8*] }* %_argv3544) {
  %_argc3545 = alloca i64
  store i64 %_argc3543, i64* %_argc3545
  %_argv3546 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3544, { i64, [0 x i8*] }** %_argv3546
  %_raw_array3547 = call i64* @oat_alloc_array(i64 2)
  %_array3548 = bitcast i64* %_raw_array3547 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3549 = call i64* @oat_alloc_array(i64 3)
  %_array3550 = bitcast i64* %_raw_array3549 to { i64, [0 x i64] }*
  %_ind3551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3550, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3551
  %_ind3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3550, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3552
  %_ind3553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3550, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3553
  %_raw_array3554 = call i64* @oat_alloc_array(i64 3)
  %_array3555 = bitcast i64* %_raw_array3554 to { i64, [0 x i64] }*
  %_ind3556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3555, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3556
  %_ind3557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3555, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3557
  %_ind3558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3555, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3558
  %_ind3559 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3548, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3550, { i64, [0 x i64] }** %_ind3559
  %_ind3560 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3548, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3555, { i64, [0 x i64] }** %_ind3560
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3548, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_raw_array3561 = call i64* @oat_alloc_array(i64 3)
  %_array3562 = bitcast i64* %_raw_array3561 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3563 = call i64* @oat_alloc_array(i64 4)
  %_array3564 = bitcast i64* %_raw_array3563 to { i64, [0 x i64] }*
  %_ind3565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3564, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3565
  %_ind3566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3564, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3566
  %_ind3567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3564, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3567
  %_ind3568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3564, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3568
  %_raw_array3569 = call i64* @oat_alloc_array(i64 4)
  %_array3570 = bitcast i64* %_raw_array3569 to { i64, [0 x i64] }*
  %_ind3571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3570, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3571
  %_ind3572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3570, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3572
  %_ind3573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3570, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3573
  %_ind3574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3570, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3574
  %_raw_array3575 = call i64* @oat_alloc_array(i64 4)
  %_array3576 = bitcast i64* %_raw_array3575 to { i64, [0 x i64] }*
  %_ind3577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3576, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3577
  %_ind3578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3576, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3578
  %_ind3579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3576, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3579
  %_ind3580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3576, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3580
  %_ind3581 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3562, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3564, { i64, [0 x i64] }** %_ind3581
  %_ind3582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3562, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3570, { i64, [0 x i64] }** %_ind3582
  %_ind3583 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3562, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3576, { i64, [0 x i64] }** %_ind3583
  %b = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3562, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_raw_array3584 = call i64* @oat_alloc_array(i64 2)
  %_array3585 = bitcast i64* %_raw_array3584 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3586 = call i64* @oat_alloc_array(i64 4)
  %_array3587 = bitcast i64* %_raw_array3586 to { i64, [0 x i64] }*
  %_ind3588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3587, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3588
  %_ind3589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3587, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3589
  %_ind3590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3587, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3590
  %_ind3591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3587, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3591
  %_raw_array3592 = call i64* @oat_alloc_array(i64 4)
  %_array3593 = bitcast i64* %_raw_array3592 to { i64, [0 x i64] }*
  %_ind3594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3593, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3594
  %_ind3595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3593, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3595
  %_ind3596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3593, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3596
  %_ind3597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3593, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3597
  %_ind3598 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3585, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3587, { i64, [0 x i64] }** %_ind3598
  %_ind3599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3585, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3593, { i64, [0 x i64] }** %_ind3599
  %c = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3585, { i64, [0 x { i64, [0 x i64] }*] }** %c
  %_local3600 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local3601 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_local3602 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_local3600, { i64, [0 x { i64, [0 x i64] }*] }* %_local3601, { i64, [0 x { i64, [0 x i64] }*] }* %_local3602)
  %_local3603 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_local3603, i64 2)
  %_local3604 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local3605 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_local3606 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_local3604, { i64, [0 x { i64, [0 x i64] }*] }* %_local3605, { i64, [0 x { i64, [0 x i64] }*] }* %_local3606)
  %_local3607 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @_prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_local3607, i64 2)
  %_fun_return3608 = bitcast i64 0 to i64
  ret i64 %_fun_return3608
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13484, { i64, [0 x { i64, [0 x i64] }*] }* %_a23485, { i64, [0 x { i64, [0 x i64] }*] }* %_a33486) {
  %_a13487 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13484, { i64, [0 x { i64, [0 x i64] }*] }** %_a13487
  %_a23488 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23485, { i64, [0 x { i64, [0 x i64] }*] }** %_a23488
  %_a33489 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33486, { i64, [0 x { i64, [0 x i64] }*] }** %_a33489
  %_i3490 = alloca i64
  store i64 0, i64* %_i3490
  br label %_while3540
_while3540:
  %_local3491 = load i64, i64* %_i3490
  %_bop3492 = icmp slt i64 %_local3491, 2
  br i1 %_bop3492, label %_do3541, label %_elihw3542
_do3541:
  %_j3493 = alloca i64
  store i64 0, i64* %_j3493
  br label %_while3535
_while3535:
  %_local3494 = load i64, i64* %_j3493
  %_bop3495 = icmp slt i64 %_local3494, 4
  br i1 %_bop3495, label %_do3536, label %_elihw3537
_do3536:
  %_k3496 = alloca i64
  store i64 0, i64* %_k3496
  br label %_while3530
_while3530:
  %_local3497 = load i64, i64* %_k3496
  %_bop3498 = icmp slt i64 %_local3497, 3
  br i1 %_bop3498, label %_do3531, label %_elihw3532
_do3531:
  %_local3499 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33489
  %_local3500 = load i64, i64* %_i3490
  %_ptr3501 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3499, i32 0, i32 1, i64 %_local3500
  %_elem3502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3501
  %_local3503 = load i64, i64* %_j3493
  %_ptr3504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3502, i32 0, i32 1, i64 %_local3503
  %_elem3505 = load i64, i64* %_ptr3504
  %_local3506 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13487
  %_local3507 = load i64, i64* %_i3490
  %_ptr3508 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3506, i32 0, i32 1, i64 %_local3507
  %_elem3509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3508
  %_local3510 = load i64, i64* %_k3496
  %_ptr3511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3509, i32 0, i32 1, i64 %_local3510
  %_elem3512 = load i64, i64* %_ptr3511
  %_local3513 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23488
  %_local3514 = load i64, i64* %_k3496
  %_ptr3515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3513, i32 0, i32 1, i64 %_local3514
  %_elem3516 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3515
  %_local3517 = load i64, i64* %_j3493
  %_ptr3518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3516, i32 0, i32 1, i64 %_local3517
  %_elem3519 = load i64, i64* %_ptr3518
  %_bop3520 = mul i64 %_elem3512, %_elem3519
  %_bop3521 = add i64 %_elem3505, %_bop3520
  %_local3522 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33489
  %_local3523 = load i64, i64* %_i3490
  %_ptr3524 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3522, i32 0, i32 1, i64 %_local3523
  %_elem3525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3524
  %_local3526 = load i64, i64* %_j3493
  %_ind_assign3527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3525, i32 0, i32 1, i64 %_local3526
  store i64 %_bop3521, i64* %_ind_assign3527
  %_local3528 = load i64, i64* %_k3496
  %_bop3529 = add i64 %_local3528, 1
  store i64 %_bop3529, i64* %_k3496
  br label %_while3530
_elihw3532:
  %_local3533 = load i64, i64* %_j3493
  %_bop3534 = add i64 %_local3533, 1
  store i64 %_bop3534, i64* %_j3493
  br label %_while3535
_elihw3537:
  %_local3538 = load i64, i64* %_i3490
  %_bop3539 = add i64 %_local3538, 1
  store i64 %_bop3539, i64* %_i3490
  br label %_while3540
_elihw3542:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13451, { i64, [0 x { i64, [0 x i64] }*] }* %_a23452, { i64, [0 x { i64, [0 x i64] }*] }* %_a33453) {
  %_a13454 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13451, { i64, [0 x { i64, [0 x i64] }*] }** %_a13454
  %_a23455 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23452, { i64, [0 x { i64, [0 x i64] }*] }** %_a23455
  %_a33456 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33453, { i64, [0 x { i64, [0 x i64] }*] }** %_a33456
  %_i3457 = alloca i64
  store i64 0, i64* %_i3457
  br label %_while3481
_while3481:
  %_local3458 = load i64, i64* %_i3457
  %_bop3459 = icmp slt i64 %_local3458, 2
  br i1 %_bop3459, label %_do3482, label %_elihw3483
_do3482:
  %_j3460 = alloca i64
  store i64 0, i64* %_j3460
  br label %_while3476
_while3476:
  %_local3461 = load i64, i64* %_j3460
  %_bop3462 = icmp slt i64 %_local3461, 4
  br i1 %_bop3462, label %_do3477, label %_elihw3478
_do3477:
  %_local3463 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13454
  %_local3464 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23455
  %_local3465 = load i64, i64* %_i3457
  %_local3466 = load i64, i64* %_j3460
  %_ret3467 = call i64 @_dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_local3463, { i64, [0 x { i64, [0 x i64] }*] }* %_local3464, i64 %_local3465, i64 %_local3466)
  %_local3468 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33456
  %_local3469 = load i64, i64* %_i3457
  %_ptr3470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3468, i32 0, i32 1, i64 %_local3469
  %_elem3471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3470
  %_local3472 = load i64, i64* %_j3460
  %_ind_assign3473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3471, i32 0, i32 1, i64 %_local3472
  store i64 %_ret3467, i64* %_ind_assign3473
  %_local3474 = load i64, i64* %_j3460
  %_bop3475 = add i64 %_local3474, 1
  store i64 %_bop3475, i64* %_j3460
  br label %_while3476
_elihw3478:
  %_local3479 = load i64, i64* %_i3457
  %_bop3480 = add i64 %_local3479, 1
  store i64 %_bop3480, i64* %_i3457
  br label %_while3481
_elihw3483:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13416, { i64, [0 x { i64, [0 x i64] }*] }* %_a23417, i64 %_row3418, i64 %_col3419) {
  %_a13420 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13416, { i64, [0 x { i64, [0 x i64] }*] }** %_a13420
  %_a23421 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23417, { i64, [0 x { i64, [0 x i64] }*] }** %_a23421
  %_row3422 = alloca i64
  store i64 %_row3418, i64* %_row3422
  %_col3423 = alloca i64
  store i64 %_col3419, i64* %_col3423
  %sum = alloca i64
  store i64 0, i64* %sum
  %_k3424 = alloca i64
  store i64 0, i64* %_k3424
  br label %_while3446
_while3446:
  %_local3425 = load i64, i64* %_k3424
  %_bop3426 = icmp slt i64 %_local3425, 3
  br i1 %_bop3426, label %_do3447, label %_elihw3448
_do3447:
  %_local3427 = load i64, i64* %sum
  %_local3428 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13420
  %_local3429 = load i64, i64* %_row3422
  %_ptr3430 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3428, i32 0, i32 1, i64 %_local3429
  %_elem3431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3430
  %_local3432 = load i64, i64* %_k3424
  %_ptr3433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3431, i32 0, i32 1, i64 %_local3432
  %_elem3434 = load i64, i64* %_ptr3433
  %_local3435 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23421
  %_local3436 = load i64, i64* %_k3424
  %_ptr3437 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3435, i32 0, i32 1, i64 %_local3436
  %_elem3438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3437
  %_local3439 = load i64, i64* %_col3423
  %_ptr3440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3438, i32 0, i32 1, i64 %_local3439
  %_elem3441 = load i64, i64* %_ptr3440
  %_bop3442 = mul i64 %_elem3434, %_elem3441
  %_bop3443 = add i64 %_local3427, %_bop3442
  store i64 %_bop3443, i64* %sum
  %_local3444 = load i64, i64* %_k3424
  %_bop3445 = add i64 %_local3444, 1
  store i64 %_bop3445, i64* %_k3424
  br label %_while3446
_elihw3448:
  %_local3450 = load i64, i64* %sum
  %_fun_return3449 = bitcast i64 %_local3450 to i64
  ret i64 %_fun_return3449
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3380, i64 %_n3381) {
  %_ar3382 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3380, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3382
  %_n3383 = alloca i64
  store i64 %_n3381, i64* %_n3383
  %_i3384 = alloca i64
  store i64 0, i64* %_i3384
  br label %_while3413
_while3413:
  %_local3385 = load i64, i64* %_i3384
  %_local3386 = load i64, i64* %_n3383
  %_bop3387 = icmp slt i64 %_local3385, %_local3386
  br i1 %_bop3387, label %_do3414, label %_elihw3415
_do3414:
  %_j3388 = alloca i64
  store i64 0, i64* %_j3388
  br label %_while3404
_while3404:
  %_local3389 = load i64, i64* %_j3388
  %_bop3390 = icmp slt i64 %_local3389, 4
  br i1 %_bop3390, label %_do3405, label %_elihw3406
_do3405:
  %_local3391 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3382
  %_local3392 = load i64, i64* %_i3384
  %_ptr3393 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local3391, i32 0, i32 1, i64 %_local3392
  %_elem3394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr3393
  %_local3395 = load i64, i64* %_j3388
  %_ptr3396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem3394, i32 0, i32 1, i64 %_local3395
  %_elem3397 = load i64, i64* %_ptr3396
  call void @print_int(i64 %_elem3397)
  %_raw_array3399 = call i64* @oat_alloc_array(i64 1)
  %_array3400 = bitcast i64* %_raw_array3399 to { i64, [0 x i64] }*
  %_ind3401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3400, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind3401
  %_strr_arr3398 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3400)
  call void @print_string(i8* %_strr_arr3398)
  %_local3402 = load i64, i64* %_j3388
  %_bop3403 = add i64 %_local3402, 1
  store i64 %_bop3403, i64* %_j3388
  br label %_while3404
_elihw3406:
  %_raw_array3408 = call i64* @oat_alloc_array(i64 1)
  %_array3409 = bitcast i64* %_raw_array3408 to { i64, [0 x i64] }*
  %_ind3410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3409, i32 0, i32 1, i32 0
  store i64 9, i64* %_ind3410
  %_strr_arr3407 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3409)
  call void @print_string(i8* %_strr_arr3407)
  %_local3411 = load i64, i64* %_i3384
  %_bop3412 = add i64 %_local3411, 1
  store i64 %_bop3412, i64* %_i3384
  br label %_while3413
_elihw3415:
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
