; generated from: hw4programs/lfsr.oat
target triple = "x86_64-apple-macosx10.13.0"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@_unused_global4517 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_unused_global4517 to { i64, [0 x i1] }*)

define i1 @xor(i1 %_x4503, i1 %_y4504) {
  %_x4505 = alloca i1
  store i1 %_x4503, i1* %_x4505
  %_y4506 = alloca i1
  store i1 %_y4504, i1* %_y4506
  %_local4508 = load i1, i1* %_x4505
  %_local4509 = load i1, i1* %_y4506
  %_uop4510 = xor i1 %_local4509, 1
  %_bop4511 = and i1 %_local4508, %_uop4510
  %_local4512 = load i1, i1* %_x4505
  %_uop4513 = xor i1 %_local4512, 1
  %_local4514 = load i1, i1* %_y4506
  %_bop4515 = and i1 %_uop4513, %_local4514
  %_bop4516 = or i1 %_bop4511, %_bop4515
  %_fun_return4507 = bitcast i1 %_bop4516 to i1
  ret i1 %_fun_return4507
}

define i8* @string_of_bool(i1 %_b4487) {
  %_b4488 = alloca i1
  store i1 %_b4487, i1* %_b4488
  %_local4489 = load i1, i1* %_b4488
  br i1 %_local4489, label %_if4500, label %_else4501
_if4500:
  %_raw_array4492 = call i64* @oat_alloc_array(i64 1)
  %_array4493 = bitcast i64* %_raw_array4492 to { i64, [0 x i64] }*
  %_ind4494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4493, i32 0, i32 1, i32 0
  store i64 84, i64* %_ind4494
  %_strr_arr4491 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4493)
  %_fun_return4490 = bitcast i8* %_strr_arr4491 to i8*
  ret i8* %_fun_return4490
_else4501:
  %_raw_array4497 = call i64* @oat_alloc_array(i64 1)
  %_array4498 = bitcast i64* %_raw_array4497 to { i64, [0 x i64] }*
  %_ind4499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4498, i32 0, i32 1, i32 0
  store i64 70, i64* %_ind4499
  %_strr_arr4496 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4498)
  %_fun_return4495 = bitcast i8* %_strr_arr4496 to i8*
  ret i8* %_fun_return4495
}

define void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4469, i64 %_len4470) {
  %_lfsr_register4471 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_lfsr_register4469, { i64, [0 x i1] }** %_lfsr_register4471
  %_len4472 = alloca i64
  store i64 %_len4470, i64* %_len4472
  %_i4473 = alloca i64
  store i64 0, i64* %_i4473
  br label %_while4484
_while4484:
  %_local4474 = load i64, i64* %_i4473
  %_local4475 = load i64, i64* %_len4472
  %_bop4476 = icmp slt i64 %_local4474, %_local4475
  br i1 %_bop4476, label %_do4485, label %_elihw4486
_do4485:
  %_local4477 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4471
  %_local4478 = load i64, i64* %_i4473
  %_ptr4479 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4477, i32 0, i32 1, i64 %_local4478
  %_elem4480 = load i1, i1* %_ptr4479
  %_ret4481 = call i8* @_string_of_bool(i1 %_elem4480)
  call void @print_string(i8* %_ret4481)
  %_local4482 = load i64, i64* %_i4473
  %_bop4483 = add i64 %_local4482, 1
  store i64 %_bop4483, i64* %_i4473
  br label %_while4484
_elihw4486:
  ret void
}

define i64 @program(i64 %_argc4396, { i64, [0 x i8*] }* %_argv4397) {
  %_argc4398 = alloca i64
  store i64 %_argc4396, i64* %_argc4398
  %_argv4399 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4397, { i64, [0 x i8*] }** %_argv4399
  %_glob4400 = load i64, i64* @_lfsr_length
  %_raw_array4401 = call i64* @oat_alloc_array(i64 %_glob4400)
  %_array4402 = bitcast i64* %_raw_array4401 to { i64, [0 x i1] }*
  %lfsr_register = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4402, { i64, [0 x i1] }** %lfsr_register
  %_i4403 = alloca i64
  store i64 0, i64* %_i4403
  br label %_while4416
_while4416:
  %_local4404 = load i64, i64* %_i4403
  %_glob4405 = load i64, i64* @_lfsr_length
  %_bop4406 = icmp slt i64 %_local4404, %_glob4405
  br i1 %_bop4406, label %_do4417, label %_elihw4418
_do4417:
  %_glob4407 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @_lfsr_init_values
  %_local4408 = load i64, i64* %_i4403
  %_ptr4409 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_glob4407, i32 0, i32 1, i64 %_local4408
  %_elem4410 = load i1, i1* %_ptr4409
  %_local4411 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_local4412 = load i64, i64* %_i4403
  %_ind_assign4413 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4411, i32 0, i32 1, i64 %_local4412
  store i1 %_elem4410, i1* %_ind_assign4413
  %_local4414 = load i64, i64* %_i4403
  %_bop4415 = add i64 %_local4414, 1
  store i64 %_bop4415, i64* %_i4403
  br label %_while4416
_elihw4418:
  %_i4419 = alloca i64
  store i64 0, i64* %_i4419
  br label %_while4457
_while4457:
  %_local4420 = load i64, i64* %_i4419
  %_glob4421 = load i64, i64* @_lfsr_iterations
  %_bop4422 = icmp slt i64 %_local4420, %_glob4421
  br i1 %_bop4422, label %_do4458, label %_elihw4459
_do4458:
  %_local4423 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_glob4424 = load i64, i64* @_lfsr_length
  %_bop4425 = sub i64 %_glob4424, 1
  %_ptr4426 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4423, i32 0, i32 1, i64 %_bop4425
  %_elem4427 = load i1, i1* %_ptr4426
  %_local4428 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_glob4429 = load i64, i64* @_lfsr_length
  %_bop4430 = sub i64 %_glob4429, 2
  %_ptr4431 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4428, i32 0, i32 1, i64 %_bop4430
  %_elem4432 = load i1, i1* %_ptr4431
  %_ret4433 = call i1 @_xor(i1 %_elem4427, i1 %_elem4432)
  %new_first = alloca i1
  store i1 %_ret4433, i1* %new_first
  %_glob4435 = load i64, i64* @_lfsr_length
  %_bop4436 = sub i64 %_glob4435, 1
  %_j4434 = alloca i64
  store i64 %_bop4436, i64* %_j4434
  br label %_while4449
_while4449:
  %_local4437 = load i64, i64* %_j4434
  %_bop4438 = icmp sgt i64 %_local4437, 0
  br i1 %_bop4438, label %_do4450, label %_elihw4451
_do4450:
  %_local4439 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_local4440 = load i64, i64* %_j4434
  %_bop4441 = sub i64 %_local4440, 1
  %_ptr4442 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4439, i32 0, i32 1, i64 %_bop4441
  %_elem4443 = load i1, i1* %_ptr4442
  %_local4444 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_local4445 = load i64, i64* %_j4434
  %_ind_assign4446 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4444, i32 0, i32 1, i64 %_local4445
  store i1 %_elem4443, i1* %_ind_assign4446
  %_local4447 = load i64, i64* %_j4434
  %_bop4448 = sub i64 %_local4447, 1
  store i64 %_bop4448, i64* %_j4434
  br label %_while4449
_elihw4451:
  %_local4452 = load i1, i1* %new_first
  %_local4453 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_ind_assign4454 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local4453, i32 0, i32 1, i32 0
  store i1 %_local4452, i1* %_ind_assign4454
  %_local4455 = load i64, i64* %_i4419
  %_bop4456 = add i64 %_local4455, 1
  store i64 %_bop4456, i64* %_i4419
  br label %_while4457
_elihw4459:
  %_glob4460 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @_lfsr_init_values
  %_glob4461 = load i64, i64* @_lfsr_length
  call void @_print_lfsr({ i64, [0 x i1] }* %_glob4460, i64 %_glob4461)
  %_raw_array4463 = call i64* @oat_alloc_array(i64 1)
  %_array4464 = bitcast i64* %_raw_array4463 to { i64, [0 x i64] }*
  %_ind4465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4464, i32 0, i32 1, i32 0
  store i64 32, i64* %_ind4465
  %_strr_arr4462 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4464)
  call void @print_string(i8* %_strr_arr4462)
  %_local4466 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_glob4467 = load i64, i64* @_lfsr_length
  call void @_print_lfsr({ i64, [0 x i1] }* %_local4466, i64 %_glob4467)
  %_fun_return4468 = bitcast i64 0 to i64
  ret i64 %_fun_return4468
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
