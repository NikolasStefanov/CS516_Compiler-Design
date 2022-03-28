; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc576, { i64, [0 x i8*] }* %_argv577) {
  %_argc578 = alloca i64
  store i64 %_argc576, i64* %_argc578
  %_argv579 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv577, { i64, [0 x i8*] }** %_argv579
  %i = alloca i64
  store i64 9, i64* %i
  %_local580 = load i64, i64* %i
  %_local581 = load i64, i64* %i
  %_bop582 = add i64 %_local580, %_local581
  %j = alloca i64
  store i64 %_bop582, i64* %j
  %_local584 = load i64, i64* %i
  %_local585 = load i64, i64* %i
  %_local586 = load i64, i64* %i
  %_bop587 = mul i64 %_local585, %_local586
  %_bop588 = add i64 %_local584, %_bop587
  %_local589 = load i64, i64* %j
  %_bop590 = sub i64 %_bop588, %_local589
  %_bop591 = lshr i64 %_bop590, 2
  %_bop592 = shl i64 %_bop591, 2
  %_bop593 = ashr i64 %_bop592, 2
  %_fun_return583 = bitcast i64 %_bop593 to i64
  ret i64 %_fun_return583
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
