; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2412, { i64, [0 x i8*] }* %_argv2413) {
  %_argc2414 = alloca i64
  store i64 %_argc2412, i64* %_argc2414
  %_argv2415 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2413, { i64, [0 x i8*] }** %_argv2415
  %_raw_array2416 = call i64* @oat_alloc_array(i64 5)
  %_array2417 = bitcast i64* %_raw_array2416 to { i64, [0 x i64] }*
  %_ind2418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2417, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2418
  %_ind2419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2417, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2419
  %_ind2420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2417, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2420
  %_ind2421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2417, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2421
  %_ind2422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2417, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2422
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2417, { i64, [0 x i64] }** %arr1
  %_local2423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ret2424 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2423)
  %str = alloca i8*
  store i8* %_ret2424, i8** %str
  %_local2425 = load i8*, i8** %str
  %_ret2426 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2425)
  %arr2 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2426, { i64, [0 x i64] }** %arr2
  %s = alloca i64
  store i64 0, i64* %s
  %_i2427 = alloca i64
  store i64 0, i64* %_i2427
  br label %_while2438
_while2438:
  %_local2428 = load i64, i64* %_i2427
  %_bop2429 = icmp slt i64 %_local2428, 5
  br i1 %_bop2429, label %_do2439, label %_elihw2440
_do2439:
  %_local2430 = load i64, i64* %s
  %_local2431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_local2432 = load i64, i64* %_i2427
  %_ptr2433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2431, i32 0, i32 1, i64 %_local2432
  %_elem2434 = load i64, i64* %_ptr2433
  %_bop2435 = add i64 %_local2430, %_elem2434
  store i64 %_bop2435, i64* %s
  %_local2436 = load i64, i64* %_i2427
  %_bop2437 = add i64 %_local2436, 1
  store i64 %_bop2437, i64* %_i2427
  br label %_while2438
_elihw2440:
  %_local2442 = load i64, i64* %s
  %_fun_return2441 = bitcast i64 %_local2442 to i64
  ret i64 %_fun_return2441
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
