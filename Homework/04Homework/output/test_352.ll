; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2350, { i64, [0 x i8*] }* %_argv2351) {
  %_argc2352 = alloca i64
  store i64 %_argc2350, i64* %_argc2352
  %_argv2353 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2351, { i64, [0 x i8*] }** %_argv2353
  %_raw_array2355 = call i64* @oat_alloc_array(i64 5)
  %_array2356 = bitcast i64* %_raw_array2355 to { i64, [0 x i64] }*
  %_ind2357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2356, i32 0, i32 1, i32 0
  store i64 104, i64* %_ind2357
  %_ind2358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2356, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind2358
  %_ind2359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2356, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind2359
  %_ind2360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2356, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind2360
  %_ind2361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2356, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind2361
  %_strr_arr2354 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2356)
  %str = alloca i8*
  store i8* %_strr_arr2354, i8** %str
  %_local2362 = load i8*, i8** %str
  %_ret2363 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2362)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2363, { i64, [0 x i64] }** %arr
  %s = alloca i64
  store i64 0, i64* %s
  %_i2364 = alloca i64
  store i64 0, i64* %_i2364
  br label %_while2375
_while2375:
  %_local2365 = load i64, i64* %_i2364
  %_bop2366 = icmp slt i64 %_local2365, 5
  br i1 %_bop2366, label %_do2376, label %_elihw2377
_do2376:
  %_local2367 = load i64, i64* %s
  %_local2368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2369 = load i64, i64* %_i2364
  %_ptr2370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2368, i32 0, i32 1, i64 %_local2369
  %_elem2371 = load i64, i64* %_ptr2370
  %_bop2372 = add i64 %_local2367, %_elem2371
  store i64 %_bop2372, i64* %s
  %_local2373 = load i64, i64* %_i2364
  %_bop2374 = add i64 %_local2373, 1
  store i64 %_bop2374, i64* %_i2364
  br label %_while2375
_elihw2377:
  %_local2379 = load i64, i64* %s
  %_fun_return2378 = bitcast i64 %_local2379 to i64
  ret i64 %_fun_return2378
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
