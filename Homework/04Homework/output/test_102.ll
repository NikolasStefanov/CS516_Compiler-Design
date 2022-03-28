; generated from: hw4programs/run40.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 8

define i64 @f() {
  %j = alloca i64
  store i64 0, i64* %j
  %_ret447 = call i64 %_ret447()
  store i64 %_ret447, i64* %j
  %_local448 = load i64, i64* %j
  ret i64 %_local448
}

define i64 @g() {
  %_glob446 = load i64, i64* @_i
  ret i64 %_glob446
}

define i64 @program(i64 %_argc443, { i64, [0 x i8*] }* %_argv444) {
  %argc = alloca i64
  store i64 %_argc443, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv444, { i64, [0 x i8*] }** %argv
  %_ret445 = call i64 %_ret445()
  ret i64 %_ret445
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
