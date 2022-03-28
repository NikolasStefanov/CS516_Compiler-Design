; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_ret689 = call i64 @_f2()
  %_fun_return688 = bitcast i64 %_ret689 to i64
  ret i64 %_fun_return688
}

define i64 @f2() {
  %_ret687 = call i64 @_f3()
  %_fun_return686 = bitcast i64 %_ret687 to i64
  ret i64 %_fun_return686
}

define i64 @f3() {
  %_ret685 = call i64 @_f4()
  %_fun_return684 = bitcast i64 %_ret685 to i64
  ret i64 %_fun_return684
}

define i64 @f4() {
  %_ret683 = call i64 @_f5()
  %_fun_return682 = bitcast i64 %_ret683 to i64
  ret i64 %_fun_return682
}

define i64 @f5() {
  %_ret681 = call i64 @_f6()
  %_fun_return680 = bitcast i64 %_ret681 to i64
  ret i64 %_fun_return680
}

define i64 @f6() {
  %_ret679 = call i64 @_f7()
  %_fun_return678 = bitcast i64 %_ret679 to i64
  ret i64 %_fun_return678
}

define i64 @f7() {
  %_ret677 = call i64 @_f8()
  %_fun_return676 = bitcast i64 %_ret677 to i64
  ret i64 %_fun_return676
}

define i64 @f8() {
  %_ret675 = call i64 @_f9()
  %_fun_return674 = bitcast i64 %_ret675 to i64
  ret i64 %_fun_return674
}

define i64 @f9() {
  %_fun_return673 = bitcast i64 31 to i64
  ret i64 %_fun_return673
}

define i64 @program(i64 %_argc667, { i64, [0 x i8*] }* %_argv668) {
  %_argc669 = alloca i64
  store i64 %_argc667, i64* %_argc669
  %_argv670 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv668, { i64, [0 x i8*] }** %_argv670
  %_ret672 = call i64 @_f1()
  %_fun_return671 = bitcast i64 %_ret672 to i64
  ret i64 %_fun_return671
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
