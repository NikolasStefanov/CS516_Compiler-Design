; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc318, { i64, [0 x i8*] }* %_argv319) {
  %argc = alloca i64
  store i64 %_argc318, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv319, { i64, [0 x i8*] }** %argv
  %_raw_array320 = call i64* @oat_alloc_array(i64 3)
  %_array321 = bitcast i64* %_raw_array320 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array322 = call i64* @oat_alloc_array(i64 4)
  %_array323 = bitcast i64* %_raw_array322 to { i64, [0 x i64] }*
  %_ind324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array323, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind324
  %_ind325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array323, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind325
  %_ind326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array323, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind326
  %_ind327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array323, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind327
  %_raw_array328 = call i64* @oat_alloc_array(i64 4)
  %_array329 = bitcast i64* %_raw_array328 to { i64, [0 x i64] }*
  %_ind330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array329, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind330
  %_ind331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array329, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind331
  %_ind332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array329, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind332
  %_ind333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array329, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind333
  %_raw_array334 = call i64* @oat_alloc_array(i64 4)
  %_array335 = bitcast i64* %_raw_array334 to { i64, [0 x i64] }*
  %_ind336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array335, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind336
  %_ind337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array335, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind337
  %_ind338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array335, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind338
  %_ind339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array335, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind339
  %_ind340 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array321, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array323, { i64, [0 x i64] }** %_ind340
  %_ind341 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array321, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array329, { i64, [0 x i64] }** %_ind341
  %_ind342 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array321, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array335, { i64, [0 x i64] }** %_ind342
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array321, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %s = alloca i64
  store i64 0, i64* %s
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while363
_while363:
  %_local343 = load i64, i64* %i
  %_bop344 = icmp slt i64 %_local343, 3
  br i1 %_bop344, label %_do364, label %_elihw365
_do364:
  %j = alloca i64
  store i64 0, i64* %j
  br label %_while358
_while358:
  %_local345 = load i64, i64* %j
  %_bop346 = icmp slt i64 %_local345, 4
  br i1 %_bop346, label %_do359, label %_elihw360
_do359:
  %_local347 = load i64, i64* %s
  %_local348 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local349 = load i64, i64* %i
  %_ptr350 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local348, i32 0, i32 1, i64 %_local349
  %_elem351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr350
  %_local352 = load i64, i64* %j
  %_ptr353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem351, i32 0, i32 1, i64 %_local352
  %_elem354 = load i64, i64* %_ptr353
  %_bop355 = add i64 %_local347, %_elem354
  store i64 %_bop355, i64* %s
  %_local356 = load i64, i64* %j
  %_bop357 = add i64 %_local356, 1
  store i64 %_bop357, i64* %j
  br label %_while358
_elihw360:
  %_local361 = load i64, i64* %i
  %_bop362 = add i64 %_local361, 1
  store i64 %_bop362, i64* %i
  br label %_while363
_elihw365:
  %_local366 = load i64, i64* %s
  ret i64 %_local366
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
