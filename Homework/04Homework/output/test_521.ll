; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %i = alloca i64
  store i64 12, i64* %i
  %_local630 = load i64, i64* %i
  %_fun_return629 = bitcast i64 %_local630 to i64
  ret i64 %_fun_return629
}

define i64 @g() {
  %i = alloca i64
  store i64 10, i64* %i
  %_local628 = load i64, i64* %i
  %_fun_return627 = bitcast i64 %_local628 to i64
  ret i64 %_fun_return627
}

define i64 @program(i64 %_argc617, { i64, [0 x i8*] }* %_argv618) {
  %_argc619 = alloca i64
  store i64 %_argc617, i64* %_argc619
  %_argv620 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv618, { i64, [0 x i8*] }** %_argv620
  %_ret622 = call i64 @_f()
  %_ret623 = call i64 @_g()
  %_bop624 = add i64 %_ret622, %_ret623
  %_glob625 = load i64, i64* @_i
  %_bop626 = add i64 %_bop624, %_glob625
  %_fun_return621 = bitcast i64 %_bop626 to i64
  ret i64 %_fun_return621
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
