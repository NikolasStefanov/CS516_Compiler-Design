; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %i = alloca i64
  store i64 12, i64* %i
  %_local305 = load i64, i64* %i
  ret i64 %_local305
}

define i64 @g() {
  %i = alloca i64
  store i64 10, i64* %i
  %_local304 = load i64, i64* %i
  ret i64 %_local304
}

define i64 @program(i64 %_argc297, { i64, [0 x i8*] }* %_argv298) {
  %argc = alloca i64
  store i64 %_argc297, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv298, { i64, [0 x i8*] }** %argv
  %_ret299 = call i64 %_ret299()
  %_ret300 = call i64 %_ret300()
  %_bop301 = add i64 %_ret299, %_ret300
  %_glob302 = load i64, i64* @_i
  %_bop303 = add i64 %_bop301, %_glob302
  ret i64 %_bop303
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
