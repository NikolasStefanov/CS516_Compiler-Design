; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %_i736) {
  %_i737 = alloca i64
  store i64 %_i736, i64* %_i737
  %_local739 = load i64, i64* %_i737
  %_ret740 = call i64 @_f2(i64 %_local739)
  %_fun_return738 = bitcast i64 %_ret740 to i64
  ret i64 %_fun_return738
}

define i64 @f2(i64 %_i731) {
  %_i732 = alloca i64
  store i64 %_i731, i64* %_i732
  %_local734 = load i64, i64* %_i732
  %_ret735 = call i64 @_f3(i64 %_local734)
  %_fun_return733 = bitcast i64 %_ret735 to i64
  ret i64 %_fun_return733
}

define i64 @f3(i64 %_i726) {
  %_i727 = alloca i64
  store i64 %_i726, i64* %_i727
  %_local729 = load i64, i64* %_i727
  %_ret730 = call i64 @_f4(i64 %_local729)
  %_fun_return728 = bitcast i64 %_ret730 to i64
  ret i64 %_fun_return728
}

define i64 @f4(i64 %_i721) {
  %_i722 = alloca i64
  store i64 %_i721, i64* %_i722
  %_local724 = load i64, i64* %_i722
  %_ret725 = call i64 @_f5(i64 %_local724)
  %_fun_return723 = bitcast i64 %_ret725 to i64
  ret i64 %_fun_return723
}

define i64 @f5(i64 %_i716) {
  %_i717 = alloca i64
  store i64 %_i716, i64* %_i717
  %_local719 = load i64, i64* %_i717
  %_ret720 = call i64 @_f6(i64 %_local719)
  %_fun_return718 = bitcast i64 %_ret720 to i64
  ret i64 %_fun_return718
}

define i64 @f6(i64 %_i711) {
  %_i712 = alloca i64
  store i64 %_i711, i64* %_i712
  %_local714 = load i64, i64* %_i712
  %_ret715 = call i64 @_f7(i64 %_local714)
  %_fun_return713 = bitcast i64 %_ret715 to i64
  ret i64 %_fun_return713
}

define i64 @f7(i64 %_i706) {
  %_i707 = alloca i64
  store i64 %_i706, i64* %_i707
  %_local709 = load i64, i64* %_i707
  %_ret710 = call i64 @_f8(i64 %_local709)
  %_fun_return708 = bitcast i64 %_ret710 to i64
  ret i64 %_fun_return708
}

define i64 @f8(i64 %_i701) {
  %_i702 = alloca i64
  store i64 %_i701, i64* %_i702
  %_local704 = load i64, i64* %_i702
  %_ret705 = call i64 @_f9(i64 %_local704)
  %_fun_return703 = bitcast i64 %_ret705 to i64
  ret i64 %_fun_return703
}

define i64 @f9(i64 %_i697) {
  %_i698 = alloca i64
  store i64 %_i697, i64* %_i698
  %_local700 = load i64, i64* %_i698
  %_fun_return699 = bitcast i64 %_local700 to i64
  ret i64 %_fun_return699
}

define i64 @program(i64 %_argc690, { i64, [0 x i8*] }* %_argv691) {
  %_argc692 = alloca i64
  store i64 %_argc690, i64* %_argc692
  %_argv693 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv691, { i64, [0 x i8*] }** %_argv693
  %_local695 = load i64, i64* %_argc692
  %_ret696 = call i64 @_f1(i64 %_local695)
  %_fun_return694 = bitcast i64 %_ret696 to i64
  ret i64 %_fun_return694
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
