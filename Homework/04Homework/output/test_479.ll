; generated from: hw4programs/heap.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @min_heapify({ i64, [0 x i64] }* %_array4232, i64 %_i4233, i64 %_len4234) {
  %_array4235 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4232, { i64, [0 x i64] }** %_array4235
  %_i4236 = alloca i64
  store i64 %_i4233, i64* %_i4236
  %_len4237 = alloca i64
  store i64 %_len4234, i64* %_len4237
  %_local4238 = load i64, i64* %_i4236
  %_bop4239 = mul i64 %_local4238, 2
  %l = alloca i64
  store i64 %_bop4239, i64* %l
  %_local4240 = load i64, i64* %_i4236
  %_bop4241 = add i64 %_local4240, 1
  %r = alloca i64
  store i64 %_bop4241, i64* %r
  %tmp = alloca i64
  store i64 0, i64* %tmp
  %_local4242 = load i64, i64* %_i4236
  %m = alloca i64
  store i64 %_local4242, i64* %m
  %_local4243 = load i64, i64* %l
  %_local4244 = load i64, i64* %_len4237
  %_bop4245 = icmp slt i64 %_local4243, %_local4244
  br i1 %_bop4245, label %_if4259, label %_else4260
_if4259:
  %_local4246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4247 = load i64, i64* %l
  %_ptr4248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4246, i32 0, i32 1, i64 %_local4247
  %_elem4249 = load i64, i64* %_ptr4248
  %_local4250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4251 = load i64, i64* %m
  %_ptr4252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4250, i32 0, i32 1, i64 %_local4251
  %_elem4253 = load i64, i64* %_ptr4252
  %_bop4254 = icmp sgt i64 %_elem4249, %_elem4253
  br i1 %_bop4254, label %_if4256, label %_else4257
_if4256:
  %_local4255 = load i64, i64* %l
  store i64 %_local4255, i64* %m
  br label %_fi4258
_else4257:
  br label %_fi4258
_fi4258:
  br label %_fi4261
_else4260:
  br label %_fi4261
_fi4261:
  %_local4262 = load i64, i64* %r
  %_local4263 = load i64, i64* %_len4237
  %_bop4264 = icmp slt i64 %_local4262, %_local4263
  br i1 %_bop4264, label %_if4278, label %_else4279
_if4278:
  %_local4265 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4266 = load i64, i64* %r
  %_ptr4267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4265, i32 0, i32 1, i64 %_local4266
  %_elem4268 = load i64, i64* %_ptr4267
  %_local4269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4270 = load i64, i64* %m
  %_ptr4271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4269, i32 0, i32 1, i64 %_local4270
  %_elem4272 = load i64, i64* %_ptr4271
  %_bop4273 = icmp sgt i64 %_elem4268, %_elem4272
  br i1 %_bop4273, label %_if4275, label %_else4276
_if4275:
  %_local4274 = load i64, i64* %r
  store i64 %_local4274, i64* %m
  br label %_fi4277
_else4276:
  br label %_fi4277
_fi4277:
  br label %_fi4280
_else4279:
  br label %_fi4280
_fi4280:
  %_local4281 = load i64, i64* %m
  %_local4282 = load i64, i64* %_i4236
  %_bop4283 = icmp ne i64 %_local4281, %_local4282
  br i1 %_bop4283, label %_if4302, label %_else4303
_if4302:
  %_local4284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4285 = load i64, i64* %_i4236
  %_ptr4286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4284, i32 0, i32 1, i64 %_local4285
  %_elem4287 = load i64, i64* %_ptr4286
  store i64 %_elem4287, i64* %tmp
  %_local4288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4289 = load i64, i64* %m
  %_ptr4290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4288, i32 0, i32 1, i64 %_local4289
  %_elem4291 = load i64, i64* %_ptr4290
  %_local4292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4293 = load i64, i64* %_i4236
  %_ind_assign4294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4292, i32 0, i32 1, i64 %_local4293
  store i64 %_elem4291, i64* %_ind_assign4294
  %_local4295 = load i64, i64* %tmp
  %_local4296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4297 = load i64, i64* %m
  %_ind_assign4298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4296, i32 0, i32 1, i64 %_local4297
  store i64 %_local4295, i64* %_ind_assign4298
  %_local4299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4235
  %_local4300 = load i64, i64* %m
  %_local4301 = load i64, i64* %_len4237
  call void @_min_heapify({ i64, [0 x i64] }* %_local4299, i64 %_local4300, i64 %_local4301)
  br label %_fi4304
_else4303:
  br label %_fi4304
_fi4304:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %_array4216, i64 %_len4217) {
  %_array4218 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4216, { i64, [0 x i64] }** %_array4218
  %_len4219 = alloca i64
  store i64 %_len4217, i64* %_len4219
  %_local4221 = load i64, i64* %_len4219
  %_i4220 = alloca i64
  store i64 %_local4221, i64* %_i4220
  br label %_while4229
_while4229:
  %_local4222 = load i64, i64* %_i4220
  %_bop4223 = icmp sge i64 %_local4222, 1
  br i1 %_bop4223, label %_do4230, label %_elihw4231
_do4230:
  %_local4224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4218
  %_local4225 = load i64, i64* %_i4220
  %_local4226 = load i64, i64* %_len4219
  call void @_min_heapify({ i64, [0 x i64] }* %_local4224, i64 %_local4225, i64 %_local4226)
  %_local4227 = load i64, i64* %_i4220
  %_bop4228 = sub i64 %_local4227, 1
  store i64 %_bop4228, i64* %_i4220
  br label %_while4229
_elihw4231:
  ret void
}

define i64 @program(i64 %_argc4163, { i64, [0 x i8*] }* %_argv4164) {
  %_argc4165 = alloca i64
  store i64 %_argc4163, i64* %_argc4165
  %_argv4166 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4164, { i64, [0 x i8*] }** %_argv4166
  %_raw_array4167 = call i64* @oat_alloc_array(i64 11)
  %_array4168 = bitcast i64* %_raw_array4167 to { i64, [0 x i64] }*
  %_ind4169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4169
  %_ind4170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind4170
  %_ind4171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4171
  %_ind4172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4172
  %_ind4173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4173
  %_ind4174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind4174
  %_ind4175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4175
  %_ind4176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4176
  %_ind4177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4177
  %_ind4178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind4178
  %_ind4179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4168, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind4179
  %array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4168, { i64, [0 x i64] }** %array
  %_raw_array4180 = call i64* @oat_alloc_array(i64 11)
  %_array4181 = bitcast i64* %_raw_array4180 to { i64, [0 x i64] }*
  %_ind4182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4182
  %_ind4183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4183
  %_ind4184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind4184
  %_ind4185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4185
  %_ind4186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4186
  %_ind4187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind4187
  %_ind4188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4188
  %_ind4189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4189
  %_ind4190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4190
  %_ind4191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind4191
  %_ind4192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4181, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind4192
  %end_result = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4181, { i64, [0 x i64] }** %end_result
  %_local4193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  call void @_make_min_heap({ i64, [0 x i64] }* %_local4193, i64 10)
  %same = alloca i64
  store i64 0, i64* %same
  %_i4194 = alloca i64
  store i64 0, i64* %_i4194
  br label %_while4211
_while4211:
  %_local4195 = load i64, i64* %_i4194
  %_bop4196 = icmp slt i64 %_local4195, 11
  br i1 %_bop4196, label %_do4212, label %_elihw4213
_do4212:
  %_local4197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_local4198 = load i64, i64* %_i4194
  %_ptr4199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4197, i32 0, i32 1, i64 %_local4198
  %_elem4200 = load i64, i64* %_ptr4199
  %_local4201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %end_result
  %_local4202 = load i64, i64* %_i4194
  %_ptr4203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4201, i32 0, i32 1, i64 %_local4202
  %_elem4204 = load i64, i64* %_ptr4203
  %_bop4205 = icmp ne i64 %_elem4200, %_elem4204
  br i1 %_bop4205, label %_if4206, label %_else4207
_if4206:
  store i64 1, i64* %same
  br label %_fi4208
_else4207:
  br label %_fi4208
_fi4208:
  %_local4209 = load i64, i64* %_i4194
  %_bop4210 = add i64 %_local4209, 1
  store i64 %_bop4210, i64* %_i4194
  br label %_while4211
_elihw4213:
  %_local4215 = load i64, i64* %same
  %_fun_return4214 = bitcast i64 %_local4215 to i64
  ret i64 %_fun_return4214
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
