; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %_i2717) {
  %_i2718 = alloca i64
  store i64 %_i2717, i64* %_i2718
  %r = alloca i64
  store i64 0, i64* %r
  %_local2719 = load i64, i64* %_i2718
  %_bop2720 = icmp eq i64 %_local2719, 0
  br i1 %_bop2720, label %_if2726, label %_else2727
_if2726:
  store i64 1, i64* %r
  br label %_fi2728
_else2727:
  %_local2721 = load i64, i64* %_i2718
  %_local2722 = load i64, i64* %_i2718
  %_bop2723 = sub i64 %_local2722, 1
  %_ret2724 = call i64 @_f(i64 %_bop2723)
  %_bop2725 = mul i64 %_local2721, %_ret2724
  store i64 %_bop2725, i64* %r
  br label %_fi2728
_fi2728:
  %_local2730 = load i64, i64* %r
  %_fun_return2729 = bitcast i64 %_local2730 to i64
  ret i64 %_fun_return2729
}

define i64 @program(i64 %_argc2711, { i64, [0 x i8*] }* %_argv2712) {
  %_argc2713 = alloca i64
  store i64 %_argc2711, i64* %_argc2713
  %_argv2714 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2712, { i64, [0 x i8*] }** %_argv2714
  %_ret2716 = call i64 @_f(i64 5)
  %_fun_return2715 = bitcast i64 %_ret2716 to i64
  ret i64 %_fun_return2715
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
