; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %_a4425, i64 %_len4426) {
  %_a4427 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a4425, { i64, [0 x i64] }** %_a4427
  %_len4428 = alloca i64
  store i64 %_len4426, i64* %_len4428
  %i = alloca i64
  store i64 1, i64* %i
  %j = alloca i64
  store i64 2, i64* %j
  br label %_while4475
_while4475:
  %_local4429 = load i64, i64* %i
  %_local4430 = load i64, i64* %_len4428
  %_bop4431 = icmp slt i64 %_local4429, %_local4430
  br i1 %_bop4431, label %_do4476, label %_elihw4477
_do4476:
  %_local4432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4427
  %_local4433 = load i64, i64* %i
  %_bop4434 = sub i64 %_local4433, 1
  %_ptr4435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4432, i32 0, i32 1, i64 %_bop4434
  %_elem4436 = load i64, i64* %_ptr4435
  %_local4437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4427
  %_local4438 = load i64, i64* %i
  %_ptr4439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4437, i32 0, i32 1, i64 %_local4438
  %_elem4440 = load i64, i64* %_ptr4439
  %_bop4441 = icmp sle i64 %_elem4436, %_elem4440
  br i1 %_bop4441, label %_if4472, label %_else4473
_if4472:
  %_local4442 = load i64, i64* %j
  store i64 %_local4442, i64* %i
  %_local4443 = load i64, i64* %j
  %_bop4444 = add i64 %_local4443, 1
  store i64 %_bop4444, i64* %j
  br label %_fi4474
_else4473:
  %_local4445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4427
  %_local4446 = load i64, i64* %i
  %_bop4447 = sub i64 %_local4446, 1
  %_ptr4448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4445, i32 0, i32 1, i64 %_bop4447
  %_elem4449 = load i64, i64* %_ptr4448
  %tmp = alloca i64
  store i64 %_elem4449, i64* %tmp
  %_local4450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4427
  %_local4451 = load i64, i64* %i
  %_ptr4452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4450, i32 0, i32 1, i64 %_local4451
  %_elem4453 = load i64, i64* %_ptr4452
  %_local4454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4427
  %_local4455 = load i64, i64* %i
  %_bop4456 = sub i64 %_local4455, 1
  %_ind_assign4457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4454, i32 0, i32 1, i64 %_bop4456
  store i64 %_elem4453, i64* %_ind_assign4457
  %_local4458 = load i64, i64* %tmp
  %_local4459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4427
  %_local4460 = load i64, i64* %i
  %_ind_assign4461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4459, i32 0, i32 1, i64 %_local4460
  store i64 %_local4458, i64* %_ind_assign4461
  %_local4462 = load i64, i64* %i
  %_bop4463 = sub i64 %_local4462, 1
  store i64 %_bop4463, i64* %i
  %_local4464 = load i64, i64* %i
  %_bop4465 = icmp eq i64 %_local4464, 0
  br i1 %_bop4465, label %_if4469, label %_else4470
_if4469:
  %_local4466 = load i64, i64* %j
  store i64 %_local4466, i64* %i
  %_local4467 = load i64, i64* %j
  %_bop4468 = add i64 %_local4467, 1
  store i64 %_bop4468, i64* %j
  br label %_fi4471
_else4470:
  br label %_fi4471
_fi4471:
  br label %_fi4474
_fi4474:
  br label %_while4475
_elihw4477:
  ret void
}

define i64 @program(i64 %_argc4396, { i64, [0 x i8*] }* %_argv4397) {
  %_argc4398 = alloca i64
  store i64 %_argc4396, i64* %_argc4398
  %_argv4399 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4397, { i64, [0 x i8*] }** %_argv4399
  %_raw_array4400 = call i64* @oat_alloc_array(i64 8)
  %_array4401 = bitcast i64* %_raw_array4400 to { i64, [0 x i64] }*
  %_ind4402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind4402
  %_ind4403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind4403
  %_ind4404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4404
  %_ind4405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4405
  %_ind4406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind4406
  %_ind4407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind4407
  %_ind4408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind4408
  %_ind4409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4401, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind4409
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4401, { i64, [0 x i64] }** %arr
  %len = alloca i64
  store i64 8, i64* %len
  %_local4410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local4411 = load i64, i64* %len
  call void @_gnomeSort({ i64, [0 x i64] }* %_local4410, i64 %_local4411)
  %_i4412 = alloca i64
  store i64 0, i64* %_i4412
  br label %_while4421
_while4421:
  %_local4413 = load i64, i64* %_i4412
  %_bop4414 = icmp slt i64 %_local4413, 8
  br i1 %_bop4414, label %_do4422, label %_elihw4423
_do4422:
  %_local4415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local4416 = load i64, i64* %_i4412
  %_ptr4417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4415, i32 0, i32 1, i64 %_local4416
  %_elem4418 = load i64, i64* %_ptr4417
  call void @print_int(i64 %_elem4418)
  %_local4419 = load i64, i64* %_i4412
  %_bop4420 = add i64 %_local4419, 1
  store i64 %_bop4420, i64* %_i4412
  br label %_while4421
_elihw4423:
  %_fun_return4424 = bitcast i64 0 to i64
  ret i64 %_fun_return4424
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
