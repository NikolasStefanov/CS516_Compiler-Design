; generated from: hw4programs/run38.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1() {
  %_ret439 = call i64 %_ret439()
  ret i64 %_ret439
}

define i64 @f2() {
  %_ret438 = call i64 %_ret438()
  ret i64 %_ret438
}

define i64 @f3() {
  %_ret437 = call i64 %_ret437()
  ret i64 %_ret437
}

define i64 @f4() {
  %_ret436 = call i64 %_ret436()
  ret i64 %_ret436
}

define i64 @f5() {
  %_ret435 = call i64 %_ret435()
  ret i64 %_ret435
}

define i64 @f6() {
  %_ret434 = call i64 %_ret434()
  ret i64 %_ret434
}

define i64 @f7() {
  %_ret433 = call i64 %_ret433()
  ret i64 %_ret433
}

define i64 @f8() {
  %_ret432 = call i64 %_ret432()
  ret i64 %_ret432
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %_argc429, { i64, [0 x i8*] }* %_argv430) {
  %argc = alloca i64
  store i64 %_argc429, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv430, { i64, [0 x i8*] }** %argv
  %_ret431 = call i64 %_ret431()
  ret i64 %_ret431
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
