; generated from: hw4programs/easyrun4.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc153, { i64, [0 x i8*] }* %_argv154) {
  %_argc155 = alloca i64
  store i64 %_argc153, i64* %_argc155
  %_argv156 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv154, { i64, [0 x i8*] }** %_argv156
  %x = alloca i64
  store i64 0, i64* %x
  %_i157 = alloca i64
  store i64 0, i64* %_i157
  br label %_while164
_while164:
  %_local158 = load i64, i64* %_i157
  %_bop159 = icmp slt i64 %_local158, 3
  br i1 %_bop159, label %_do165, label %_elihw166
_do165:
  %_local160 = load i64, i64* %x
  %_bop161 = add i64 %_local160, 2
  store i64 %_bop161, i64* %x
  %_local162 = load i64, i64* %_i157
  %_bop163 = add i64 %_local162, 1
  store i64 %_bop163, i64* %_i157
  br label %_while164
_elihw166:
  %_local168 = load i64, i64* %x
  %_fun_return167 = bitcast i64 %_local168 to i64
  ret i64 %_fun_return167
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
