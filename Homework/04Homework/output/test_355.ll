; generated from: hw4programs/lib8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2443, { i64, [0 x i8*] }* %_argv2444) {
  %_argc2445 = alloca i64
  store i64 %_argc2443, i64* %_argc2445
  %_argv2446 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2444, { i64, [0 x i8*] }** %_argv2446
  %_raw_array2448 = call i64* @oat_alloc_array(i64 12)
  %_array2449 = bitcast i64* %_raw_array2448 to { i64, [0 x i64] }*
  %_ind2450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 0
  store i64 72, i64* %_ind2450
  %_ind2451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind2451
  %_ind2452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind2452
  %_ind2453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind2453
  %_ind2454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind2454
  %_ind2455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 5
  store i64 32, i64* %_ind2455
  %_ind2456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 6
  store i64 119, i64* %_ind2456
  %_ind2457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2457
  %_ind2458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 8
  store i64 114, i64* %_ind2458
  %_ind2459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 9
  store i64 108, i64* %_ind2459
  %_ind2460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 10
  store i64 100, i64* %_ind2460
  %_ind2461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2449, i32 0, i32 1, i32 11
  store i64 33, i64* %_ind2461
  %_strr_arr2447 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2449)
  %str = alloca i8*
  store i8* %_strr_arr2447, i8** %str
  %_local2462 = load i8*, i8** %str
  call void @print_string(i8* %_local2462)
  %_fun_return2463 = bitcast i64 0 to i64
  ret i64 %_fun_return2463
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
