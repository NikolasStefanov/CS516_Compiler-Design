; generated from: hw4programs/lib4.oat
target triple = "x86_64-apple-macosx10.13.0"
@_str_global2471 = global [6 x i8] c"hello\00"
@str = global i8* bitcast ([6 x i8]* @_str_global2471 to i8*)

define i64 @program(i64 %_argc2448, { i64, [0 x i8*] }* %_argv2449) {
  %_argc2450 = alloca i64
  store i64 %_argc2448, i64* %_argc2450
  %_argv2451 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2449, { i64, [0 x i8*] }** %_argv2451
  %_glob2452 = load i8*, i8** @_str
  %_ret2453 = call { i64, [0 x i64] }* @array_of_string(i8* %_glob2452)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2453, { i64, [0 x i64] }** %arr
  %s = alloca i64
  store i64 0, i64* %s
  %_i2454 = alloca i64
  store i64 0, i64* %_i2454
  br label %_while2465
_while2465:
  %_local2455 = load i64, i64* %_i2454
  %_bop2456 = icmp slt i64 %_local2455, 5
  br i1 %_bop2456, label %_do2466, label %_elihw2467
_do2466:
  %_local2457 = load i64, i64* %s
  %_local2458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2459 = load i64, i64* %_i2454
  %_ptr2460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2458, i32 0, i32 1, i64 %_local2459
  %_elem2461 = load i64, i64* %_ptr2460
  %_bop2462 = add i64 %_local2457, %_elem2461
  store i64 %_bop2462, i64* %s
  %_local2463 = load i64, i64* %_i2454
  %_bop2464 = add i64 %_local2463, 1
  store i64 %_bop2464, i64* %_i2454
  br label %_while2465
_elihw2467:
  %_local2468 = load i64, i64* %s
  call void @print_int(i64 %_local2468)
  %_local2470 = load i64, i64* %s
  %_fun_return2469 = bitcast i64 %_local2470 to i64
  ret i64 %_fun_return2469
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
