; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc269, { i64, [0 x i8*] }* %_argv270) {
  %argc = alloca i64
  store i64 %_argc269, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv270, { i64, [0 x i8*] }** %argv
  %i = alloca i64
  store i64 9, i64* %i
  %_local271 = load i64, i64* %i
  %_local272 = load i64, i64* %i
  %_bop273 = add i64 %_local271, %_local272
  %j = alloca i64
  store i64 %_bop273, i64* %j
  %_local274 = load i64, i64* %i
  %_local275 = load i64, i64* %i
  %_local276 = load i64, i64* %i
  %_bop277 = mul i64 %_local275, %_local276
  %_bop278 = add i64 %_local274, %_bop277
  %_local279 = load i64, i64* %j
  %_bop280 = sub i64 %_bop278, %_local279
  %_bop281 = lshr i64 %_bop280, 2
  %_bop282 = shl i64 %_bop281, 2
  %_bop283 = ashr i64 %_bop282, 2
  ret i64 %_bop283
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
