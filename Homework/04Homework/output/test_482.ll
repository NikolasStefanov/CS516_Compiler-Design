; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-apple-macosx10.13.0"
define void @gnomeSort({ i64, [0 x i64] }* %_a4547, i64 %_len4548) {
  %_a4549 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a4547, { i64, [0 x i64] }** %_a4549
  %_len4550 = alloca i64
  store i64 %_len4548, i64* %_len4550
  %i = alloca i64
  store i64 1, i64* %i
  %j = alloca i64
  store i64 2, i64* %j
  br label %_while4597
_while4597:
  %_local4551 = load i64, i64* %i
  %_local4552 = load i64, i64* %_len4550
  %_bop4553 = icmp slt i64 %_local4551, %_local4552
  br i1 %_bop4553, label %_do4598, label %_elihw4599
_do4598:
  %_local4554 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4549
  %_local4555 = load i64, i64* %i
  %_bop4556 = sub i64 %_local4555, 1
  %_ptr4557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4554, i32 0, i32 1, i64 %_bop4556
  %_elem4558 = load i64, i64* %_ptr4557
  %_local4559 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4549
  %_local4560 = load i64, i64* %i
  %_ptr4561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4559, i32 0, i32 1, i64 %_local4560
  %_elem4562 = load i64, i64* %_ptr4561
  %_bop4563 = icmp sle i64 %_elem4558, %_elem4562
  br i1 %_bop4563, label %_if4594, label %_else4595
_if4594:
  %_local4564 = load i64, i64* %j
  store i64 %_local4564, i64* %i
  %_local4565 = load i64, i64* %j
  %_bop4566 = add i64 %_local4565, 1
  store i64 %_bop4566, i64* %j
  br label %_fi4596
_else4595:
  %_local4567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4549
  %_local4568 = load i64, i64* %i
  %_bop4569 = sub i64 %_local4568, 1
  %_ptr4570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4567, i32 0, i32 1, i64 %_bop4569
  %_elem4571 = load i64, i64* %_ptr4570
  %tmp = alloca i64
  store i64 %_elem4571, i64* %tmp
  %_local4572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4549
  %_local4573 = load i64, i64* %i
  %_ptr4574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4572, i32 0, i32 1, i64 %_local4573
  %_elem4575 = load i64, i64* %_ptr4574
  %_local4576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4549
  %_local4577 = load i64, i64* %i
  %_bop4578 = sub i64 %_local4577, 1
  %_ind_assign4579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4576, i32 0, i32 1, i64 %_bop4578
  store i64 %_elem4575, i64* %_ind_assign4579
  %_local4580 = load i64, i64* %tmp
  %_local4581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4549
  %_local4582 = load i64, i64* %i
  %_ind_assign4583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4581, i32 0, i32 1, i64 %_local4582
  store i64 %_local4580, i64* %_ind_assign4583
  %_local4584 = load i64, i64* %i
  %_bop4585 = sub i64 %_local4584, 1
  store i64 %_bop4585, i64* %i
  %_local4586 = load i64, i64* %i
  %_bop4587 = icmp eq i64 %_local4586, 0
  br i1 %_bop4587, label %_if4591, label %_else4592
_if4591:
  %_local4588 = load i64, i64* %j
  store i64 %_local4588, i64* %i
  %_local4589 = load i64, i64* %j
  %_bop4590 = add i64 %_local4589, 1
  store i64 %_bop4590, i64* %j
  br label %_fi4593
_else4592:
  br label %_fi4593
_fi4593:
  br label %_fi4596
_fi4596:
  br label %_while4597
_elihw4599:
  ret void
}

define i64 @program(i64 %_argc4518, { i64, [0 x i8*] }* %_argv4519) {
  %_argc4520 = alloca i64
  store i64 %_argc4518, i64* %_argc4520
  %_argv4521 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4519, { i64, [0 x i8*] }** %_argv4521
  %_raw_array4522 = call i64* @oat_alloc_array(i64 8)
  %_array4523 = bitcast i64* %_raw_array4522 to { i64, [0 x i64] }*
  %_ind4524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind4524
  %_ind4525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind4525
  %_ind4526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4526
  %_ind4527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4527
  %_ind4528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind4528
  %_ind4529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind4529
  %_ind4530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind4530
  %_ind4531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind4531
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4523, { i64, [0 x i64] }** %arr
  %len = alloca i64
  store i64 8, i64* %len
  %_local4532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local4533 = load i64, i64* %len
  call void @_gnomeSort({ i64, [0 x i64] }* %_local4532, i64 %_local4533)
  %_i4534 = alloca i64
  store i64 0, i64* %_i4534
  br label %_while4543
_while4543:
  %_local4535 = load i64, i64* %_i4534
  %_bop4536 = icmp slt i64 %_local4535, 8
  br i1 %_bop4536, label %_do4544, label %_elihw4545
_do4544:
  %_local4537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local4538 = load i64, i64* %_i4534
  %_ptr4539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4537, i32 0, i32 1, i64 %_local4538
  %_elem4540 = load i64, i64* %_ptr4539
  call void @print_int(i64 %_elem4540)
  %_local4541 = load i64, i64* %_i4534
  %_bop4542 = add i64 %_local4541, 1
  store i64 %_bop4542, i64* %_i4534
  br label %_while4543
_elihw4545:
  %_fun_return4546 = bitcast i64 0 to i64
  ret i64 %_fun_return4546
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
