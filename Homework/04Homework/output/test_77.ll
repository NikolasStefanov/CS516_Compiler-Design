; generated from: hw4programs/easyrun5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc34, { i64, [0 x i8*] }* %_argv35) {
  %argc = alloca i64
  store i64 %_argc34, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv35, { i64, [0 x i8*] }** %argv
  %_bop36 = lshr i64 100, 3
  %x = alloca i64
  store i64 %_bop36, i64* %x
  %_bop37 = shl i64 100, 3
  %y = alloca i64
  store i64 %_bop37, i64* %y
  %_local38 = load i64, i64* %x
  %_local39 = load i64, i64* %y
  %_bop40 = sub i64 %_local38, %_local39
  %_bop41 = icmp sle i64 %_bop40, 0
  br i1 %_bop41, label %_if49, label %_else50
_if49:
  %_local42 = load i64, i64* %x
  %_uop43 = mul i64 %_local42, -1
  %_local44 = load i64, i64* %y
  %_bop45 = sub i64 %_uop43, %_local44
  ret i64 %_bop45
_else50:
  %_local46 = load i64, i64* %x
  %_local47 = load i64, i64* %y
  %_bop48 = sub i64 %_local46, %_local47
  ret i64 %_bop48
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
