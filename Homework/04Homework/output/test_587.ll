; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %_x4313, i64 %_y4314) {
  %_x4315 = alloca i64
  store i64 %_x4313, i64* %_x4315
  %_y4316 = alloca i64
  store i64 %_y4314, i64* %_y4316
  %_local4317 = load i64, i64* %_x4315
  %_local4318 = load i64, i64* %_y4316
  %_bop4319 = icmp eq i64 %_local4317, %_local4318
  br i1 %_bop4319, label %_if4322, label %_else4323
_if4322:
  %_local4321 = load i64, i64* %_x4315
  %_fun_return4320 = bitcast i64 %_local4321 to i64
  ret i64 %_fun_return4320
_else4323:
  br label %_fi4324
_fi4324:
  %_local4325 = load i64, i64* %_x4315
  %_bop4326 = icmp eq i64 %_local4325, 0
  br i1 %_bop4326, label %_if4329, label %_else4330
_if4329:
  %_local4328 = load i64, i64* %_y4316
  %_fun_return4327 = bitcast i64 %_local4328 to i64
  ret i64 %_fun_return4327
_else4330:
  br label %_fi4331
_fi4331:
  %_local4332 = load i64, i64* %_y4316
  %_bop4333 = icmp eq i64 %_local4332, 0
  br i1 %_bop4333, label %_if4336, label %_else4337
_if4336:
  %_local4335 = load i64, i64* %_x4315
  %_fun_return4334 = bitcast i64 %_local4335 to i64
  ret i64 %_fun_return4334
_else4337:
  br label %_fi4338
_fi4338:
  %_local4339 = load i64, i64* %_x4315
  %_uop4340 = xor i64 %_local4339, -1
  %_bop4341 = and i64 %_uop4340, 1
  %_bop4342 = icmp eq i64 %_bop4341, 1
  br i1 %_bop4342, label %_if4361, label %_else4362
_if4361:
  %_local4343 = load i64, i64* %_y4316
  %_bop4344 = and i64 %_local4343, 1
  %_bop4345 = icmp eq i64 %_bop4344, 1
  br i1 %_bop4345, label %_if4358, label %_else4359
_if4358:
  %_local4347 = load i64, i64* %_x4315
  %_bop4348 = lshr i64 %_local4347, 1
  %_local4349 = load i64, i64* %_y4316
  %_ret4350 = call i64 @_binary_gcd(i64 %_bop4348, i64 %_local4349)
  %_fun_return4346 = bitcast i64 %_ret4350 to i64
  ret i64 %_fun_return4346
_else4359:
  %_local4352 = load i64, i64* %_x4315
  %_bop4353 = lshr i64 %_local4352, 1
  %_local4354 = load i64, i64* %_y4316
  %_bop4355 = lshr i64 %_local4354, 1
  %_ret4356 = call i64 @_binary_gcd(i64 %_bop4353, i64 %_bop4355)
  %_bop4357 = shl i64 %_ret4356, 1
  %_fun_return4351 = bitcast i64 %_bop4357 to i64
  ret i64 %_fun_return4351
_fi4360:
  br label %_fi4363
_else4362:
  br label %_fi4363
_fi4363:
  %_local4364 = load i64, i64* %_y4316
  %_uop4365 = xor i64 %_local4364, -1
  %_bop4366 = and i64 %_uop4365, 1
  %_bop4367 = icmp eq i64 %_bop4366, 1
  br i1 %_bop4367, label %_if4373, label %_else4374
_if4373:
  %_local4369 = load i64, i64* %_x4315
  %_local4370 = load i64, i64* %_y4316
  %_bop4371 = lshr i64 %_local4370, 1
  %_ret4372 = call i64 @_binary_gcd(i64 %_local4369, i64 %_bop4371)
  %_fun_return4368 = bitcast i64 %_ret4372 to i64
  ret i64 %_fun_return4368
_else4374:
  br label %_fi4375
_fi4375:
  %_local4376 = load i64, i64* %_x4315
  %_local4377 = load i64, i64* %_y4316
  %_bop4378 = icmp sgt i64 %_local4376, %_local4377
  br i1 %_bop4378, label %_if4386, label %_else4387
_if4386:
  %_local4380 = load i64, i64* %_x4315
  %_local4381 = load i64, i64* %_y4316
  %_bop4382 = sub i64 %_local4380, %_local4381
  %_bop4383 = lshr i64 %_bop4382, 1
  %_local4384 = load i64, i64* %_y4316
  %_ret4385 = call i64 @_binary_gcd(i64 %_bop4383, i64 %_local4384)
  %_fun_return4379 = bitcast i64 %_ret4385 to i64
  ret i64 %_fun_return4379
_else4387:
  br label %_fi4388
_fi4388:
  %_local4390 = load i64, i64* %_y4316
  %_local4391 = load i64, i64* %_x4315
  %_bop4392 = sub i64 %_local4390, %_local4391
  %_bop4393 = lshr i64 %_bop4392, 1
  %_local4394 = load i64, i64* %_x4315
  %_ret4395 = call i64 @_binary_gcd(i64 %_bop4393, i64 %_local4394)
  %_fun_return4389 = bitcast i64 %_ret4395 to i64
  ret i64 %_fun_return4389
}

define i64 @program(i64 %_argc4305, { i64, [0 x i8*] }* %_argv4306) {
  %_argc4307 = alloca i64
  store i64 %_argc4305, i64* %_argc4307
  %_argv4308 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4306, { i64, [0 x i8*] }** %_argv4308
  %x = alloca i64
  store i64 21, i64* %x
  %y = alloca i64
  store i64 15, i64* %y
  %_local4310 = load i64, i64* %x
  %_local4311 = load i64, i64* %y
  %_ret4312 = call i64 @_binary_gcd(i64 %_local4310, i64 %_local4311)
  %_fun_return4309 = bitcast i64 %_ret4312 to i64
  ret i64 %_fun_return4309
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
