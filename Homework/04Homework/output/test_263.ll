; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %_n3726) {
  %_n3727 = alloca i64
  store i64 %_n3726, i64* %_n3727
  %_local3728 = load i64, i64* %_n3727
  %_raw_array3729 = call i64* @oat_alloc_array(i64 %_local3728)
  %_array3730 = bitcast i64* %_raw_array3729 to { i64, [0 x i1] }*
  %arr = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3730, { i64, [0 x i1] }** %arr
  %_i3731 = alloca i64
  store i64 0, i64* %_i3731
  br label %_while3740
_while3740:
  %_local3732 = load i64, i64* %_i3731
  %_local3733 = load i64, i64* %_n3727
  %_bop3734 = icmp slt i64 %_local3732, %_local3733
  br i1 %_bop3734, label %_do3741, label %_elihw3742
_do3741:
  %_local3735 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3736 = load i64, i64* %_i3731
  %_ind_assign3737 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3735, i32 0, i32 1, i64 %_local3736
  store i1 1, i1* %_ind_assign3737
  %_local3738 = load i64, i64* %_i3731
  %_bop3739 = add i64 %_local3738, 1
  store i64 %_bop3739, i64* %_i3731
  br label %_while3740
_elihw3742:
  %_local3743 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_ind_assign3744 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3743, i32 0, i32 1, i32 0
  store i1 0, i1* %_ind_assign3744
  %_local3745 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_ind_assign3746 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3745, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind_assign3746
  %_i3747 = alloca i64
  store i64 0, i64* %_i3747
  br label %_while3775
_while3775:
  %_local3748 = load i64, i64* %_i3747
  %_local3749 = load i64, i64* %_n3727
  %_bop3750 = icmp slt i64 %_local3748, %_local3749
  br i1 %_bop3750, label %_do3776, label %_elihw3777
_do3776:
  %_local3751 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3752 = load i64, i64* %_i3747
  %_ptr3753 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3751, i32 0, i32 1, i64 %_local3752
  %_elem3754 = load i1, i1* %_ptr3753
  br i1 %_elem3754, label %_if3770, label %_else3771
_if3770:
  %_local3756 = load i64, i64* %_i3747
  %_bop3757 = mul i64 %_local3756, 2
  %_j3755 = alloca i64
  store i64 %_bop3757, i64* %_j3755
  br label %_while3767
_while3767:
  %_local3758 = load i64, i64* %_j3755
  %_local3759 = load i64, i64* %_n3727
  %_bop3760 = icmp slt i64 %_local3758, %_local3759
  br i1 %_bop3760, label %_do3768, label %_elihw3769
_do3768:
  %_local3761 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3762 = load i64, i64* %_j3755
  %_ind_assign3763 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3761, i32 0, i32 1, i64 %_local3762
  store i1 0, i1* %_ind_assign3763
  %_local3764 = load i64, i64* %_j3755
  %_local3765 = load i64, i64* %_i3747
  %_bop3766 = add i64 %_local3764, %_local3765
  store i64 %_bop3766, i64* %_j3755
  br label %_while3767
_elihw3769:
  br label %_fi3772
_else3771:
  br label %_fi3772
_fi3772:
  %_local3773 = load i64, i64* %_i3747
  %_bop3774 = add i64 %_local3773, 1
  store i64 %_bop3774, i64* %_i3747
  br label %_while3775
_elihw3777:
  %count = alloca i64
  store i64 0, i64* %count
  %_i3778 = alloca i64
  store i64 0, i64* %_i3778
  br label %_while3793
_while3793:
  %_local3779 = load i64, i64* %_i3778
  %_local3780 = load i64, i64* %_n3727
  %_bop3781 = icmp slt i64 %_local3779, %_local3780
  br i1 %_bop3781, label %_do3794, label %_elihw3795
_do3794:
  %_local3782 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3783 = load i64, i64* %_i3778
  %_ptr3784 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3782, i32 0, i32 1, i64 %_local3783
  %_elem3785 = load i1, i1* %_ptr3784
  br i1 %_elem3785, label %_if3788, label %_else3789
_if3788:
  %_local3786 = load i64, i64* %count
  %_bop3787 = add i64 %_local3786, 1
  store i64 %_bop3787, i64* %count
  br label %_fi3790
_else3789:
  br label %_fi3790
_fi3790:
  %_local3791 = load i64, i64* %_i3778
  %_bop3792 = add i64 %_local3791, 1
  store i64 %_bop3792, i64* %_i3778
  br label %_while3793
_elihw3795:
  %_local3797 = load i64, i64* %count
  %_fun_return3796 = bitcast i64 %_local3797 to i64
  ret i64 %_fun_return3796
}

define i64 @program(i64 %_argc3719, { i64, [0 x i8*] }* %_argv3720) {
  %_argc3721 = alloca i64
  store i64 %_argc3719, i64* %_argc3721
  %_argv3722 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3720, { i64, [0 x i8*] }** %_argv3722
  %n = alloca i64
  store i64 100, i64* %n
  %_local3724 = load i64, i64* %n
  %_ret3725 = call i64 @_sieve(i64 %_local3724)
  %_fun_return3723 = bitcast i64 %_ret3725 to i64
  ret i64 %_fun_return3723
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
