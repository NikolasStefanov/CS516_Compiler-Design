; generated from: hw4programs/easyrun5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc169, { i64, [0 x i8*] }* %_argv170) {
  %_argc171 = alloca i64
  store i64 %_argc169, i64* %_argc171
  %_argv172 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv170, { i64, [0 x i8*] }** %_argv172
  %_bop173 = lshr i64 100, 3
  %x = alloca i64
  store i64 %_bop173, i64* %x
  %_bop174 = shl i64 100, 3
  %y = alloca i64
  store i64 %_bop174, i64* %y
  %_local175 = load i64, i64* %x
  %_local176 = load i64, i64* %y
  %_bop177 = sub i64 %_local175, %_local176
  %_bop178 = icmp sle i64 %_bop177, 0
  br i1 %_bop178, label %_if188, label %_else189
_if188:
  %_local180 = load i64, i64* %x
  %_uop181 = mul i64 %_local180, -1
  %_local182 = load i64, i64* %y
  %_bop183 = sub i64 %_uop181, %_local182
  %_fun_return179 = bitcast i64 %_bop183 to i64
  ret i64 %_fun_return179
_else189:
  %_local185 = load i64, i64* %x
  %_local186 = load i64, i64* %y
  %_bop187 = sub i64 %_local185, %_local186
  %_fun_return184 = bitcast i64 %_bop187 to i64
  ret i64 %_fun_return184
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
