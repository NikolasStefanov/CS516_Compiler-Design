; generated from: hw4programs/lfsr.oat
target triple = "x86_64-apple-macosx10.13.0"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@_unused_global4395 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_unused_global4395 to { i64, [0 x i1] }*)

define i1 @xor(i1 %_x4381, i1 %_y4382) {
  %_x4383 = alloca i1
  store i1 %_x4381, i1* %_x4383
  %_y4384 = alloca i1
  store i1 %_y4382, i1* %_y4384
  %_local4386 = load i1, i1* %_x4383
  %_local4387 = load i1, i1* %_y4384
  %_uop4388 = xor i1 %_local4387, 1
  %_bop4389 = and i1 %_local4386, %_uop4388
  %_local4390 = load i1, i1* %_x4383
  %_uop4391 = xor i1 %_local4390, 1
  %_local4392 = load i1, i1* %_y4384
  %_bop4393 = and i1 %_uop4391, %_local4392
  %_bop4394 = or i1 %_bop4389, %_bop4393
  %_fun_return4385 = bitcast i1 %_bop4394 to i1
  ret i1 %_fun_return4385
}

define i8* @string_of_bool(i1 %_b4365) {
  %_b4366 = alloca i1
  store i1 %_b4365, i1* %_b4366
  %_local4367 = load i1, i1* %_b4366
  br i1 %_local4367, label %_if4378, label %_else4379
_if4378:
  %_raw_array4370 = call i64* @oat_alloc_array(i64 1)
  %_array4371 = bitcast i64* %_raw_array4370 to { i64, [0 x i64] }*
  %_ind4372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 0
  store i64 84, i64* %_ind4372
  %_strr_arr4369 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4371)
  %_fun_return4368 = bitcast i8* %_strr_arr4369 to i8*
  ret i8* %_fun_return4368
_else4379:
  %_raw_array4375 = call i64* @oat_alloc_array(i64 1)
  %_array4376 = bitcast i64* %_raw_array4375 to { i64, [0 x i64] }*
  %_ind4377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4376, i32 0, i32 1, i32 0
  store i64 70, i64* %_ind4377
  %_strr_arr4374 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4376)
  %_fun_return4373 = bitcast i8* %_strr_arr4374 to i8*
  ret i8* %_fun_return4373
}

define void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4347, i64 %_len4348) {
  %_lfsr_register4349 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_lfsr_register4347, { i64, [0 x i1] }** %_lfsr_register4349
  %_len4350 = alloca i64
  store i64 %_len4348, i64* %_len4350
  %_i4351 = alloca i64
  store i64 0, i64* %_i4351
  br label %_while4362
_while4362:
  %_local4352 = load i64, i64* %_i4351
  %_local4353 = load i64, i64* %_len4350
  %_bop4354 = icmp slt i64 %_local4352, %_local4353
  br i1 %_bop4354, label %_do4363, label %_elihw4364
_do4363:
  %_local4355 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4349
  %_local4356 = load i64, i64* %_i4351
  %_ptr4357 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4355, i32 0, i32 1, i64 %_local4356
  %_elem4358 = load i1, i1* %_ptr4357
  %_ret4359 = call i8* @_string_of_bool(i1 %_elem4358)
  call void @print_string(i8* %_ret4359)
  %_local4360 = load i64, i64* %_i4351
  %_bop4361 = add i64 %_local4360, 1
  store i64 %_bop4361, i64* %_i4351
  br label %_while4362
_elihw4364:
  ret void
}

define i64 @program(i64 %_argc4274, { i64, [0 x i8*] }* %_argv4275) {
  %_argc4276 = alloca i64
  store i64 %_argc4274, i64* %_argc4276
  %_argv4277 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4275, { i64, [0 x i8*] }** %_argv4277
  %_glob4278 = load i64, i64* @_lfsr_length
  %_raw_array4279 = call i64* @oat_alloc_array(i64 %_glob4278)
  %_array4280 = bitcast i64* %_raw_array4279 to { i64, [0 x i1] }*
  %lfsr_register = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4280, { i64, [0 x i1] }** %lfsr_register
  %_i4281 = alloca i64
  store i64 0, i64* %_i4281
  br label %_while4294
_while4294:
  %_local4282 = load i64, i64* %_i4281
  %_glob4283 = load i64, i64* @_lfsr_length
  %_bop4284 = icmp slt i64 %_local4282, %_glob4283
  br i1 %_bop4284, label %_do4295, label %_elihw4296
_do4295:
  %_glob4285 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @_lfsr_init_values
  %_local4286 = load i64, i64* %_i4281
  %_ptr4287 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_glob4285, i32 0, i32 1, i64 %_local4286
  %_elem4288 = load i1, i1* %_ptr4287
  %_local4289 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_local4290 = load i64, i64* %_i4281
  %_ind_assign4291 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4289, i32 0, i32 1, i64 %_local4290
  store i1 %_elem4288, i1* %_ind_assign4291
  %_local4292 = load i64, i64* %_i4281
  %_bop4293 = add i64 %_local4292, 1
  store i64 %_bop4293, i64* %_i4281
  br label %_while4294
_elihw4296:
  %_i4297 = alloca i64
  store i64 0, i64* %_i4297
  br label %_while4335
_while4335:
  %_local4298 = load i64, i64* %_i4297
  %_glob4299 = load i64, i64* @_lfsr_iterations
  %_bop4300 = icmp slt i64 %_local4298, %_glob4299
  br i1 %_bop4300, label %_do4336, label %_elihw4337
_do4336:
  %_local4301 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_glob4302 = load i64, i64* @_lfsr_length
  %_bop4303 = sub i64 %_glob4302, 1
  %_ptr4304 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4301, i32 0, i32 1, i64 %_bop4303
  %_elem4305 = load i1, i1* %_ptr4304
  %_local4306 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_glob4307 = load i64, i64* @_lfsr_length
  %_bop4308 = sub i64 %_glob4307, 2
  %_ptr4309 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4306, i32 0, i32 1, i64 %_bop4308
  %_elem4310 = load i1, i1* %_ptr4309
  %_ret4311 = call i1 @_xor(i1 %_elem4305, i1 %_elem4310)
  %new_first = alloca i1
  store i1 %_ret4311, i1* %new_first
  %_glob4313 = load i64, i64* @_lfsr_length
  %_bop4314 = sub i64 %_glob4313, 1
  %_j4312 = alloca i64
  store i64 %_bop4314, i64* %_j4312
  br label %_while4327
_while4327:
  %_local4315 = load i64, i64* %_j4312
  %_bop4316 = icmp sgt i64 %_local4315, 0
  br i1 %_bop4316, label %_do4328, label %_elihw4329
_do4328:
  %_local4317 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_local4318 = load i64, i64* %_j4312
  %_bop4319 = sub i64 %_local4318, 1
  %_ptr4320 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4317, i32 0, i32 1, i64 %_bop4319
  %_elem4321 = load i1, i1* %_ptr4320
  %_local4322 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_local4323 = load i64, i64* %_j4312
  %_ind_assign4324 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4322, i32 0, i32 1, i64 %_local4323
  store i1 %_elem4321, i1* %_ind_assign4324
  %_local4325 = load i64, i64* %_j4312
  %_bop4326 = sub i64 %_local4325, 1
  store i64 %_bop4326, i64* %_j4312
  br label %_while4327
_elihw4329:
  %_local4330 = load i1, i1* %new_first
  %_local4331 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_ind_assign4332 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4331, i32 0, i32 1, i32 0
  store i1 %_local4330, i1* %_ind_assign4332
  %_local4333 = load i64, i64* %_i4297
  %_bop4334 = add i64 %_local4333, 1
  store i64 %_bop4334, i64* %_i4297
  br label %_while4335
_elihw4337:
  %_glob4338 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @_lfsr_init_values
  %_glob4339 = load i64, i64* @_lfsr_length
  call void @_print_lfsr({ i64, [0 x i1] }* %_glob4338, i64 %_glob4339)
  %_raw_array4341 = call i64* @oat_alloc_array(i64 1)
  %_array4342 = bitcast i64* %_raw_array4341 to { i64, [0 x i64] }*
  %_ind4343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4342, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind4343
  %_strr_arr4340 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4342)
  call void @print_string(i8* %_strr_arr4340)
  %_local4344 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_glob4345 = load i64, i64* @_lfsr_length
  call void @_print_lfsr({ i64, [0 x i1] }* %_local4344, i64 %_glob4345)
  %_fun_return4346 = bitcast i64 0 to i64
  ret i64 %_fun_return4346
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
