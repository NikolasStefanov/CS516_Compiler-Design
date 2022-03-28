; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %_x4191, i64 %_y4192) {
  %_x4193 = alloca i64
  store i64 %_x4191, i64* %_x4193
  %_y4194 = alloca i64
  store i64 %_y4192, i64* %_y4194
  %_local4195 = load i64, i64* %_x4193
  %_local4196 = load i64, i64* %_y4194
  %_bop4197 = icmp eq i64 %_local4195, %_local4196
  br i1 %_bop4197, label %_if4200, label %_else4201
_if4200:
  %_local4199 = load i64, i64* %_x4193
  %_fun_return4198 = bitcast i64 %_local4199 to i64
  ret i64 %_fun_return4198
_else4201:
  br label %_fi4202
_fi4202:
  %_local4203 = load i64, i64* %_x4193
  %_bop4204 = icmp eq i64 %_local4203, 0
  br i1 %_bop4204, label %_if4207, label %_else4208
_if4207:
  %_local4206 = load i64, i64* %_y4194
  %_fun_return4205 = bitcast i64 %_local4206 to i64
  ret i64 %_fun_return4205
_else4208:
  br label %_fi4209
_fi4209:
  %_local4210 = load i64, i64* %_y4194
  %_bop4211 = icmp eq i64 %_local4210, 0
  br i1 %_bop4211, label %_if4214, label %_else4215
_if4214:
  %_local4213 = load i64, i64* %_x4193
  %_fun_return4212 = bitcast i64 %_local4213 to i64
  ret i64 %_fun_return4212
_else4215:
  br label %_fi4216
_fi4216:
  %_local4217 = load i64, i64* %_x4193
  %_uop4218 = xor i64 %_local4217, -1
  %_bop4219 = and i64 %_uop4218, 1
  %_bop4220 = icmp eq i64 %_bop4219, 1
  br i1 %_bop4220, label %_if4239, label %_else4240
_if4239:
  %_local4221 = load i64, i64* %_y4194
  %_bop4222 = and i64 %_local4221, 1
  %_bop4223 = icmp eq i64 %_bop4222, 1
  br i1 %_bop4223, label %_if4236, label %_else4237
_if4236:
  %_local4225 = load i64, i64* %_x4193
  %_bop4226 = lshr i64 %_local4225, 1
  %_local4227 = load i64, i64* %_y4194
  %_ret4228 = call i64 @_binary_gcd(i64 %_bop4226, i64 %_local4227)
  %_fun_return4224 = bitcast i64 %_ret4228 to i64
  ret i64 %_fun_return4224
_else4237:
  %_local4230 = load i64, i64* %_x4193
  %_bop4231 = lshr i64 %_local4230, 1
  %_local4232 = load i64, i64* %_y4194
  %_bop4233 = lshr i64 %_local4232, 1
  %_ret4234 = call i64 @_binary_gcd(i64 %_bop4231, i64 %_bop4233)
  %_bop4235 = shl i64 %_ret4234, 1
  %_fun_return4229 = bitcast i64 %_bop4235 to i64
  ret i64 %_fun_return4229
_fi4238:
  br label %_fi4241
_else4240:
  br label %_fi4241
_fi4241:
  %_local4242 = load i64, i64* %_y4194
  %_uop4243 = xor i64 %_local4242, -1
  %_bop4244 = and i64 %_uop4243, 1
  %_bop4245 = icmp eq i64 %_bop4244, 1
  br i1 %_bop4245, label %_if4251, label %_else4252
_if4251:
  %_local4247 = load i64, i64* %_x4193
  %_local4248 = load i64, i64* %_y4194
  %_bop4249 = lshr i64 %_local4248, 1
  %_ret4250 = call i64 @_binary_gcd(i64 %_local4247, i64 %_bop4249)
  %_fun_return4246 = bitcast i64 %_ret4250 to i64
  ret i64 %_fun_return4246
_else4252:
  br label %_fi4253
_fi4253:
  %_local4254 = load i64, i64* %_x4193
  %_local4255 = load i64, i64* %_y4194
  %_bop4256 = icmp sgt i64 %_local4254, %_local4255
  br i1 %_bop4256, label %_if4264, label %_else4265
_if4264:
  %_local4258 = load i64, i64* %_x4193
  %_local4259 = load i64, i64* %_y4194
  %_bop4260 = sub i64 %_local4258, %_local4259
  %_bop4261 = lshr i64 %_bop4260, 1
  %_local4262 = load i64, i64* %_y4194
  %_ret4263 = call i64 @_binary_gcd(i64 %_bop4261, i64 %_local4262)
  %_fun_return4257 = bitcast i64 %_ret4263 to i64
  ret i64 %_fun_return4257
_else4265:
  br label %_fi4266
_fi4266:
  %_local4268 = load i64, i64* %_y4194
  %_local4269 = load i64, i64* %_x4193
  %_bop4270 = sub i64 %_local4268, %_local4269
  %_bop4271 = lshr i64 %_bop4270, 1
  %_local4272 = load i64, i64* %_x4193
  %_ret4273 = call i64 @_binary_gcd(i64 %_bop4271, i64 %_local4272)
  %_fun_return4267 = bitcast i64 %_ret4273 to i64
  ret i64 %_fun_return4267
}

define i64 @program(i64 %_argc4183, { i64, [0 x i8*] }* %_argv4184) {
  %_argc4185 = alloca i64
  store i64 %_argc4183, i64* %_argc4185
  %_argv4186 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4184, { i64, [0 x i8*] }** %_argv4186
  %x = alloca i64
  store i64 21, i64* %x
  %y = alloca i64
  store i64 15, i64* %y
  %_local4188 = load i64, i64* %x
  %_local4189 = load i64, i64* %y
  %_ret4190 = call i64 @_binary_gcd(i64 %_local4188, i64 %_local4189)
  %_fun_return4187 = bitcast i64 %_ret4190 to i64
  ret i64 %_fun_return4187
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
