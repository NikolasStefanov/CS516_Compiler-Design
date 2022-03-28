; generated from: hw4programs/sieve.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @sieve(i64 %_n3848) {
  %_n3849 = alloca i64
  store i64 %_n3848, i64* %_n3849
  %_local3850 = load i64, i64* %_n3849
  %_raw_array3851 = call i64* @oat_alloc_array(i64 %_local3850)
  %_array3852 = bitcast i64* %_raw_array3851 to { i64, [0 x i1] }*
  %arr = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3852, { i64, [0 x i1] }** %arr
  %_i3853 = alloca i64
  store i64 0, i64* %_i3853
  br label %_while3862
_while3862:
  %_local3854 = load i64, i64* %_i3853
  %_local3855 = load i64, i64* %_n3849
  %_bop3856 = icmp slt i64 %_local3854, %_local3855
  br i1 %_bop3856, label %_do3863, label %_elihw3864
_do3863:
  %_local3857 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3858 = load i64, i64* %_i3853
  %_ind_assign3859 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3857, i32 0, i32 1, i64 %_local3858
  store i1 1, i1* %_ind_assign3859
  %_local3860 = load i64, i64* %_i3853
  %_bop3861 = add i64 %_local3860, 1
  store i64 %_bop3861, i64* %_i3853
  br label %_while3862
_elihw3864:
  %_local3865 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_ind_assign3866 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3865, i32 0, i32 1, i32 0
  store i1 0, i1* %_ind_assign3866
  %_local3867 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_ind_assign3868 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3867, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind_assign3868
  %_i3869 = alloca i64
  store i64 0, i64* %_i3869
  br label %_while3897
_while3897:
  %_local3870 = load i64, i64* %_i3869
  %_local3871 = load i64, i64* %_n3849
  %_bop3872 = icmp slt i64 %_local3870, %_local3871
  br i1 %_bop3872, label %_do3898, label %_elihw3899
_do3898:
  %_local3873 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3874 = load i64, i64* %_i3869
  %_ptr3875 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3873, i32 0, i32 1, i64 %_local3874
  %_elem3876 = load i1, i1* %_ptr3875
  br i1 %_elem3876, label %_if3892, label %_else3893
_if3892:
  %_local3878 = load i64, i64* %_i3869
  %_bop3879 = mul i64 %_local3878, 2
  %_j3877 = alloca i64
  store i64 %_bop3879, i64* %_j3877
  br label %_while3889
_while3889:
  %_local3880 = load i64, i64* %_j3877
  %_local3881 = load i64, i64* %_n3849
  %_bop3882 = icmp slt i64 %_local3880, %_local3881
  br i1 %_bop3882, label %_do3890, label %_elihw3891
_do3890:
  %_local3883 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3884 = load i64, i64* %_j3877
  %_ind_assign3885 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3883, i32 0, i32 1, i64 %_local3884
  store i1 0, i1* %_ind_assign3885
  %_local3886 = load i64, i64* %_j3877
  %_local3887 = load i64, i64* %_i3869
  %_bop3888 = add i64 %_local3886, %_local3887
  store i64 %_bop3888, i64* %_j3877
  br label %_while3889
_elihw3891:
  br label %_fi3894
_else3893:
  br label %_fi3894
_fi3894:
  %_local3895 = load i64, i64* %_i3869
  %_bop3896 = add i64 %_local3895, 1
  store i64 %_bop3896, i64* %_i3869
  br label %_while3897
_elihw3899:
  %count = alloca i64
  store i64 0, i64* %count
  %_i3900 = alloca i64
  store i64 0, i64* %_i3900
  br label %_while3915
_while3915:
  %_local3901 = load i64, i64* %_i3900
  %_local3902 = load i64, i64* %_n3849
  %_bop3903 = icmp slt i64 %_local3901, %_local3902
  br i1 %_bop3903, label %_do3916, label %_elihw3917
_do3916:
  %_local3904 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %arr
  %_local3905 = load i64, i64* %_i3900
  %_ptr3906 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local3904, i32 0, i32 1, i64 %_local3905
  %_elem3907 = load i1, i1* %_ptr3906
  br i1 %_elem3907, label %_if3910, label %_else3911
_if3910:
  %_local3908 = load i64, i64* %count
  %_bop3909 = add i64 %_local3908, 1
  store i64 %_bop3909, i64* %count
  br label %_fi3912
_else3911:
  br label %_fi3912
_fi3912:
  %_local3913 = load i64, i64* %_i3900
  %_bop3914 = add i64 %_local3913, 1
  store i64 %_bop3914, i64* %_i3900
  br label %_while3915
_elihw3917:
  %_local3919 = load i64, i64* %count
  %_fun_return3918 = bitcast i64 %_local3919 to i64
  ret i64 %_fun_return3918
}

define i64 @program(i64 %_argc3841, { i64, [0 x i8*] }* %_argv3842) {
  %_argc3843 = alloca i64
  store i64 %_argc3841, i64* %_argc3843
  %_argv3844 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3842, { i64, [0 x i8*] }** %_argv3844
  %n = alloca i64
  store i64 100, i64* %n
  %_local3846 = load i64, i64* %n
  %_ret3847 = call i64 @_sieve(i64 %_local3846)
  %_fun_return3845 = bitcast i64 %_ret3847 to i64
  ret i64 %_fun_return3845
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
