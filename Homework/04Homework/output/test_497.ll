; generated from: hw4programs/easyrun8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc221, { i64, [0 x i8*] }* %_argv222) {
  %_argc223 = alloca i64
  store i64 %_argc221, i64* %_argc223
  %_argv224 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv222, { i64, [0 x i8*] }** %_argv224
  %_bop225 = icmp ne i64 6, 5
  br i1 %_bop225, label %_if236, label %_else237
_if236:
  %_uop227 = mul i64 6, -1
  %_bop228 = lshr i64 5, %_uop227
  %_bop229 = shl i64 %_bop228, 9
  %_bop230 = ashr i64 %_bop229, 10
  %_uop231 = xor i64 %_bop230, -1
  %_bop232 = mul i64 %_uop231, 2
  %_bop233 = sub i64 %_bop232, 100
  %_bop234 = add i64 %_bop233, 6
  %_fun_return226 = bitcast i64 %_bop234 to i64
  ret i64 %_fun_return226
_else237:
  %_fun_return235 = bitcast i64 2 to i64
  ret i64 %_fun_return235
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
