; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x310, { i64, [0 x i64] }* %_y311, i1 %_b312) {
  %_x313 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x310, { i64, [0 x i64] }** %_x313
  %_y314 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y311, { i64, [0 x i64] }** %_y314
  %_b315 = alloca i1
  store i1 %_b312, i1* %_b315
  %_local316 = load i1, i1* %_b315
  br i1 %_local316, label %_if321, label %_else322
_if321:
  %_local318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x313
  %_fun_return317 = bitcast { i64, [0 x i64] }* %_local318 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return317
_else322:
  %_local320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y314
  %_fun_return319 = bitcast { i64, [0 x i64] }* %_local320 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return319
}

define i64 @program(i64 %_argc269, { i64, [0 x i8*] }* %_argv270) {
  %_argc271 = alloca i64
  store i64 %_argc269, i64* %_argc271
  %_argv272 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv270, { i64, [0 x i8*] }** %_argv272
  %_raw_array273 = call i64* @oat_alloc_array(i64 3)
  %_array274 = bitcast i64* %_raw_array273 to { i64, [0 x i64] }*
  %x = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array274, { i64, [0 x i64] }** %x
  %_i275 = alloca i64
  store i64 0, i64* %_i275
  br label %_while284
_while284:
  %_local276 = load i64, i64* %_i275
  %_bop277 = icmp slt i64 %_local276, 3
  br i1 %_bop277, label %_do285, label %_elihw286
_do285:
  %_local278 = load i64, i64* %_i275
  %_local279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local280 = load i64, i64* %_i275
  %_ind_assign281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local279, i32 0, i32 1, i64 %_local280
  store i64 %_local278, i64* %_ind_assign281
  %_local282 = load i64, i64* %_i275
  %_bop283 = add i64 %_local282, 1
  store i64 %_bop283, i64* %_i275
  br label %_while284
_elihw286:
  %_raw_array287 = call i64* @oat_alloc_array(i64 3)
  %_array288 = bitcast i64* %_raw_array287 to { i64, [0 x i64] }*
  %y = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array288, { i64, [0 x i64] }** %y
  %_i289 = alloca i64
  store i64 0, i64* %_i289
  br label %_while299
_while299:
  %_local290 = load i64, i64* %_i289
  %_bop291 = icmp slt i64 %_local290, 3
  br i1 %_bop291, label %_do300, label %_elihw301
_do300:
  %_local292 = load i64, i64* %_i289
  %_bop293 = add i64 %_local292, 3
  %_local294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_local295 = load i64, i64* %_i289
  %_ind_assign296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local294, i32 0, i32 1, i64 %_local295
  store i64 %_bop293, i64* %_ind_assign296
  %_local297 = load i64, i64* %_i289
  %_bop298 = add i64 %_local297, 1
  store i64 %_bop298, i64* %_i289
  br label %_while299
_elihw301:
  %_local302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_ret304 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_local302, { i64, [0 x i64] }* %_local303, i1 1)
  %_ind_assign305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret304, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign305
  %_local307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_ptr308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local307, i32 0, i32 1, i32 0
  %_elem309 = load i64, i64* %_ptr308
  %_fun_return306 = bitcast i64 %_elem309 to i64
  ret i64 %_fun_return306
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
