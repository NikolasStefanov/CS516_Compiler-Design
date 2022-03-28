; generated from: hw4programs/lib9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2464, { i64, [0 x i8*] }* %_argv2465) {
  %_argc2466 = alloca i64
  store i64 %_argc2464, i64* %_argc2466
  %_argv2467 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2465, { i64, [0 x i8*] }** %_argv2467
  %_i2468 = alloca i64
  store i64 1, i64* %_i2468
  br label %_while2478
_while2478:
  %_local2469 = load i64, i64* %_i2468
  %_local2470 = load i64, i64* %_argc2466
  %_bop2471 = icmp slt i64 %_local2469, %_local2470
  br i1 %_bop2471, label %_do2479, label %_elihw2480
_do2479:
  %_local2472 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2467
  %_local2473 = load i64, i64* %_i2468
  %_ptr2474 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_local2472, i32 0, i32 1, i64 %_local2473
  %_elem2475 = load i8*, i8** %_ptr2474
  call void @print_string(i8* %_elem2475)
  %_local2476 = load i64, i64* %_i2468
  %_bop2477 = add i64 %_local2476, 1
  store i64 %_bop2477, i64* %_i2468
  br label %_while2478
_elihw2480:
  %_local2482 = load i64, i64* %_argc2466
  %_fun_return2481 = bitcast i64 %_local2482 to i64
  ret i64 %_fun_return2481
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
