; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc269, { i64, [0 x i8*] }* %_argv270) {
  %_argc271 = alloca i64
  store i64 %_argc269, i64* %_argc271
  %_argv272 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv270, { i64, [0 x i8*] }** %_argv272
  %_raw_array273 = call i64* @oat_alloc_array(i64 4)
  %_array274 = bitcast i64* %_raw_array273 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array275 = call i64* @oat_alloc_array(i64 1)
  %_array276 = bitcast i64* %_raw_array275 to { i64, [0 x i64] }*
  %_ind277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array276, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind277
  %_raw_array278 = call i64* @oat_alloc_array(i64 1)
  %_array279 = bitcast i64* %_raw_array278 to { i64, [0 x i64] }*
  %_ind280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array279, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind280
  %_raw_array281 = call i64* @oat_alloc_array(i64 1)
  %_array282 = bitcast i64* %_raw_array281 to { i64, [0 x i64] }*
  %_ind283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array282, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind283
  %_raw_array284 = call i64* @oat_alloc_array(i64 1)
  %_array285 = bitcast i64* %_raw_array284 to { i64, [0 x i64] }*
  %_ind286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array285, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind286
  %_ind287 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array274, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array276, { i64, [0 x i64] }** %_ind287
  %_ind288 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array274, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array279, { i64, [0 x i64] }** %_ind288
  %_ind289 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array274, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array282, { i64, [0 x i64] }** %_ind289
  %_ind290 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array274, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array285, { i64, [0 x i64] }** %_ind290
  %x = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array274, { i64, [0 x { i64, [0 x i64] }*] }** %x
  %ans = alloca i64
  store i64 0, i64* %ans
  %_i291 = alloca i64
  store i64 0, i64* %_i291
  br label %_while304
_while304:
  %_local292 = load i64, i64* %_i291
  %_bop293 = icmp slt i64 %_local292, 4
  br i1 %_bop293, label %_do305, label %_elihw306
_do305:
  %_local294 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %x
  %_local295 = load i64, i64* %_i291
  %_ptr296 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local294, i32 0, i32 1, i64 %_local295
  %_elem297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr296
  %_ptr298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem297, i32 0, i32 1, i32 0
  %_elem299 = load i64, i64* %_ptr298
  %_local300 = load i64, i64* %ans
  %_bop301 = sub i64 %_elem299, %_local300
  store i64 %_bop301, i64* %ans
  %_local302 = load i64, i64* %_i291
  %_bop303 = add i64 %_local302, 1
  store i64 %_bop303, i64* %_i291
  br label %_while304
_elihw306:
  %_uop307 = xor i64 5, -1
  %_bop308 = and i64 5, %_uop307
  %_bop309 = or i64 %_bop308, 0
  %_bop310 = icmp ne i64 %_bop309, 0
  br i1 %_bop310, label %_if316, label %_else317
_if316:
  %_local312 = load i64, i64* %ans
  %_fun_return311 = bitcast i64 %_local312 to i64
  ret i64 %_fun_return311
_else317:
  %_local314 = load i64, i64* %ans
  %_uop315 = mul i64 %_local314, -1
  %_fun_return313 = bitcast i64 %_uop315 to i64
  ret i64 %_fun_return313
_fi318:
  %_local320 = load i64, i64* %ans
  %_fun_return319 = bitcast i64 %_local320 to i64
  ret i64 %_fun_return319
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
