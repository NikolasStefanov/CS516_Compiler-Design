; generated from: hw4programs/heap.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @min_heapify({ i64, [0 x i64] }* %_array4110, i64 %_i4111, i64 %_len4112) {
  %_array4113 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4110, { i64, [0 x i64] }** %_array4113
  %_i4114 = alloca i64
  store i64 %_i4111, i64* %_i4114
  %_len4115 = alloca i64
  store i64 %_len4112, i64* %_len4115
  %_local4116 = load i64, i64* %_i4114
  %_bop4117 = mul i64 %_local4116, 2
  %l = alloca i64
  store i64 %_bop4117, i64* %l
  %_local4118 = load i64, i64* %_i4114
  %_bop4119 = add i64 %_local4118, 1
  %r = alloca i64
  store i64 %_bop4119, i64* %r
  %tmp = alloca i64
  store i64 0, i64* %tmp
  %_local4120 = load i64, i64* %_i4114
  %m = alloca i64
  store i64 %_local4120, i64* %m
  %_local4121 = load i64, i64* %l
  %_local4122 = load i64, i64* %_len4115
  %_bop4123 = icmp slt i64 %_local4121, %_local4122
  br i1 %_bop4123, label %_if4137, label %_else4138
_if4137:
  %_local4124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4125 = load i64, i64* %l
  %_ptr4126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4124, i32 0, i32 1, i64 %_local4125
  %_elem4127 = load i64, i64* %_ptr4126
  %_local4128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4129 = load i64, i64* %m
  %_ptr4130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4128, i32 0, i32 1, i64 %_local4129
  %_elem4131 = load i64, i64* %_ptr4130
  %_bop4132 = icmp sgt i64 %_elem4127, %_elem4131
  br i1 %_bop4132, label %_if4134, label %_else4135
_if4134:
  %_local4133 = load i64, i64* %l
  store i64 %_local4133, i64* %m
  br label %_fi4136
_else4135:
  br label %_fi4136
_fi4136:
  br label %_fi4139
_else4138:
  br label %_fi4139
_fi4139:
  %_local4140 = load i64, i64* %r
  %_local4141 = load i64, i64* %_len4115
  %_bop4142 = icmp slt i64 %_local4140, %_local4141
  br i1 %_bop4142, label %_if4156, label %_else4157
_if4156:
  %_local4143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4144 = load i64, i64* %r
  %_ptr4145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4143, i32 0, i32 1, i64 %_local4144
  %_elem4146 = load i64, i64* %_ptr4145
  %_local4147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4148 = load i64, i64* %m
  %_ptr4149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4147, i32 0, i32 1, i64 %_local4148
  %_elem4150 = load i64, i64* %_ptr4149
  %_bop4151 = icmp sgt i64 %_elem4146, %_elem4150
  br i1 %_bop4151, label %_if4153, label %_else4154
_if4153:
  %_local4152 = load i64, i64* %r
  store i64 %_local4152, i64* %m
  br label %_fi4155
_else4154:
  br label %_fi4155
_fi4155:
  br label %_fi4158
_else4157:
  br label %_fi4158
_fi4158:
  %_local4159 = load i64, i64* %m
  %_local4160 = load i64, i64* %_i4114
  %_bop4161 = icmp ne i64 %_local4159, %_local4160
  br i1 %_bop4161, label %_if4180, label %_else4181
_if4180:
  %_local4162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4163 = load i64, i64* %_i4114
  %_ptr4164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4162, i32 0, i32 1, i64 %_local4163
  %_elem4165 = load i64, i64* %_ptr4164
  store i64 %_elem4165, i64* %tmp
  %_local4166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4167 = load i64, i64* %m
  %_ptr4168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4166, i32 0, i32 1, i64 %_local4167
  %_elem4169 = load i64, i64* %_ptr4168
  %_local4170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4171 = load i64, i64* %_i4114
  %_ind_assign4172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4170, i32 0, i32 1, i64 %_local4171
  store i64 %_elem4169, i64* %_ind_assign4172
  %_local4173 = load i64, i64* %tmp
  %_local4174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4175 = load i64, i64* %m
  %_ind_assign4176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4174, i32 0, i32 1, i64 %_local4175
  store i64 %_local4173, i64* %_ind_assign4176
  %_local4177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4113
  %_local4178 = load i64, i64* %m
  %_local4179 = load i64, i64* %_len4115
  call void @_min_heapify({ i64, [0 x i64] }* %_local4177, i64 %_local4178, i64 %_local4179)
  br label %_fi4182
_else4181:
  br label %_fi4182
_fi4182:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %_array4094, i64 %_len4095) {
  %_array4096 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4094, { i64, [0 x i64] }** %_array4096
  %_len4097 = alloca i64
  store i64 %_len4095, i64* %_len4097
  %_local4099 = load i64, i64* %_len4097
  %_i4098 = alloca i64
  store i64 %_local4099, i64* %_i4098
  br label %_while4107
_while4107:
  %_local4100 = load i64, i64* %_i4098
  %_bop4101 = icmp sge i64 %_local4100, 1
  br i1 %_bop4101, label %_do4108, label %_elihw4109
_do4108:
  %_local4102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4096
  %_local4103 = load i64, i64* %_i4098
  %_local4104 = load i64, i64* %_len4097
  call void @_min_heapify({ i64, [0 x i64] }* %_local4102, i64 %_local4103, i64 %_local4104)
  %_local4105 = load i64, i64* %_i4098
  %_bop4106 = sub i64 %_local4105, 1
  store i64 %_bop4106, i64* %_i4098
  br label %_while4107
_elihw4109:
  ret void
}

define i64 @program(i64 %_argc4041, { i64, [0 x i8*] }* %_argv4042) {
  %_argc4043 = alloca i64
  store i64 %_argc4041, i64* %_argc4043
  %_argv4044 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4042, { i64, [0 x i8*] }** %_argv4044
  %_raw_array4045 = call i64* @oat_alloc_array(i64 11)
  %_array4046 = bitcast i64* %_raw_array4045 to { i64, [0 x i64] }*
  %_ind4047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4047
  %_ind4048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind4048
  %_ind4049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4049
  %_ind4050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4050
  %_ind4051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4051
  %_ind4052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind4052
  %_ind4053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4053
  %_ind4054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4054
  %_ind4055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4055
  %_ind4056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind4056
  %_ind4057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4046, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind4057
  %array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4046, { i64, [0 x i64] }** %array
  %_raw_array4058 = call i64* @oat_alloc_array(i64 11)
  %_array4059 = bitcast i64* %_raw_array4058 to { i64, [0 x i64] }*
  %_ind4060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4060
  %_ind4061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4061
  %_ind4062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind4062
  %_ind4063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4063
  %_ind4064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4064
  %_ind4065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind4065
  %_ind4066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4066
  %_ind4067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4067
  %_ind4068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4068
  %_ind4069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind4069
  %_ind4070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4059, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind4070
  %end_result = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4059, { i64, [0 x i64] }** %end_result
  %_local4071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  call void @_make_min_heap({ i64, [0 x i64] }* %_local4071, i64 10)
  %same = alloca i64
  store i64 0, i64* %same
  %_i4072 = alloca i64
  store i64 0, i64* %_i4072
  br label %_while4089
_while4089:
  %_local4073 = load i64, i64* %_i4072
  %_bop4074 = icmp slt i64 %_local4073, 11
  br i1 %_bop4074, label %_do4090, label %_elihw4091
_do4090:
  %_local4075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_local4076 = load i64, i64* %_i4072
  %_ptr4077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4075, i32 0, i32 1, i64 %_local4076
  %_elem4078 = load i64, i64* %_ptr4077
  %_local4079 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %end_result
  %_local4080 = load i64, i64* %_i4072
  %_ptr4081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4079, i32 0, i32 1, i64 %_local4080
  %_elem4082 = load i64, i64* %_ptr4081
  %_bop4083 = icmp ne i64 %_elem4078, %_elem4082
  br i1 %_bop4083, label %_if4084, label %_else4085
_if4084:
  store i64 1, i64* %same
  br label %_fi4086
_else4085:
  br label %_fi4086
_fi4086:
  %_local4087 = load i64, i64* %_i4072
  %_bop4088 = add i64 %_local4087, 1
  store i64 %_bop4088, i64* %_i4072
  br label %_while4089
_elihw4091:
  %_local4093 = load i64, i64* %same
  %_fun_return4092 = bitcast i64 %_local4093 to i64
  ret i64 %_fun_return4092
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
