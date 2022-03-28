; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc454, { i64, [0 x i8*] }* %_argv455) {
  %_argc456 = alloca i64
  store i64 %_argc454, i64* %_argc456
  %_argv457 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv455, { i64, [0 x i8*] }** %_argv457
  %i = alloca i64
  store i64 9, i64* %i
  %_local458 = load i64, i64* %i
  %_local459 = load i64, i64* %i
  %_bop460 = add i64 %_local458, %_local459
  %j = alloca i64
  store i64 %_bop460, i64* %j
  %_local462 = load i64, i64* %i
  %_local463 = load i64, i64* %i
  %_local464 = load i64, i64* %i
  %_bop465 = mul i64 %_local463, %_local464
  %_bop466 = add i64 %_local462, %_bop465
  %_local467 = load i64, i64* %j
  %_bop468 = sub i64 %_bop466, %_local467
  %_bop469 = lshr i64 %_bop468, 2
  %_bop470 = shl i64 %_bop469, 2
  %_bop471 = ashr i64 %_bop470, 2
  %_fun_return461 = bitcast i64 %_bop471 to i64
  ret i64 %_fun_return461
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
