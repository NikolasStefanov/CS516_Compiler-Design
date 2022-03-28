; generated from: hw4programs/xor_shift.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @xor(i64 %_x3828, i64 %_y3829) {
  %_x3830 = alloca i64
  store i64 %_x3828, i64* %_x3830
  %_y3831 = alloca i64
  store i64 %_y3829, i64* %_y3831
  %_local3833 = load i64, i64* %_x3830
  %_local3834 = load i64, i64* %_y3831
  %_bop3835 = and i64 %_local3833, %_local3834
  %_uop3836 = xor i64 %_bop3835, -1
  %_local3837 = load i64, i64* %_x3830
  %_local3838 = load i64, i64* %_y3831
  %_bop3839 = or i64 %_local3837, %_local3838
  %_bop3840 = and i64 %_uop3836, %_bop3839
  %_fun_return3832 = bitcast i64 %_bop3840 to i64
  ret i64 %_fun_return3832
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s3796) {
  %_s3797 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_s3796, { i64, [0 x i64] }** %_s3797
  %_local3798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3797
  %_ptr3799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3798, i32 0, i32 1, i32 0
  %_elem3800 = load i64, i64* %_ptr3799
  %x = alloca i64
  store i64 %_elem3800, i64* %x
  %_local3801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3797
  %_ptr3802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3801, i32 0, i32 1, i32 1
  %_elem3803 = load i64, i64* %_ptr3802
  %y = alloca i64
  store i64 %_elem3803, i64* %y
  %_local3804 = load i64, i64* %y
  %_local3805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3797
  %_ind_assign3806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3805, i32 0, i32 1, i32 0
  store i64 %_local3804, i64* %_ind_assign3806
  %_local3807 = load i64, i64* %x
  %_local3808 = load i64, i64* %x
  %_bop3809 = shl i64 %_local3808, 23
  %_ret3810 = call i64 @_xor(i64 %_local3807, i64 %_bop3809)
  store i64 %_ret3810, i64* %x
  %_local3811 = load i64, i64* %x
  %_local3812 = load i64, i64* %x
  %_bop3813 = lshr i64 %_local3812, 17
  %_ret3814 = call i64 @_xor(i64 %_local3811, i64 %_bop3813)
  store i64 %_ret3814, i64* %x
  %_local3815 = load i64, i64* %x
  %_local3816 = load i64, i64* %y
  %_local3817 = load i64, i64* %y
  %_bop3818 = lshr i64 %_local3817, 26
  %_ret3819 = call i64 @_xor(i64 %_local3816, i64 %_bop3818)
  %_ret3820 = call i64 @_xor(i64 %_local3815, i64 %_ret3819)
  store i64 %_ret3820, i64* %x
  %_local3821 = load i64, i64* %x
  %_local3822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3797
  %_ind_assign3823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3822, i32 0, i32 1, i32 1
  store i64 %_local3821, i64* %_ind_assign3823
  %_local3825 = load i64, i64* %x
  %_local3826 = load i64, i64* %y
  %_bop3827 = add i64 %_local3825, %_local3826
  %_fun_return3824 = bitcast i64 %_bop3827 to i64
  ret i64 %_fun_return3824
}

define i64 @program(i64 %_argc3767, { i64, [0 x i8*] }* %_argv3768) {
  %_argc3769 = alloca i64
  store i64 %_argc3767, i64* %_argc3769
  %_argv3770 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3768, { i64, [0 x i8*] }** %_argv3770
  %_raw_array3771 = call i64* @oat_alloc_array(i64 2)
  %_array3772 = bitcast i64* %_raw_array3771 to { i64, [0 x i64] }*
  %seed = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3772, { i64, [0 x i64] }** %seed
  %_i3773 = alloca i64
  store i64 0, i64* %_i3773
  br label %_while3784
_while3784:
  %_local3774 = load i64, i64* %_i3773
  %_bop3775 = icmp slt i64 %_local3774, 2
  br i1 %_bop3775, label %_do3785, label %_elihw3786
_do3785:
  %_local3776 = load i64, i64* %_i3773
  %_bop3777 = add i64 %_local3776, 1
  %_bop3778 = mul i64 100, %_bop3777
  %_local3779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  %_local3780 = load i64, i64* %_i3773
  %_ind_assign3781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3779, i32 0, i32 1, i64 %_local3780
  store i64 %_bop3778, i64* %_ind_assign3781
  %_local3782 = load i64, i64* %_i3773
  %_bop3783 = add i64 %_local3782, 1
  store i64 %_bop3783, i64* %_i3773
  br label %_while3784
_elihw3786:
  %_local3787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  %_ret3788 = call i64 @_xor_shift_plus({ i64, [0 x i64] }* %_local3787)
  call void @print_int(i64 %_ret3788)
  %_raw_array3790 = call i64* @oat_alloc_array(i64 1)
  %_array3791 = bitcast i64* %_raw_array3790 to { i64, [0 x i64] }*
  %_ind3792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3791, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind3792
  %_strr_arr3789 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3791)
  call void @print_string(i8* %_strr_arr3789)
  %_local3793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  %_ret3794 = call i64 @_xor_shift_plus({ i64, [0 x i64] }* %_local3793)
  call void @print_int(i64 %_ret3794)
  %_fun_return3795 = bitcast i64 0 to i64
  ret i64 %_fun_return3795
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
