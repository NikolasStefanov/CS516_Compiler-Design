; generated from: hw4programs/count_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @min({ i64, [0 x i64] }* %_arr3941, i64 %_len3942) {
  %_arr3943 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr3941, { i64, [0 x i64] }** %_arr3943
  %_len3944 = alloca i64
  store i64 %_len3942, i64* %_len3944
  %_local3945 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3943
  %_ptr3946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3945, i32 0, i32 1, i32 0
  %_elem3947 = load i64, i64* %_ptr3946
  %min = alloca i64
  store i64 %_elem3947, i64* %min
  %_i3948 = alloca i64
  store i64 0, i64* %_i3948
  br label %_while3967
_while3967:
  %_local3949 = load i64, i64* %_i3948
  %_local3950 = load i64, i64* %_len3944
  %_bop3951 = icmp slt i64 %_local3949, %_local3950
  br i1 %_bop3951, label %_do3968, label %_elihw3969
_do3968:
  %_local3952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3943
  %_local3953 = load i64, i64* %_i3948
  %_ptr3954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3952, i32 0, i32 1, i64 %_local3953
  %_elem3955 = load i64, i64* %_ptr3954
  %_local3956 = load i64, i64* %min
  %_bop3957 = icmp slt i64 %_elem3955, %_local3956
  br i1 %_bop3957, label %_if3962, label %_else3963
_if3962:
  %_local3958 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3943
  %_local3959 = load i64, i64* %_i3948
  %_ptr3960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3958, i32 0, i32 1, i64 %_local3959
  %_elem3961 = load i64, i64* %_ptr3960
  store i64 %_elem3961, i64* %min
  br label %_fi3964
_else3963:
  br label %_fi3964
_fi3964:
  %_local3965 = load i64, i64* %_i3948
  %_bop3966 = add i64 %_local3965, 1
  store i64 %_bop3966, i64* %_i3948
  br label %_while3967
_elihw3969:
  %_local3971 = load i64, i64* %min
  %_fun_return3970 = bitcast i64 %_local3971 to i64
  ret i64 %_fun_return3970
}

define i64 @max({ i64, [0 x i64] }* %_arr3910, i64 %_len3911) {
  %_arr3912 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr3910, { i64, [0 x i64] }** %_arr3912
  %_len3913 = alloca i64
  store i64 %_len3911, i64* %_len3913
  %_local3914 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3912
  %_ptr3915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3914, i32 0, i32 1, i32 0
  %_elem3916 = load i64, i64* %_ptr3915
  %max = alloca i64
  store i64 %_elem3916, i64* %max
  %_i3917 = alloca i64
  store i64 0, i64* %_i3917
  br label %_while3936
_while3936:
  %_local3918 = load i64, i64* %_i3917
  %_local3919 = load i64, i64* %_len3913
  %_bop3920 = icmp slt i64 %_local3918, %_local3919
  br i1 %_bop3920, label %_do3937, label %_elihw3938
_do3937:
  %_local3921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3912
  %_local3922 = load i64, i64* %_i3917
  %_ptr3923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3921, i32 0, i32 1, i64 %_local3922
  %_elem3924 = load i64, i64* %_ptr3923
  %_local3925 = load i64, i64* %max
  %_bop3926 = icmp sgt i64 %_elem3924, %_local3925
  br i1 %_bop3926, label %_if3931, label %_else3932
_if3931:
  %_local3927 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3912
  %_local3928 = load i64, i64* %_i3917
  %_ptr3929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3927, i32 0, i32 1, i64 %_local3928
  %_elem3930 = load i64, i64* %_ptr3929
  store i64 %_elem3930, i64* %max
  br label %_fi3933
_else3932:
  br label %_fi3933
_fi3933:
  %_local3934 = load i64, i64* %_i3917
  %_bop3935 = add i64 %_local3934, 1
  store i64 %_bop3935, i64* %_i3917
  br label %_while3936
_elihw3938:
  %_local3940 = load i64, i64* %max
  %_fun_return3939 = bitcast i64 %_local3940 to i64
  ret i64 %_fun_return3939
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr3825, i64 %_len3826) {
  %_arr3827 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr3825, { i64, [0 x i64] }** %_arr3827
  %_len3828 = alloca i64
  store i64 %_len3826, i64* %_len3828
  %_local3829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3827
  %_local3830 = load i64, i64* %_len3828
  %_ret3831 = call i64 @_min({ i64, [0 x i64] }* %_local3829, i64 %_local3830)
  %min = alloca i64
  store i64 %_ret3831, i64* %min
  %_local3832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3827
  %_local3833 = load i64, i64* %_len3828
  %_ret3834 = call i64 @_max({ i64, [0 x i64] }* %_local3832, i64 %_local3833)
  %max = alloca i64
  store i64 %_ret3834, i64* %max
  %_local3835 = load i64, i64* %max
  %_local3836 = load i64, i64* %min
  %_bop3837 = sub i64 %_local3835, %_local3836
  %_bop3838 = add i64 %_bop3837, 1
  %_raw_array3839 = call i64* @oat_alloc_array(i64 %_bop3838)
  %_array3840 = bitcast i64* %_raw_array3839 to { i64, [0 x i64] }*
  %counts = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3840, { i64, [0 x i64] }** %counts
  %_i3841 = alloca i64
  store i64 0, i64* %_i3841
  br label %_while3865
_while3865:
  %_local3842 = load i64, i64* %_i3841
  %_local3843 = load i64, i64* %_len3828
  %_bop3844 = icmp slt i64 %_local3842, %_local3843
  br i1 %_bop3844, label %_do3866, label %_elihw3867
_do3866:
  %_local3845 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3827
  %_local3847 = load i64, i64* %_i3841
  %_ptr3848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3846, i32 0, i32 1, i64 %_local3847
  %_elem3849 = load i64, i64* %_ptr3848
  %_local3850 = load i64, i64* %min
  %_bop3851 = sub i64 %_elem3849, %_local3850
  %_ptr3852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3845, i32 0, i32 1, i64 %_bop3851
  %_elem3853 = load i64, i64* %_ptr3852
  %_bop3854 = add i64 %_elem3853, 1
  %_local3855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3856 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3827
  %_local3857 = load i64, i64* %_i3841
  %_ptr3858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3856, i32 0, i32 1, i64 %_local3857
  %_elem3859 = load i64, i64* %_ptr3858
  %_local3860 = load i64, i64* %min
  %_bop3861 = sub i64 %_elem3859, %_local3860
  %_ind_assign3862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3855, i32 0, i32 1, i64 %_bop3861
  store i64 %_bop3854, i64* %_ind_assign3862
  %_local3863 = load i64, i64* %_i3841
  %_bop3864 = add i64 %_local3863, 1
  store i64 %_bop3864, i64* %_i3841
  br label %_while3865
_elihw3867:
  %_local3868 = load i64, i64* %min
  %i = alloca i64
  store i64 %_local3868, i64* %i
  %j = alloca i64
  store i64 0, i64* %j
  %_local3869 = load i64, i64* %_len3828
  %_raw_array3870 = call i64* @oat_alloc_array(i64 %_local3869)
  %_array3871 = bitcast i64* %_raw_array3870 to { i64, [0 x i64] }*
  %out = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3871, { i64, [0 x i64] }** %out
  br label %_while3905
_while3905:
  %_local3872 = load i64, i64* %i
  %_local3873 = load i64, i64* %max
  %_bop3874 = icmp sle i64 %_local3872, %_local3873
  br i1 %_bop3874, label %_do3906, label %_elihw3907
_do3906:
  %_local3875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3876 = load i64, i64* %i
  %_local3877 = load i64, i64* %min
  %_bop3878 = sub i64 %_local3876, %_local3877
  %_ptr3879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3875, i32 0, i32 1, i64 %_bop3878
  %_elem3880 = load i64, i64* %_ptr3879
  %_bop3881 = icmp sgt i64 %_elem3880, 0
  br i1 %_bop3881, label %_if3902, label %_else3903
_if3902:
  %_local3882 = load i64, i64* %i
  %_local3883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_local3884 = load i64, i64* %j
  %_ind_assign3885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3883, i32 0, i32 1, i64 %_local3884
  store i64 %_local3882, i64* %_ind_assign3885
  %_local3886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3887 = load i64, i64* %i
  %_local3888 = load i64, i64* %min
  %_bop3889 = sub i64 %_local3887, %_local3888
  %_ptr3890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3886, i32 0, i32 1, i64 %_bop3889
  %_elem3891 = load i64, i64* %_ptr3890
  %_bop3892 = sub i64 %_elem3891, 1
  %_local3893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3894 = load i64, i64* %i
  %_local3895 = load i64, i64* %min
  %_bop3896 = sub i64 %_local3894, %_local3895
  %_ind_assign3897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3893, i32 0, i32 1, i64 %_bop3896
  store i64 %_bop3892, i64* %_ind_assign3897
  %_local3898 = load i64, i64* %j
  %_bop3899 = add i64 %_local3898, 1
  store i64 %_bop3899, i64* %j
  br label %_fi3904
_else3903:
  %_local3900 = load i64, i64* %i
  %_bop3901 = add i64 %_local3900, 1
  store i64 %_bop3901, i64* %i
  br label %_fi3904
_fi3904:
  br label %_while3905
_elihw3907:
  %_local3909 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_fun_return3908 = bitcast { i64, [0 x i64] }* %_local3909 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return3908
}

define i64 @program(i64 %_argc3798, { i64, [0 x i8*] }* %_argv3799) {
  %_argc3800 = alloca i64
  store i64 %_argc3798, i64* %_argc3800
  %_argv3801 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3799, { i64, [0 x i8*] }** %_argv3801
  %_raw_array3802 = call i64* @oat_alloc_array(i64 9)
  %_array3803 = bitcast i64* %_raw_array3802 to { i64, [0 x i64] }*
  %_ind3804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind3804
  %_ind3805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind3805
  %_ind3806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind3806
  %_ind3807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind3807
  %_ind3808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind3808
  %_ind3809 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind3809
  %_ind3810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind3810
  %_ind3811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind3811
  %_ind3812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3803, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind3812
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3803, { i64, [0 x i64] }** %arr
  %len = alloca i64
  store i64 9, i64* %len
  %_local3813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ret3814 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3813)
  call void @print_string(i8* %_ret3814)
  %_raw_array3816 = call i64* @oat_alloc_array(i64 1)
  %_array3817 = bitcast i64* %_raw_array3816 to { i64, [0 x i64] }*
  %_ind3818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3817, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind3818
  %_strr_arr3815 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3817)
  call void @print_string(i8* %_strr_arr3815)
  %_local3819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local3820 = load i64, i64* %len
  %_ret3821 = call { i64, [0 x i64] }* @_count_sort({ i64, [0 x i64] }* %_local3819, i64 %_local3820)
  %sorted = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret3821, { i64, [0 x i64] }** %sorted
  %_local3822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %sorted
  %_ret3823 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3822)
  call void @print_string(i8* %_ret3823)
  %_fun_return3824 = bitcast i64 0 to i64
  ret i64 %_fun_return3824
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
