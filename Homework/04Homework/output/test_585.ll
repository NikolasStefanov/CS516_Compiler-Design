; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %_n4141) {
  %_n4142 = alloca i64
  store i64 %_n4141, i64* %_n4142
  %_local4143 = load i64, i64* %_n4142
  %_bop4144 = icmp eq i64 %_local4143, 0
  br i1 %_bop4144, label %_if4146, label %_else4147
_if4146:
  %_fun_return4145 = bitcast i64 0 to i64
  ret i64 %_fun_return4145
_else4147:
  br label %_fi4148
_fi4148:
  %_local4149 = load i64, i64* %_n4142
  %_bop4150 = icmp eq i64 %_local4149, 1
  br i1 %_bop4150, label %_if4152, label %_else4153
_if4152:
  %_fun_return4151 = bitcast i64 1 to i64
  ret i64 %_fun_return4151
_else4153:
  br label %_fi4154
_fi4154:
  %_local4156 = load i64, i64* %_n4142
  %_bop4157 = sub i64 %_local4156, 1
  %_ret4158 = call i64 @_fibR(i64 %_bop4157)
  %_local4159 = load i64, i64* %_n4142
  %_bop4160 = sub i64 %_local4159, 2
  %_ret4161 = call i64 @_fibR(i64 %_bop4160)
  %_bop4162 = add i64 %_ret4158, %_ret4161
  %_fun_return4155 = bitcast i64 %_bop4162 to i64
  ret i64 %_fun_return4155
}

define i64 @fibI(i64 %_n4108) {
  %_n4109 = alloca i64
  store i64 %_n4108, i64* %_n4109
  %a = alloca i64
  store i64 0, i64* %a
  %b = alloca i64
  store i64 1, i64* %b
  %_local4110 = load i64, i64* %_n4109
  %_bop4111 = icmp eq i64 %_local4110, 0
  br i1 %_bop4111, label %_if4114, label %_else4115
_if4114:
  %_local4113 = load i64, i64* %a
  %_fun_return4112 = bitcast i64 %_local4113 to i64
  ret i64 %_fun_return4112
_else4115:
  br label %_fi4116
_fi4116:
  %_local4117 = load i64, i64* %_n4109
  %_bop4118 = icmp eq i64 %_local4117, 1
  br i1 %_bop4118, label %_if4121, label %_else4122
_if4121:
  %_local4120 = load i64, i64* %b
  %_fun_return4119 = bitcast i64 %_local4120 to i64
  ret i64 %_fun_return4119
_else4122:
  br label %_fi4123
_fi4123:
  br label %_while4134
_while4134:
  %_local4124 = load i64, i64* %_n4109
  %_bop4125 = sub i64 %_local4124, 2
  %_bop4126 = icmp sgt i64 %_bop4125, 0
  br i1 %_bop4126, label %_do4135, label %_elihw4136
_do4135:
  %_local4127 = load i64, i64* %b
  %old = alloca i64
  store i64 %_local4127, i64* %old
  %_local4128 = load i64, i64* %b
  %_local4129 = load i64, i64* %a
  %_bop4130 = add i64 %_local4128, %_local4129
  store i64 %_bop4130, i64* %b
  %_local4131 = load i64, i64* %old
  store i64 %_local4131, i64* %a
  %_local4132 = load i64, i64* %_n4109
  %_bop4133 = sub i64 %_local4132, 1
  store i64 %_bop4133, i64* %_n4109
  br label %_while4134
_elihw4136:
  %_local4138 = load i64, i64* %a
  %_local4139 = load i64, i64* %b
  %_bop4140 = add i64 %_local4138, %_local4139
  %_fun_return4137 = bitcast i64 %_bop4140 to i64
  ret i64 %_fun_return4137
}

define i64 @program(i64 %_argc4094, { i64, [0 x i8*] }* %_argv4095) {
  %_argc4096 = alloca i64
  store i64 %_argc4094, i64* %_argc4096
  %_argv4097 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4095, { i64, [0 x i8*] }** %_argv4097
  %val = alloca i64
  store i64 1, i64* %val
  %_ret4098 = call i64 @_fibR(i64 12)
  %_bop4099 = icmp eq i64 %_ret4098, 144
  %_ret4100 = call i64 @_fibI(i64 12)
  %_bop4101 = icmp eq i64 %_ret4100, 144
  %_bop4102 = and i1 %_bop4099, %_bop4101
  br i1 %_bop4102, label %_if4103, label %_else4104
_if4103:
  store i64 0, i64* %val
  br label %_fi4105
_else4104:
  br label %_fi4105
_fi4105:
  %_local4107 = load i64, i64* %val
  %_fun_return4106 = bitcast i64 %_local4107 to i64
  ret i64 %_fun_return4106
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
