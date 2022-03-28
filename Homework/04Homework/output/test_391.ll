; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc239, { i64, [0 x i8*] }* %_argv240) {
  %_argc241 = alloca i64
  store i64 %_argc239, i64* %_argc241
  %_argv242 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv240, { i64, [0 x i8*] }** %_argv242
  %_raw_array243 = call i64* @oat_alloc_array(i64 4)
  %_array244 = bitcast i64* %_raw_array243 to { i64, [0 x i64] }*
  %_ind245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array244, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind245
  %_ind246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array244, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind246
  %_ind247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array244, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind247
  %_ind248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array244, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind248
  %x = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array244, { i64, [0 x i64] }** %x
  %ans = alloca i64
  store i64 0, i64* %ans
  %_i249 = alloca i64
  store i64 0, i64* %_i249
  br label %_while264
_while264:
  %_local250 = load i64, i64* %_i249
  %_bop251 = icmp slt i64 %_local250, 4
  br i1 %_bop251, label %_do265, label %_elihw266
_do265:
  %_local252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local253 = load i64, i64* %_i249
  %_ptr254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local252, i32 0, i32 1, i64 %_local253
  %_elem255 = load i64, i64* %_ptr254
  %_local256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local257 = load i64, i64* %_i249
  %_ptr258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local256, i32 0, i32 1, i64 %_local257
  %_elem259 = load i64, i64* %_ptr258
  %_uop260 = xor i64 %_elem259, -1
  %_bop261 = mul i64 %_elem255, %_uop260
  store i64 %_bop261, i64* %ans
  %_local262 = load i64, i64* %_i249
  %_bop263 = add i64 %_local262, 1
  store i64 %_bop263, i64* %_i249
  br label %_while264
_elihw266:
  %_local268 = load i64, i64* %ans
  %_fun_return267 = bitcast i64 %_local268 to i64
  ret i64 %_fun_return267
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
