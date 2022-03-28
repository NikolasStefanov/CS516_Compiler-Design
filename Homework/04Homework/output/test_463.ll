; generated from: hw4programs/lib9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2586, { i64, [0 x i8*] }* %_argv2587) {
  %_argc2588 = alloca i64
  store i64 %_argc2586, i64* %_argc2588
  %_argv2589 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2587, { i64, [0 x i8*] }** %_argv2589
  %_i2590 = alloca i64
  store i64 1, i64* %_i2590
  br label %_while2600
_while2600:
  %_local2591 = load i64, i64* %_i2590
  %_local2592 = load i64, i64* %_argc2588
  %_bop2593 = icmp slt i64 %_local2591, %_local2592
  br i1 %_bop2593, label %_do2601, label %_elihw2602
_do2601:
  %_local2594 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2589
  %_local2595 = load i64, i64* %_i2590
  %_ptr2596 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_local2594, i32 0, i32 1, i64 %_local2595
  %_elem2597 = load i8*, i8** %_ptr2596
  call void @print_string(i8* %_elem2597)
  %_local2598 = load i64, i64* %_i2590
  %_bop2599 = add i64 %_local2598, 1
  store i64 %_bop2599, i64* %_i2590
  br label %_while2600
_elihw2602:
  %_local2604 = load i64, i64* %_argc2588
  %_fun_return2603 = bitcast i64 %_local2604 to i64
  ret i64 %_fun_return2603
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
