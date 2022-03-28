; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %_i2595) {
  %_i2596 = alloca i64
  store i64 %_i2595, i64* %_i2596
  %r = alloca i64
  store i64 0, i64* %r
  %_local2597 = load i64, i64* %_i2596
  %_bop2598 = icmp eq i64 %_local2597, 0
  br i1 %_bop2598, label %_if2604, label %_else2605
_if2604:
  store i64 1, i64* %r
  br label %_fi2606
_else2605:
  %_local2599 = load i64, i64* %_i2596
  %_local2600 = load i64, i64* %_i2596
  %_bop2601 = sub i64 %_local2600, 1
  %_ret2602 = call i64 @_f(i64 %_bop2601)
  %_bop2603 = mul i64 %_local2599, %_ret2602
  store i64 %_bop2603, i64* %r
  br label %_fi2606
_fi2606:
  %_local2608 = load i64, i64* %r
  %_fun_return2607 = bitcast i64 %_local2608 to i64
  ret i64 %_fun_return2607
}

define i64 @program(i64 %_argc2589, { i64, [0 x i8*] }* %_argv2590) {
  %_argc2591 = alloca i64
  store i64 %_argc2589, i64* %_argc2591
  %_argv2592 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2590, { i64, [0 x i8*] }** %_argv2592
  %_ret2594 = call i64 @_f(i64 5)
  %_fun_return2593 = bitcast i64 %_ret2594 to i64
  ret i64 %_fun_return2593
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
