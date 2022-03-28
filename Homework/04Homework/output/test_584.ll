; generated from: hw4programs/count_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @min({ i64, [0 x i64] }* %_arr4063, i64 %_len4064) {
  %_arr4065 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr4063, { i64, [0 x i64] }** %_arr4065
  %_len4066 = alloca i64
  store i64 %_len4064, i64* %_len4066
  %_local4067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4065
  %_ptr4068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4067, i32 0, i32 1, i32 0
  %_elem4069 = load i64, i64* %_ptr4068
  %min = alloca i64
  store i64 %_elem4069, i64* %min
  %_i4070 = alloca i64
  store i64 0, i64* %_i4070
  br label %_while4089
_while4089:
  %_local4071 = load i64, i64* %_i4070
  %_local4072 = load i64, i64* %_len4066
  %_bop4073 = icmp slt i64 %_local4071, %_local4072
  br i1 %_bop4073, label %_do4090, label %_elihw4091
_do4090:
  %_local4074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4065
  %_local4075 = load i64, i64* %_i4070
  %_ptr4076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4074, i32 0, i32 1, i64 %_local4075
  %_elem4077 = load i64, i64* %_ptr4076
  %_local4078 = load i64, i64* %min
  %_bop4079 = icmp slt i64 %_elem4077, %_local4078
  br i1 %_bop4079, label %_if4084, label %_else4085
_if4084:
  %_local4080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4065
  %_local4081 = load i64, i64* %_i4070
  %_ptr4082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4080, i32 0, i32 1, i64 %_local4081
  %_elem4083 = load i64, i64* %_ptr4082
  store i64 %_elem4083, i64* %min
  br label %_fi4086
_else4085:
  br label %_fi4086
_fi4086:
  %_local4087 = load i64, i64* %_i4070
  %_bop4088 = add i64 %_local4087, 1
  store i64 %_bop4088, i64* %_i4070
  br label %_while4089
_elihw4091:
  %_local4093 = load i64, i64* %min
  %_fun_return4092 = bitcast i64 %_local4093 to i64
  ret i64 %_fun_return4092
}

define i64 @max({ i64, [0 x i64] }* %_arr4032, i64 %_len4033) {
  %_arr4034 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr4032, { i64, [0 x i64] }** %_arr4034
  %_len4035 = alloca i64
  store i64 %_len4033, i64* %_len4035
  %_local4036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4034
  %_ptr4037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4036, i32 0, i32 1, i32 0
  %_elem4038 = load i64, i64* %_ptr4037
  %max = alloca i64
  store i64 %_elem4038, i64* %max
  %_i4039 = alloca i64
  store i64 0, i64* %_i4039
  br label %_while4058
_while4058:
  %_local4040 = load i64, i64* %_i4039
  %_local4041 = load i64, i64* %_len4035
  %_bop4042 = icmp slt i64 %_local4040, %_local4041
  br i1 %_bop4042, label %_do4059, label %_elihw4060
_do4059:
  %_local4043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4034
  %_local4044 = load i64, i64* %_i4039
  %_ptr4045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4043, i32 0, i32 1, i64 %_local4044
  %_elem4046 = load i64, i64* %_ptr4045
  %_local4047 = load i64, i64* %max
  %_bop4048 = icmp sgt i64 %_elem4046, %_local4047
  br i1 %_bop4048, label %_if4053, label %_else4054
_if4053:
  %_local4049 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4034
  %_local4050 = load i64, i64* %_i4039
  %_ptr4051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4049, i32 0, i32 1, i64 %_local4050
  %_elem4052 = load i64, i64* %_ptr4051
  store i64 %_elem4052, i64* %max
  br label %_fi4055
_else4054:
  br label %_fi4055
_fi4055:
  %_local4056 = load i64, i64* %_i4039
  %_bop4057 = add i64 %_local4056, 1
  store i64 %_bop4057, i64* %_i4039
  br label %_while4058
_elihw4060:
  %_local4062 = load i64, i64* %max
  %_fun_return4061 = bitcast i64 %_local4062 to i64
  ret i64 %_fun_return4061
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr3947, i64 %_len3948) {
  %_arr3949 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr3947, { i64, [0 x i64] }** %_arr3949
  %_len3950 = alloca i64
  store i64 %_len3948, i64* %_len3950
  %_local3951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3949
  %_local3952 = load i64, i64* %_len3950
  %_ret3953 = call i64 @_min({ i64, [0 x i64] }* %_local3951, i64 %_local3952)
  %min = alloca i64
  store i64 %_ret3953, i64* %min
  %_local3954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3949
  %_local3955 = load i64, i64* %_len3950
  %_ret3956 = call i64 @_max({ i64, [0 x i64] }* %_local3954, i64 %_local3955)
  %max = alloca i64
  store i64 %_ret3956, i64* %max
  %_local3957 = load i64, i64* %max
  %_local3958 = load i64, i64* %min
  %_bop3959 = sub i64 %_local3957, %_local3958
  %_bop3960 = add i64 %_bop3959, 1
  %_raw_array3961 = call i64* @oat_alloc_array(i64 %_bop3960)
  %_array3962 = bitcast i64* %_raw_array3961 to { i64, [0 x i64] }*
  %counts = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3962, { i64, [0 x i64] }** %counts
  %_i3963 = alloca i64
  store i64 0, i64* %_i3963
  br label %_while3987
_while3987:
  %_local3964 = load i64, i64* %_i3963
  %_local3965 = load i64, i64* %_len3950
  %_bop3966 = icmp slt i64 %_local3964, %_local3965
  br i1 %_bop3966, label %_do3988, label %_elihw3989
_do3988:
  %_local3967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3949
  %_local3969 = load i64, i64* %_i3963
  %_ptr3970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3968, i32 0, i32 1, i64 %_local3969
  %_elem3971 = load i64, i64* %_ptr3970
  %_local3972 = load i64, i64* %min
  %_bop3973 = sub i64 %_elem3971, %_local3972
  %_ptr3974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3967, i32 0, i32 1, i64 %_bop3973
  %_elem3975 = load i64, i64* %_ptr3974
  %_bop3976 = add i64 %_elem3975, 1
  %_local3977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3949
  %_local3979 = load i64, i64* %_i3963
  %_ptr3980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3978, i32 0, i32 1, i64 %_local3979
  %_elem3981 = load i64, i64* %_ptr3980
  %_local3982 = load i64, i64* %min
  %_bop3983 = sub i64 %_elem3981, %_local3982
  %_ind_assign3984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3977, i32 0, i32 1, i64 %_bop3983
  store i64 %_bop3976, i64* %_ind_assign3984
  %_local3985 = load i64, i64* %_i3963
  %_bop3986 = add i64 %_local3985, 1
  store i64 %_bop3986, i64* %_i3963
  br label %_while3987
_elihw3989:
  %_local3990 = load i64, i64* %min
  %i = alloca i64
  store i64 %_local3990, i64* %i
  %j = alloca i64
  store i64 0, i64* %j
  %_local3991 = load i64, i64* %_len3950
  %_raw_array3992 = call i64* @oat_alloc_array(i64 %_local3991)
  %_array3993 = bitcast i64* %_raw_array3992 to { i64, [0 x i64] }*
  %out = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3993, { i64, [0 x i64] }** %out
  br label %_while4027
_while4027:
  %_local3994 = load i64, i64* %i
  %_local3995 = load i64, i64* %max
  %_bop3996 = icmp sle i64 %_local3994, %_local3995
  br i1 %_bop3996, label %_do4028, label %_elihw4029
_do4028:
  %_local3997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local3998 = load i64, i64* %i
  %_local3999 = load i64, i64* %min
  %_bop4000 = sub i64 %_local3998, %_local3999
  %_ptr4001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local3997, i32 0, i32 1, i64 %_bop4000
  %_elem4002 = load i64, i64* %_ptr4001
  %_bop4003 = icmp sgt i64 %_elem4002, 0
  br i1 %_bop4003, label %_if4024, label %_else4025
_if4024:
  %_local4004 = load i64, i64* %i
  %_local4005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_local4006 = load i64, i64* %j
  %_ind_assign4007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4005, i32 0, i32 1, i64 %_local4006
  store i64 %_local4004, i64* %_ind_assign4007
  %_local4008 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local4009 = load i64, i64* %i
  %_local4010 = load i64, i64* %min
  %_bop4011 = sub i64 %_local4009, %_local4010
  %_ptr4012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4008, i32 0, i32 1, i64 %_bop4011
  %_elem4013 = load i64, i64* %_ptr4012
  %_bop4014 = sub i64 %_elem4013, 1
  %_local4015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_local4016 = load i64, i64* %i
  %_local4017 = load i64, i64* %min
  %_bop4018 = sub i64 %_local4016, %_local4017
  %_ind_assign4019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4015, i32 0, i32 1, i64 %_bop4018
  store i64 %_bop4014, i64* %_ind_assign4019
  %_local4020 = load i64, i64* %j
  %_bop4021 = add i64 %_local4020, 1
  store i64 %_bop4021, i64* %j
  br label %_fi4026
_else4025:
  %_local4022 = load i64, i64* %i
  %_bop4023 = add i64 %_local4022, 1
  store i64 %_bop4023, i64* %i
  br label %_fi4026
_fi4026:
  br label %_while4027
_elihw4029:
  %_local4031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_fun_return4030 = bitcast { i64, [0 x i64] }* %_local4031 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return4030
}

define i64 @program(i64 %_argc3920, { i64, [0 x i8*] }* %_argv3921) {
  %_argc3922 = alloca i64
  store i64 %_argc3920, i64* %_argc3922
  %_argv3923 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3921, { i64, [0 x i8*] }** %_argv3923
  %_raw_array3924 = call i64* @oat_alloc_array(i64 9)
  %_array3925 = bitcast i64* %_raw_array3924 to { i64, [0 x i64] }*
  %_ind3926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind3926
  %_ind3927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind3927
  %_ind3928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind3928
  %_ind3929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind3929
  %_ind3930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind3930
  %_ind3931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind3931
  %_ind3932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind3932
  %_ind3933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind3933
  %_ind3934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind3934
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3925, { i64, [0 x i64] }** %arr
  %len = alloca i64
  store i64 9, i64* %len
  %_local3935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ret3936 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3935)
  call void @print_string(i8* %_ret3936)
  %_raw_array3938 = call i64* @oat_alloc_array(i64 1)
  %_array3939 = bitcast i64* %_raw_array3938 to { i64, [0 x i64] }*
  %_ind3940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind3940
  %_strr_arr3937 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3939)
  call void @print_string(i8* %_strr_arr3937)
  %_local3941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local3942 = load i64, i64* %len
  %_ret3943 = call { i64, [0 x i64] }* @_count_sort({ i64, [0 x i64] }* %_local3941, i64 %_local3942)
  %sorted = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret3943, { i64, [0 x i64] }** %sorted
  %_local3944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %sorted
  %_ret3945 = call i8* @string_of_array({ i64, [0 x i64] }* %_local3944)
  call void @print_string(i8* %_ret3945)
  %_fun_return3946 = bitcast i64 0 to i64
  ret i64 %_fun_return3946
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
