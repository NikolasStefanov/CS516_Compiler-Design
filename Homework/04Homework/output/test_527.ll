; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_ret811 = call i64 @_f2()
  %_fun_return810 = bitcast i64 %_ret811 to i64
  ret i64 %_fun_return810
}

define i64 @f2() {
  %_ret809 = call i64 @_f3()
  %_fun_return808 = bitcast i64 %_ret809 to i64
  ret i64 %_fun_return808
}

define i64 @f3() {
  %_ret807 = call i64 @_f4()
  %_fun_return806 = bitcast i64 %_ret807 to i64
  ret i64 %_fun_return806
}

define i64 @f4() {
  %_ret805 = call i64 @_f5()
  %_fun_return804 = bitcast i64 %_ret805 to i64
  ret i64 %_fun_return804
}

define i64 @f5() {
  %_ret803 = call i64 @_f6()
  %_fun_return802 = bitcast i64 %_ret803 to i64
  ret i64 %_fun_return802
}

define i64 @f6() {
  %_ret801 = call i64 @_f7()
  %_fun_return800 = bitcast i64 %_ret801 to i64
  ret i64 %_fun_return800
}

define i64 @f7() {
  %_ret799 = call i64 @_f8()
  %_fun_return798 = bitcast i64 %_ret799 to i64
  ret i64 %_fun_return798
}

define i64 @f8() {
  %_ret797 = call i64 @_f9()
  %_fun_return796 = bitcast i64 %_ret797 to i64
  ret i64 %_fun_return796
}

define i64 @f9() {
  %_fun_return795 = bitcast i64 31 to i64
  ret i64 %_fun_return795
}

define i64 @program(i64 %_argc789, { i64, [0 x i8*] }* %_argv790) {
  %_argc791 = alloca i64
  store i64 %_argc789, i64* %_argc791
  %_argv792 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv790, { i64, [0 x i8*] }** %_argv792
  %_ret794 = call i64 @_f1()
  %_fun_return793 = bitcast i64 %_ret794 to i64
  ret i64 %_fun_return793
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
