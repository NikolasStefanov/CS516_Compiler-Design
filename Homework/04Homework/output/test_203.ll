; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc525, { i64, [0 x i8*] }* %_argv526) {
  %_argc527 = alloca i64
  store i64 %_argc525, i64* %_argc527
  %_argv528 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv526, { i64, [0 x i8*] }** %_argv528
  %_raw_array529 = call i64* @oat_alloc_array(i64 3)
  %_array530 = bitcast i64* %_raw_array529 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array531 = call i64* @oat_alloc_array(i64 4)
  %_array532 = bitcast i64* %_raw_array531 to { i64, [0 x i64] }*
  %_ind533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind533
  %_ind534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind534
  %_ind535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind535
  %_ind536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array532, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind536
  %_raw_array537 = call i64* @oat_alloc_array(i64 4)
  %_array538 = bitcast i64* %_raw_array537 to { i64, [0 x i64] }*
  %_ind539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array538, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind539
  %_ind540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array538, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind540
  %_ind541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array538, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind541
  %_ind542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array538, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind542
  %_raw_array543 = call i64* @oat_alloc_array(i64 4)
  %_array544 = bitcast i64* %_raw_array543 to { i64, [0 x i64] }*
  %_ind545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array544, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind545
  %_ind546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array544, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind546
  %_ind547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array544, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind547
  %_ind548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array544, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind548
  %_ind549 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array530, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array532, { i64, [0 x i64] }** %_ind549
  %_ind550 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array530, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array538, { i64, [0 x i64] }** %_ind550
  %_ind551 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array530, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array544, { i64, [0 x i64] }** %_ind551
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array530, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %s = alloca i64
  store i64 0, i64* %s
  %_i552 = alloca i64
  store i64 0, i64* %_i552
  br label %_while574
_while574:
  %_local553 = load i64, i64* %_i552
  %_bop554 = icmp slt i64 %_local553, 3
  br i1 %_bop554, label %_do575, label %_elihw576
_do575:
  %_j555 = alloca i64
  store i64 0, i64* %_j555
  br label %_while569
_while569:
  %_local556 = load i64, i64* %_j555
  %_bop557 = icmp slt i64 %_local556, 4
  br i1 %_bop557, label %_do570, label %_elihw571
_do570:
  %_local558 = load i64, i64* %s
  %_local559 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local560 = load i64, i64* %_i552
  %_ptr561 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local559, i32 0, i32 1, i64 %_local560
  %_elem562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr561
  %_local563 = load i64, i64* %_j555
  %_ptr564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem562, i32 0, i32 1, i64 %_local563
  %_elem565 = load i64, i64* %_ptr564
  %_bop566 = add i64 %_local558, %_elem565
  store i64 %_bop566, i64* %s
  %_local567 = load i64, i64* %_j555
  %_bop568 = add i64 %_local567, 1
  store i64 %_bop568, i64* %_j555
  br label %_while569
_elihw571:
  %_local572 = load i64, i64* %_i552
  %_bop573 = add i64 %_local572, 1
  store i64 %_bop573, i64* %_i552
  br label %_while574
_elihw576:
  %_local578 = load i64, i64* %s
  %_fun_return577 = bitcast i64 %_local578 to i64
  ret i64 %_fun_return577
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
