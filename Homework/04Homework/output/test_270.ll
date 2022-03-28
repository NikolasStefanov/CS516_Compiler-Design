; generated from: hw4programs/josh_joyce_test.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global4521 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_unused_global4521 to { i64, [0 x i64] }*)
@_unused_global4520 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_unused_global4520 to { i64, [0 x i64] }*)

define i64 @arrcheck({ i64, [0 x i64] }* %_ar14491, { i64, [0 x i64] }* %_ar24492, i64 %_len4493) {
  %_ar14494 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ar14491, { i64, [0 x i64] }** %_ar14494
  %_ar24495 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ar24492, { i64, [0 x i64] }** %_ar24495
  %_len4496 = alloca i64
  store i64 %_len4493, i64* %_len4496
  %val = alloca i64
  store i64 0, i64* %val
  %_i4497 = alloca i64
  store i64 0, i64* %_i4497
  br label %_while4515
_while4515:
  %_local4498 = load i64, i64* %_i4497
  %_local4499 = load i64, i64* %_len4496
  %_bop4500 = icmp slt i64 %_local4498, %_local4499
  br i1 %_bop4500, label %_do4516, label %_elihw4517
_do4516:
  %_local4501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14494
  %_local4502 = load i64, i64* %_i4497
  %_ptr4503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4501, i32 0, i32 1, i64 %_local4502
  %_elem4504 = load i64, i64* %_ptr4503
  %_local4505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24495
  %_local4506 = load i64, i64* %_i4497
  %_ptr4507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4505, i32 0, i32 1, i64 %_local4506
  %_elem4508 = load i64, i64* %_ptr4507
  %_bop4509 = icmp ne i64 %_elem4504, %_elem4508
  br i1 %_bop4509, label %_if4510, label %_else4511
_if4510:
  store i64 1, i64* %val
  br label %_fi4512
_else4511:
  br label %_fi4512
_fi4512:
  %_local4513 = load i64, i64* %_i4497
  %_bop4514 = add i64 %_local4513, 1
  store i64 %_bop4514, i64* %_i4497
  br label %_while4515
_elihw4517:
  %_local4519 = load i64, i64* %val
  %_fun_return4518 = bitcast i64 %_local4519 to i64
  ret i64 %_fun_return4518
}

define i64 @program(i64 %_argc4478, { i64, [0 x i8*] }* %_argv4479) {
  %_argc4480 = alloca i64
  store i64 %_argc4478, i64* %_argc4480
  %_argv4481 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4479, { i64, [0 x i8*] }** %_argv4481
  %val = alloca i64
  store i64 1, i64* %val
  %_glob4482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_arr1
  %_glob4483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_arr2
  %_ret4484 = call i64 @_arrcheck({ i64, [0 x i64] }* %_glob4482, { i64, [0 x i64] }* %_glob4483, i64 4)
  %_bop4485 = icmp eq i64 %_ret4484, 1
  br i1 %_bop4485, label %_if4486, label %_else4487
_if4486:
  store i64 0, i64* %val
  br label %_fi4488
_else4487:
  br label %_fi4488
_fi4488:
  %_local4490 = load i64, i64* %val
  %_fun_return4489 = bitcast i64 %_local4490 to i64
  ret i64 %_fun_return4489
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
