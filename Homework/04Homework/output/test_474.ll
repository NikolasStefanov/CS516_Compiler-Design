; generated from: hw4programs/binary_search.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @euclid_division(i64 %_numerator3708, i64 %_denominator3709) {
  %_numerator3710 = alloca i64
  store i64 %_numerator3708, i64* %_numerator3710
  %_denominator3711 = alloca i64
  store i64 %_denominator3709, i64* %_denominator3711
  %_local3712 = load i64, i64* %_denominator3711
  %_bop3713 = icmp slt i64 %_local3712, 0
  br i1 %_bop3713, label %_if3720, label %_else3721
_if3720:
  %_local3715 = load i64, i64* %_numerator3710
  %_local3716 = load i64, i64* %_denominator3711
  %_uop3717 = mul i64 %_local3716, -1
  %_ret3718 = call i64 @_euclid_division(i64 %_local3715, i64 %_uop3717)
  %_uop3719 = mul i64 %_ret3718, -1
  %_fun_return3714 = bitcast i64 %_uop3719 to i64
  ret i64 %_fun_return3714
_else3721:
  br label %_fi3722
_fi3722:
  %quotient = alloca i64
  store i64 0, i64* %quotient
  %_local3723 = load i64, i64* %_numerator3710
  %remainder = alloca i64
  store i64 %_local3723, i64* %remainder
  %_local3724 = load i64, i64* %_numerator3710
  %_bop3725 = icmp slt i64 %_local3724, 0
  br i1 %_bop3725, label %_if3751, label %_else3752
_if3751:
  %_local3726 = load i64, i64* %_numerator3710
  %_uop3727 = mul i64 %_local3726, -1
  store i64 %_uop3727, i64* %remainder
  br label %_while3736
_while3736:
  %_local3728 = load i64, i64* %remainder
  %_local3729 = load i64, i64* %_denominator3711
  %_bop3730 = icmp sge i64 %_local3728, %_local3729
  br i1 %_bop3730, label %_do3737, label %_elihw3738
_do3737:
  %_local3731 = load i64, i64* %quotient
  %_bop3732 = add i64 %_local3731, 1
  store i64 %_bop3732, i64* %quotient
  %_local3733 = load i64, i64* %remainder
  %_local3734 = load i64, i64* %_denominator3711
  %_bop3735 = sub i64 %_local3733, %_local3734
  store i64 %_bop3735, i64* %remainder
  br label %_while3736
_elihw3738:
  %_local3739 = load i64, i64* %remainder
  %_bop3740 = icmp eq i64 %_local3739, 0
  br i1 %_bop3740, label %_if3748, label %_else3749
_if3748:
  %_local3742 = load i64, i64* %quotient
  %_uop3743 = mul i64 %_local3742, -1
  %_fun_return3741 = bitcast i64 %_uop3743 to i64
  ret i64 %_fun_return3741
_else3749:
  %_local3745 = load i64, i64* %quotient
  %_uop3746 = mul i64 %_local3745, -1
  %_bop3747 = sub i64 %_uop3746, 1
  %_fun_return3744 = bitcast i64 %_bop3747 to i64
  ret i64 %_fun_return3744
_fi3750:
  br label %_fi3753
_else3752:
  br label %_fi3753
_fi3753:
  br label %_while3762
_while3762:
  %_local3754 = load i64, i64* %remainder
  %_local3755 = load i64, i64* %_denominator3711
  %_bop3756 = icmp sge i64 %_local3754, %_local3755
  br i1 %_bop3756, label %_do3763, label %_elihw3764
_do3763:
  %_local3757 = load i64, i64* %quotient
  %_bop3758 = add i64 %_local3757, 1
  store i64 %_bop3758, i64* %quotient
  %_local3759 = load i64, i64* %remainder
  %_local3760 = load i64, i64* %_denominator3711
  %_bop3761 = sub i64 %_local3759, %_local3760
  store i64 %_bop3761, i64* %remainder
  br label %_while3762
_elihw3764:
  %_local3766 = load i64, i64* %quotient
  %_fun_return3765 = bitcast i64 %_local3766 to i64
  ret i64 %_fun_return3765
}

define i1 @binary_search({ i64, [0 x i64] }* %_input3656, i64 %_key3657, i64 %_min3658, i64 %_max3659) {
  %_input3660 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_input3656, { i64, [0 x i64] }** %_input3660
  %_key3661 = alloca i64
  store i64 %_key3657, i64* %_key3661
  %_min3662 = alloca i64
  store i64 %_min3658, i64* %_min3662
  %_max3663 = alloca i64
  store i64 %_max3659, i64* %_max3663
  %_local3664 = load i64, i64* %_max3663
  %_local3665 = load i64, i64* %_min3662
  %_bop3666 = icmp slt i64 %_local3664, %_local3665
  br i1 %_bop3666, label %_if3668, label %_else3669
_if3668:
  %_fun_return3667 = bitcast i1 0 to i1
  ret i1 %_fun_return3667
_else3669:
  br label %_fi3670
_fi3670:
  %_local3671 = load i64, i64* %_max3663
  %_local3672 = load i64, i64* %_min3662
  %_bop3673 = add i64 %_local3671, %_local3672
  %_ret3674 = call i64 @_euclid_division(i64 %_bop3673, i64 2)
  %midpt = alloca i64
  store i64 %_ret3674, i64* %midpt
  %_local3675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3660
  %_local3676 = load i64, i64* %midpt
  %_ptr3677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3675, i32 0, i32 1, i64 %_local3676
  %_elem3678 = load i64, i64* %_ptr3677
  %_local3679 = load i64, i64* %_key3661
  %_bop3680 = icmp sgt i64 %_elem3678, %_local3679
  br i1 %_bop3680, label %_if3688, label %_else3689
_if3688:
  %_local3682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3660
  %_local3683 = load i64, i64* %_key3661
  %_local3684 = load i64, i64* %_min3662
  %_local3685 = load i64, i64* %midpt
  %_bop3686 = sub i64 %_local3685, 1
  %_ret3687 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3682, i64 %_local3683, i64 %_local3684, i64 %_bop3686)
  %_fun_return3681 = bitcast i1 %_ret3687 to i1
  ret i1 %_fun_return3681
_else3689:
  br label %_fi3690
_fi3690:
  %_local3691 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3660
  %_local3692 = load i64, i64* %midpt
  %_ptr3693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3691, i32 0, i32 1, i64 %_local3692
  %_elem3694 = load i64, i64* %_ptr3693
  %_local3695 = load i64, i64* %_key3661
  %_bop3696 = icmp slt i64 %_elem3694, %_local3695
  br i1 %_bop3696, label %_if3705, label %_else3706
_if3705:
  %_local3698 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3660
  %_local3699 = load i64, i64* %_key3661
  %_local3700 = load i64, i64* %midpt
  %_bop3701 = add i64 %_local3700, 1
  %_local3702 = load i64, i64* %_max3663
  %_ret3703 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3698, i64 %_local3699, i64 %_bop3701, i64 %_local3702)
  %_fun_return3697 = bitcast i1 %_ret3703 to i1
  ret i1 %_fun_return3697
_else3706:
  %_fun_return3704 = bitcast i1 1 to i1
  ret i1 %_fun_return3704
}

define i64 @program(i64 %_argc3609, { i64, [0 x i8*] }* %_argv3610) {
  %_argc3611 = alloca i64
  store i64 %_argc3609, i64* %_argc3611
  %_argv3612 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3610, { i64, [0 x i8*] }** %_argv3612
  %_raw_array3613 = call i64* @oat_alloc_array(i64 100)
  %_array3614 = bitcast i64* %_raw_array3613 to { i64, [0 x i64] }*
  %test_array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3614, { i64, [0 x i64] }** %test_array
  %_i3615 = alloca i64
  store i64 0, i64* %_i3615
  br label %_while3626
_while3626:
  %_local3616 = load i64, i64* %_i3615
  %_bop3617 = icmp slt i64 %_local3616, 100
  br i1 %_bop3617, label %_do3627, label %_elihw3628
_do3627:
  %_local3618 = load i64, i64* %_i3615
  %_bop3619 = mul i64 2, %_local3618
  %_bop3620 = add i64 %_bop3619, 1
  %_local3621 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_local3622 = load i64, i64* %_i3615
  %_ind_assign3623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3621, i32 0, i32 1, i64 %_local3622
  store i64 %_bop3620, i64* %_ind_assign3623
  %_local3624 = load i64, i64* %_i3615
  %_bop3625 = add i64 %_local3624, 1
  store i64 %_bop3625, i64* %_i3615
  br label %_while3626
_elihw3628:
  %_local3629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_ret3630 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3629, i64 80, i64 0, i64 99)
  %even = alloca i1
  store i1 %_ret3630, i1* %even
  %_local3631 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_ret3632 = call i1 @_binary_search({ i64, [0 x i64] }* %_local3631, i64 81, i64 0, i64 99)
  %odd = alloca i1
  store i1 %_ret3632, i1* %odd
  %_local3633 = load i1, i1* %even
  %_local3634 = load i1, i1* %odd
  %_bop3635 = and i1 %_local3633, %_local3634
  %_uop3636 = xor i1 %_bop3635, 1
  %_local3637 = load i1, i1* %even
  %_local3638 = load i1, i1* %odd
  %_bop3639 = or i1 %_local3637, %_local3638
  %_bop3640 = and i1 %_uop3636, %_bop3639
  br i1 %_bop3640, label %_if3652, label %_else3653
_if3652:
  %_raw_array3642 = call i64* @oat_alloc_array(i64 8)
  %_array3643 = bitcast i64* %_raw_array3642 to { i64, [0 x i64] }*
  %_ind3644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 0
  store i64 67, i64* %_ind3644
  %_ind3645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 1
  store i64 111, i64* %_ind3645
  %_ind3646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 2
  store i64 114, i64* %_ind3646
  %_ind3647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind3647
  %_ind3648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind3648
  %_ind3649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3649
  %_ind3650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 6
  store i64 116, i64* %_ind3650
  %_ind3651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3643, i32 0, i32 1, i32 7
  store i64 33, i64* %_ind3651
  %_strr_arr3641 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3643)
  call void @print_string(i8* %_strr_arr3641)
  br label %_fi3654
_else3653:
  br label %_fi3654
_fi3654:
  %_fun_return3655 = bitcast i64 0 to i64
  ret i64 %_fun_return3655
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
