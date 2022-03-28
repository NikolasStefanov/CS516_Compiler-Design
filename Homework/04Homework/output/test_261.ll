; generated from: hw4programs/binary_search.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @euclid_division(i64 %_numerator3586, i64 %_denominator3587) {
  %_numerator3588 = alloca i64
  store i64 %_numerator3586, i64* %_numerator3588
  %_denominator3589 = alloca i64
  store i64 %_denominator3587, i64* %_denominator3589
  %_local3590 = load i64, i64* %_denominator3589
  %_bop3591 = icmp slt i64 %_local3590, 0
  br i1 %_bop3591, label %_if3598, label %_else3599
_if3598:
  %_local3593 = load i64, i64* %_numerator3588
  %_local3594 = load i64, i64* %_denominator3589
  %_uop3595 = mul i64 %_local3594, -1
  %_ret3596 = call i64 @_euclid_division(i64 %_local3593, i64 %_uop3595)
  %_uop3597 = mul i64 %_ret3596, -1
  %_fun_return3592 = bitcast i64 %_uop3597 to i64
  ret i64 %_fun_return3592
_else3599:
  br label %_fi3600
_fi3600:
  %quotient = alloca i64
  store i64 0, i64* %quotient
  %_local3601 = load i64, i64* %_numerator3588
  %remainder = alloca i64
  store i64 %_local3601, i64* %remainder
  %_local3602 = load i64, i64* %_numerator3588
  %_bop3603 = icmp slt i64 %_local3602, 0
  br i1 %_bop3603, label %_if3629, label %_else3630
_if3629:
  %_local3604 = load i64, i64* %_numerator3588
  %_uop3605 = mul i64 %_local3604, -1
  store i64 %_uop3605, i64* %remainder
  br label %_while3614
_while3614:
  %_local3606 = load i64, i64* %remainder
  %_local3607 = load i64, i64* %_denominator3589
  %_bop3608 = icmp sge i64 %_local3606, %_local3607
  br i1 %_bop3608, label %_do3615, label %_elihw3616
_do3615:
  %_local3609 = load i64, i64* %quotient
  %_bop3610 = add i64 %_local3609, 1
  store i64 %_bop3610, i64* %quotient
  %_local3611 = load i64, i64* %remainder
  %_local3612 = load i64, i64* %_denominator3589
  %_bop3613 = sub i64 %_local3611, %_local3612
  store i64 %_bop3613, i64* %remainder
  br label %_while3614
_elihw3616:
  %_local3617 = load i64, i64* %remainder
  %_bop3618 = icmp eq i64 %_local3617, 0
  br i1 %_bop3618, label %_if3626, label %_else3627
_if3626:
  %_local3620 = load i64, i64* %quotient
  %_uop3621 = mul i64 %_local3620, -1
  %_fun_return3619 = bitcast i64 %_uop3621 to i64
  ret i64 %_fun_return3619
_else3627:
  %_local3623 = load i64, i64* %quotient
  %_uop3624 = mul i64 %_local3623, -1
  %_bop3625 = sub i64 %_uop3624, 1
  %_fun_return3622 = bitcast i64 %_bop3625 to i64
  ret i64 %_fun_return3622
_fi3628:
  br label %_fi3631
_else3630:
  br label %_fi3631
_fi3631:
  br label %_while3640
_while3640:
  %_local3632 = load i64, i64* %remainder
  %_local3633 = load i64, i64* %_denominator3589
  %_bop3634 = icmp sge i64 %_local3632, %_local3633
  br i1 %_bop3634, label %_do3641, label %_elihw3642
_do3641:
  %_local3635 = load i64, i64* %quotient
  %_bop3636 = add i64 %_local3635, 1
  store i64 %_bop3636, i64* %quotient
  %_local3637 = load i64, i64* %remainder
  %_local3638 = load i64, i64* %_denominator3589
  %_bop3639 = sub i64 %_local3637, %_local3638
  store i64 %_bop3639, i64* %remainder
  br label %_while3640
_elihw3642:
  %_local3644 = load i64, i64* %quotient
  %_fun_return3643 = bitcast i64 %_local3644 to i64
  ret i64 %_fun_return3643
}

define i1 @binary_search({ i64, [0 x i64] }* %_input3534, i64 %_key3535, i64 %_min3536, i64 %_max3537) {
  %_input3538 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_input3534, { i64, [0 x i64] }** %_input3538
  %_key3539 = alloca i64
  store i64 %_key3535, i64* %_key3539
  %_min3540 = alloca i64
  store i64 %_min3536, i64* %_min3540
  %_max3541 = alloca i64
  store i64 %_max3537, i64* %_max3541
  %_local3542 = load i64, i64* %_max3541
  %_local3543 = load i64, i64* %_min3540
  %_bop3544 = icmp slt i64 %_local3542, %_local3543
  br i1 %_bop3544, label %_if3546, label %_else3547
_if3546:
  %_fun_return3545 = bitcast i1 0 to i1
  ret i1 %_fun_return3545
_else3547:
  br label %_fi3548
_fi3548:
  %_local3549 = load i64, i64* %_max3541
  %_local3550 = load i64, i64* %_min3540
  %_bop3551 = add i64 %_local3549, %_local3550
  %_ret3552 = call i64 @_euclid_division(i64 %_bop3551, i64 2)
  %midpt = alloca i64
  store i64 %_ret3552, i64* %midpt
  %_local3553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3538
  %_local3554 = load i64, i64* %midpt
  %_ptr3555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3553, i32 0, i32 1, i64 %_local3554
  %_elem3556 = load i64, i64* %_ptr3555
  %_local3557 = load i64, i64* %_key3539
  %_bop3558 = icmp sgt i64 %_elem3556, %_local3557
  br i1 %_bop3558, label %_if3566, label %_else3567
_if3566:
  %_local3560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3538
  %_local3561 = load i64, i64* %_key3539
  %_local3562 = load i64, i64* %_min3540
  %_local3563 = load i64, i64* %midpt
  %_bop3564 = sub i64 %_local3563, 1
  %_ret3565 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3560, i64 %_local3561, i64 %_local3562, i64 %_bop3564)
  %_fun_return3559 = bitcast i1 %_ret3565 to i1
  ret i1 %_fun_return3559
_else3567:
  br label %_fi3568
_fi3568:
  %_local3569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3538
  %_local3570 = load i64, i64* %midpt
  %_ptr3571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3569, i32 0, i32 1, i64 %_local3570
  %_elem3572 = load i64, i64* %_ptr3571
  %_local3573 = load i64, i64* %_key3539
  %_bop3574 = icmp slt i64 %_elem3572, %_local3573
  br i1 %_bop3574, label %_if3583, label %_else3584
_if3583:
  %_local3576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3538
  %_local3577 = load i64, i64* %_key3539
  %_local3578 = load i64, i64* %midpt
  %_bop3579 = add i64 %_local3578, 1
  %_local3580 = load i64, i64* %_max3541
  %_ret3581 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3576, i64 %_local3577, i64 %_bop3579, i64 %_local3580)
  %_fun_return3575 = bitcast i1 %_ret3581 to i1
  ret i1 %_fun_return3575
_else3584:
  %_fun_return3582 = bitcast i1 1 to i1
  ret i1 %_fun_return3582
}

define i64 @program(i64 %_argc3487, { i64, [0 x i8*] }* %_argv3488) {
  %_argc3489 = alloca i64
  store i64 %_argc3487, i64* %_argc3489
  %_argv3490 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3488, { i64, [0 x i8*] }** %_argv3490
  %_raw_array3491 = call i64* @oat_alloc_array(i64 100)
  %_array3492 = bitcast i64* %_raw_array3491 to { i64, [0 x i64] }*
  %test_array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3492, { i64, [0 x i64] }** %test_array
  %_i3493 = alloca i64
  store i64 0, i64* %_i3493
  br label %_while3504
_while3504:
  %_local3494 = load i64, i64* %_i3493
  %_bop3495 = icmp slt i64 %_local3494, 100
  br i1 %_bop3495, label %_do3505, label %_elihw3506
_do3505:
  %_local3496 = load i64, i64* %_i3493
  %_bop3497 = mul i64 2, %_local3496
  %_bop3498 = add i64 %_bop3497, 1
  %_local3499 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_local3500 = load i64, i64* %_i3493
  %_ind_assign3501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3499, i32 0, i32 1, i64 %_local3500
  store i64 %_bop3498, i64* %_ind_assign3501
  %_local3502 = load i64, i64* %_i3493
  %_bop3503 = add i64 %_local3502, 1
  store i64 %_bop3503, i64* %_i3493
  br label %_while3504
_elihw3506:
  %_local3507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_ret3508 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3507, i64 80, i64 0, i64 99)
  %even = alloca i1
  store i1 %_ret3508, i1* %even
  %_local3509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_ret3510 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3509, i64 81, i64 0, i64 99)
  %odd = alloca i1
  store i1 %_ret3510, i1* %odd
  %_local3511 = load i1, i1* %even
  %_local3512 = load i1, i1* %odd
  %_bop3513 = and i1 %_local3511, %_local3512
  %_uop3514 = xor i1 %_bop3513, 1
  %_local3515 = load i1, i1* %even
  %_local3516 = load i1, i1* %odd
  %_bop3517 = or i1 %_local3515, %_local3516
  %_bop3518 = and i1 %_uop3514, %_bop3517
  br i1 %_bop3518, label %_if3530, label %_else3531
_if3530:
  %_raw_array3520 = call i64* @oat_alloc_array(i64 8)
  %_array3521 = bitcast i64* %_raw_array3520 to { i64, [0 x i64] }*
  %_ind3522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 0
  store i64 67, i64* %_ind3522
  %_ind3523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 1
  store i64 111, i64* %_ind3523
  %_ind3524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 2
  store i64 114, i64* %_ind3524
  %_ind3525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind3525
  %_ind3526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind3526
  %_ind3527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3527
  %_ind3528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 6
  store i64 116, i64* %_ind3528
  %_ind3529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3521, i32 0, i32 1, i32 7
  store i64 33, i64* %_ind3529
  %_strr_arr3519 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3521)
  call void @print_string(i8* %_strr_arr3519)
  br label %_fi3532
_else3531:
  br label %_fi3532
_fi3532:
  %_fun_return3533 = bitcast i64 0 to i64
  ret i64 %_fun_return3533
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
