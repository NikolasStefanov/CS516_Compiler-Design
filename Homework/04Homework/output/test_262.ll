; generated from: hw4programs/xor_shift.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @xor(i64 %_x3706, i64 %_y3707) {
  %_x3708 = alloca i64
  store i64 %_x3706, i64* %_x3708
  %_y3709 = alloca i64
  store i64 %_y3707, i64* %_y3709
  %_local3711 = load i64, i64* %_x3708
  %_local3712 = load i64, i64* %_y3709
  %_bop3713 = and i64 %_local3711, %_local3712
  %_uop3714 = xor i64 %_bop3713, -1
  %_local3715 = load i64, i64* %_x3708
  %_local3716 = load i64, i64* %_y3709
  %_bop3717 = or i64 %_local3715, %_local3716
  %_bop3718 = and i64 %_uop3714, %_bop3717
  %_fun_return3710 = bitcast i64 %_bop3718 to i64
  ret i64 %_fun_return3710
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s3674) {
  %_s3675 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_s3674, { i64, [0 x i64] }** %_s3675
  %_local3676 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3675
  %_ptr3677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3676, i32 0, i32 1, i32 0
  %_elem3678 = load i64, i64* %_ptr3677
  %x = alloca i64
  store i64 %_elem3678, i64* %x
  %_local3679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3675
  %_ptr3680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3679, i32 0, i32 1, i32 1
  %_elem3681 = load i64, i64* %_ptr3680
  %y = alloca i64
  store i64 %_elem3681, i64* %y
  %_local3682 = load i64, i64* %y
  %_local3683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3675
  %_ind_assign3684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3683, i32 0, i32 1, i32 0
  store i64 %_local3682, i64* %_ind_assign3684
  %_local3685 = load i64, i64* %x
  %_local3686 = load i64, i64* %x
  %_bop3687 = shl i64 %_local3686, 23
  %_ret3688 = call i64 @_xor(i64 %_local3685, i64 %_bop3687)
  store i64 %_ret3688, i64* %x
  %_local3689 = load i64, i64* %x
  %_local3690 = load i64, i64* %x
  %_bop3691 = lshr i64 %_local3690, 17
  %_ret3692 = call i64 @_xor(i64 %_local3689, i64 %_bop3691)
  store i64 %_ret3692, i64* %x
  %_local3693 = load i64, i64* %x
  %_local3694 = load i64, i64* %y
  %_local3695 = load i64, i64* %y
  %_bop3696 = lshr i64 %_local3695, 26
  %_ret3697 = call i64 @_xor(i64 %_local3694, i64 %_bop3696)
  %_ret3698 = call i64 @_xor(i64 %_local3693, i64 %_ret3697)
  store i64 %_ret3698, i64* %x
  %_local3699 = load i64, i64* %x
  %_local3700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3675
  %_ind_assign3701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3700, i32 0, i32 1, i32 1
  store i64 %_local3699, i64* %_ind_assign3701
  %_local3703 = load i64, i64* %x
  %_local3704 = load i64, i64* %y
  %_bop3705 = add i64 %_local3703, %_local3704
  %_fun_return3702 = bitcast i64 %_bop3705 to i64
  ret i64 %_fun_return3702
}

define i64 @program(i64 %_argc3645, { i64, [0 x i8*] }* %_argv3646) {
  %_argc3647 = alloca i64
  store i64 %_argc3645, i64* %_argc3647
  %_argv3648 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3646, { i64, [0 x i8*] }** %_argv3648
  %_raw_array3649 = call i64* @oat_alloc_array(i64 2)
  %_array3650 = bitcast i64* %_raw_array3649 to { i64, [0 x i64] }*
  %seed = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3650, { i64, [0 x i64] }** %seed
  %_i3651 = alloca i64
  store i64 0, i64* %_i3651
  br label %_while3662
_while3662:
  %_local3652 = load i64, i64* %_i3651
  %_bop3653 = icmp slt i64 %_local3652, 2
  br i1 %_bop3653, label %_do3663, label %_elihw3664
_do3663:
  %_local3654 = load i64, i64* %_i3651
  %_bop3655 = add i64 %_local3654, 1
  %_bop3656 = mul i64 100, %_bop3655
  %_local3657 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  %_local3658 = load i64, i64* %_i3651
  %_ind_assign3659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3657, i32 0, i32 1, i64 %_local3658
  store i64 %_bop3656, i64* %_ind_assign3659
  %_local3660 = load i64, i64* %_i3651
  %_bop3661 = add i64 %_local3660, 1
  store i64 %_bop3661, i64* %_i3651
  br label %_while3662
_elihw3664:
  %_local3665 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  %_ret3666 = call i64 @_xor_shift_plus({ i64, [0 x i64] }* %_local3665)
  call void @print_int(i64 %_ret3666)
  %_raw_array3668 = call i64* @oat_alloc_array(i64 1)
  %_array3669 = bitcast i64* %_raw_array3668 to { i64, [0 x i64] }*
  %_ind3670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3669, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind3670
  %_strr_arr3667 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3669)
  call void @print_string(i8* %_strr_arr3667)
  %_local3671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  %_ret3672 = call i64 @_xor_shift_plus({ i64, [0 x i64] }* %_local3671)
  call void @print_int(i64 %_ret3672)
  %_fun_return3673 = bitcast i64 0 to i64
  ret i64 %_fun_return3673
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
