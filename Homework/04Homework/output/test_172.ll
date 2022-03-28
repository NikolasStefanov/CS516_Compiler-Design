; generated from: hw4programs/easyrun3.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc13, { i64, [0 x i8*] }* %_argv14) {
  %_argc15 = alloca i64
  store i64 %_argc13, i64* %_argc15
  %_argv16 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv14, { i64, [0 x i8*] }** %_argv16
  %x = alloca i64
  store i64 0, i64* %x
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while26
_while26:
  %_local17 = load i64, i64* %i
  %_bop18 = icmp slt i64 %_local17, 10
  br i1 %_bop18, label %_do27, label %_elihw28
_do27:
  %_local19 = load i64, i64* %x
  %_local20 = load i64, i64* %i
  %_bop21 = add i64 %_local19, %_local20
  %_local22 = load i64, i64* %i
  %_bop23 = mul i64 %_bop21, %_local22
  store i64 %_bop23, i64* %x
  %_local24 = load i64, i64* %i
  %_bop25 = add i64 %_local24, 1
  store i64 %_bop25, i64* %i
  br label %_while26
_elihw28:
  %_local30 = load i64, i64* %x
  %_fun_return29 = bitcast i64 %_local30 to i64
  ret i64 %_fun_return29
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
