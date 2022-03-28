; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %_i858) {
  %_i859 = alloca i64
  store i64 %_i858, i64* %_i859
  %_local861 = load i64, i64* %_i859
  %_ret862 = call i64 @_f2(i64 %_local861)
  %_fun_return860 = bitcast i64 %_ret862 to i64
  ret i64 %_fun_return860
}

define i64 @f2(i64 %_i853) {
  %_i854 = alloca i64
  store i64 %_i853, i64* %_i854
  %_local856 = load i64, i64* %_i854
  %_ret857 = call i64 @_f3(i64 %_local856)
  %_fun_return855 = bitcast i64 %_ret857 to i64
  ret i64 %_fun_return855
}

define i64 @f3(i64 %_i848) {
  %_i849 = alloca i64
  store i64 %_i848, i64* %_i849
  %_local851 = load i64, i64* %_i849
  %_ret852 = call i64 @_f4(i64 %_local851)
  %_fun_return850 = bitcast i64 %_ret852 to i64
  ret i64 %_fun_return850
}

define i64 @f4(i64 %_i843) {
  %_i844 = alloca i64
  store i64 %_i843, i64* %_i844
  %_local846 = load i64, i64* %_i844
  %_ret847 = call i64 @_f5(i64 %_local846)
  %_fun_return845 = bitcast i64 %_ret847 to i64
  ret i64 %_fun_return845
}

define i64 @f5(i64 %_i838) {
  %_i839 = alloca i64
  store i64 %_i838, i64* %_i839
  %_local841 = load i64, i64* %_i839
  %_ret842 = call i64 @_f6(i64 %_local841)
  %_fun_return840 = bitcast i64 %_ret842 to i64
  ret i64 %_fun_return840
}

define i64 @f6(i64 %_i833) {
  %_i834 = alloca i64
  store i64 %_i833, i64* %_i834
  %_local836 = load i64, i64* %_i834
  %_ret837 = call i64 @_f7(i64 %_local836)
  %_fun_return835 = bitcast i64 %_ret837 to i64
  ret i64 %_fun_return835
}

define i64 @f7(i64 %_i828) {
  %_i829 = alloca i64
  store i64 %_i828, i64* %_i829
  %_local831 = load i64, i64* %_i829
  %_ret832 = call i64 @_f8(i64 %_local831)
  %_fun_return830 = bitcast i64 %_ret832 to i64
  ret i64 %_fun_return830
}

define i64 @f8(i64 %_i823) {
  %_i824 = alloca i64
  store i64 %_i823, i64* %_i824
  %_local826 = load i64, i64* %_i824
  %_ret827 = call i64 @_f9(i64 %_local826)
  %_fun_return825 = bitcast i64 %_ret827 to i64
  ret i64 %_fun_return825
}

define i64 @f9(i64 %_i819) {
  %_i820 = alloca i64
  store i64 %_i819, i64* %_i820
  %_local822 = load i64, i64* %_i820
  %_fun_return821 = bitcast i64 %_local822 to i64
  ret i64 %_fun_return821
}

define i64 @program(i64 %_argc812, { i64, [0 x i8*] }* %_argv813) {
  %_argc814 = alloca i64
  store i64 %_argc812, i64* %_argc814
  %_argv815 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv813, { i64, [0 x i8*] }** %_argv815
  %_local817 = load i64, i64* %_argc814
  %_ret818 = call i64 @_f1(i64 %_local817)
  %_fun_return816 = bitcast i64 %_ret818 to i64
  ret i64 %_fun_return816
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
