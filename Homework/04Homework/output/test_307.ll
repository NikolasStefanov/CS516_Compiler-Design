; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %i = alloca i64
  store i64 12, i64* %i
  %_local508 = load i64, i64* %i
  %_fun_return507 = bitcast i64 %_local508 to i64
  ret i64 %_fun_return507
}

define i64 @g() {
  %i = alloca i64
  store i64 10, i64* %i
  %_local506 = load i64, i64* %i
  %_fun_return505 = bitcast i64 %_local506 to i64
  ret i64 %_fun_return505
}

define i64 @program(i64 %_argc495, { i64, [0 x i8*] }* %_argv496) {
  %_argc497 = alloca i64
  store i64 %_argc495, i64* %_argc497
  %_argv498 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv496, { i64, [0 x i8*] }** %_argv498
  %_ret500 = call i64 @_f()
  %_ret501 = call i64 @_g()
  %_bop502 = add i64 %_ret500, %_ret501
  %_glob503 = load i64, i64* @_i
  %_bop504 = add i64 %_bop502, %_glob503
  %_fun_return499 = bitcast i64 %_bop504 to i64
  ret i64 %_fun_return499
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
