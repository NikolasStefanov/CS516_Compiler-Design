; generated from: hw4programs/josh_joyce_test.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global4643 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_unused_global4643 to { i64, [0 x i64] }*)
@_unused_global4642 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_unused_global4642 to { i64, [0 x i64] }*)

define i64 @arrcheck({ i64, [0 x i64] }* %_ar14613, { i64, [0 x i64] }* %_ar24614, i64 %_len4615) {
  %_ar14616 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ar14613, { i64, [0 x i64] }** %_ar14616
  %_ar24617 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ar24614, { i64, [0 x i64] }** %_ar24617
  %_len4618 = alloca i64
  store i64 %_len4615, i64* %_len4618
  %val = alloca i64
  store i64 0, i64* %val
  %_i4619 = alloca i64
  store i64 0, i64* %_i4619
  br label %_while4637
_while4637:
  %_local4620 = load i64, i64* %_i4619
  %_local4621 = load i64, i64* %_len4618
  %_bop4622 = icmp slt i64 %_local4620, %_local4621
  br i1 %_bop4622, label %_do4638, label %_elihw4639
_do4638:
  %_local4623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14616
  %_local4624 = load i64, i64* %_i4619
  %_ptr4625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4623, i32 0, i32 1, i64 %_local4624
  %_elem4626 = load i64, i64* %_ptr4625
  %_local4627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24617
  %_local4628 = load i64, i64* %_i4619
  %_ptr4629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4627, i32 0, i32 1, i64 %_local4628
  %_elem4630 = load i64, i64* %_ptr4629
  %_bop4631 = icmp ne i64 %_elem4626, %_elem4630
  br i1 %_bop4631, label %_if4632, label %_else4633
_if4632:
  store i64 1, i64* %val
  br label %_fi4634
_else4633:
  br label %_fi4634
_fi4634:
  %_local4635 = load i64, i64* %_i4619
  %_bop4636 = add i64 %_local4635, 1
  store i64 %_bop4636, i64* %_i4619
  br label %_while4637
_elihw4639:
  %_local4641 = load i64, i64* %val
  %_fun_return4640 = bitcast i64 %_local4641 to i64
  ret i64 %_fun_return4640
}

define i64 @program(i64 %_argc4600, { i64, [0 x i8*] }* %_argv4601) {
  %_argc4602 = alloca i64
  store i64 %_argc4600, i64* %_argc4602
  %_argv4603 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4601, { i64, [0 x i8*] }** %_argv4603
  %val = alloca i64
  store i64 1, i64* %val
  %_glob4604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_arr1
  %_glob4605 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_arr2
  %_ret4606 = call i64 @_arrcheck({ i64, [0 x i64] }* %_glob4604, { i64, [0 x i64] }* %_glob4605, i64 4)
  %_bop4607 = icmp eq i64 %_ret4606, 1
  br i1 %_bop4607, label %_if4608, label %_else4609
_if4608:
  store i64 0, i64* %val
  br label %_fi4610
_else4609:
  br label %_fi4610
_fi4610:
  %_local4612 = load i64, i64* %val
  %_fun_return4611 = bitcast i64 %_local4612 to i64
  ret i64 %_fun_return4611
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
