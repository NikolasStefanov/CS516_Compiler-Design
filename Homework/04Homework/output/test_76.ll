; generated from: hw4programs/easyrun4.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc22, { i64, [0 x i8*] }* %_argv23) {
  %argc = alloca i64
  store i64 %_argc22, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv23, { i64, [0 x i8*] }** %argv
  %x = alloca i64
  store i64 0, i64* %x
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while30
_while30:
  %_local24 = load i64, i64* %i
  %_bop25 = icmp slt i64 %_local24, 3
  br i1 %_bop25, label %_do31, label %_elihw32
_do31:
  %_local26 = load i64, i64* %x
  %_bop27 = add i64 %_local26, 2
  store i64 %_bop27, i64* %x
  %_local28 = load i64, i64* %i
  %_bop29 = add i64 %_local28, 1
  store i64 %_bop29, i64* %i
  br label %_while30
_elihw32:
  %_local33 = load i64, i64* %x
  ret i64 %_local33
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
