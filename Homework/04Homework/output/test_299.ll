; generated from: hw4programs/run13.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %_x425, i64 %_y426) {
  %_x427 = alloca i64
  store i64 %_x425, i64* %_x427
  %_y428 = alloca i64
  store i64 %_y426, i64* %_y428
  %_local430 = load i64, i64* %_x427
  %_fun_return429 = bitcast i64 %_local430 to i64
  ret i64 %_fun_return429
}

define i64 @program(i64 %_argc419, { i64, [0 x i8*] }* %_argv420) {
  %_argc421 = alloca i64
  store i64 %_argc419, i64* %_argc421
  %_argv422 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv420, { i64, [0 x i8*] }** %_argv422
  %_ret424 = call i64 @_f(i64 1, i64 2)
  %_fun_return423 = bitcast i64 %_ret424 to i64
  ret i64 %_fun_return423
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
