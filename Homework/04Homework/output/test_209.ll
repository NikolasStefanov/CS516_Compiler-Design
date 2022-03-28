; generated from: hw4programs/run40.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 8

define i64 @f() {
  %j = alloca i64
  store i64 0, i64* %j
  %_ret749 = call i64 @_g()
  store i64 %_ret749, i64* %j
  %_local751 = load i64, i64* %j
  %_fun_return750 = bitcast i64 %_local751 to i64
  ret i64 %_fun_return750
}

define i64 @g() {
  %_glob748 = load i64, i64* @_i
  %_fun_return747 = bitcast i64 %_glob748 to i64
  ret i64 %_fun_return747
}

define i64 @program(i64 %_argc741, { i64, [0 x i8*] }* %_argv742) {
  %_argc743 = alloca i64
  store i64 %_argc741, i64* %_argc743
  %_argv744 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv742, { i64, [0 x i8*] }** %_argv744
  %_ret746 = call i64 @_f()
  %_fun_return745 = bitcast i64 %_ret746 to i64
  ret i64 %_fun_return745
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
