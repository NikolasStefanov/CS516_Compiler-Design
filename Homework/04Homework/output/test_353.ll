; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2380, { i64, [0 x i8*] }* %_argv2381) {
  %_argc2382 = alloca i64
  store i64 %_argc2380, i64* %_argc2382
  %_argv2383 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2381, { i64, [0 x i8*] }** %_argv2383
  %_raw_array2384 = call i64* @oat_alloc_array(i64 5)
  %_array2385 = bitcast i64* %_raw_array2384 to { i64, [0 x i64] }*
  %_ind2386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2385, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2386
  %_ind2387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2385, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2387
  %_ind2388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2385, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2388
  %_ind2389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2385, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2389
  %_ind2390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2385, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2390
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2385, { i64, [0 x i64] }** %arr1
  %_local2391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ret2392 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2391)
  %str = alloca i8*
  store i8* %_ret2392, i8** %str
  %_local2393 = load i8*, i8** %str
  %_ret2394 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2393)
  %arr2 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2394, { i64, [0 x i64] }** %arr2
  %s = alloca i64
  store i64 0, i64* %s
  %_i2395 = alloca i64
  store i64 0, i64* %_i2395
  br label %_while2406
_while2406:
  %_local2396 = load i64, i64* %_i2395
  %_bop2397 = icmp slt i64 %_local2396, 5
  br i1 %_bop2397, label %_do2407, label %_elihw2408
_do2407:
  %_local2398 = load i64, i64* %s
  %_local2399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_local2400 = load i64, i64* %_i2395
  %_ptr2401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2399, i32 0, i32 1, i64 %_local2400
  %_elem2402 = load i64, i64* %_ptr2401
  %_bop2403 = add i64 %_local2398, %_elem2402
  store i64 %_bop2403, i64* %s
  %_local2404 = load i64, i64* %_i2395
  %_bop2405 = add i64 %_local2404, 1
  store i64 %_bop2405, i64* %_i2395
  br label %_while2406
_elihw2408:
  %_local2409 = load i64, i64* %s
  call void @print_int(i64 %_local2409)
  %_local2411 = load i64, i64* %s
  %_fun_return2410 = bitcast i64 %_local2411 to i64
  ret i64 %_fun_return2410
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
