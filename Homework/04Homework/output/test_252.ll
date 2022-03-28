; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2529, { i64, [0 x i8*] }* %_argv2530) {
  %_argc2531 = alloca i64
  store i64 %_argc2529, i64* %_argc2531
  %_argv2532 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2530, { i64, [0 x i8*] }** %_argv2532
  %_raw_array2533 = call i64* @oat_alloc_array(i64 10)
  %_array2534 = bitcast i64* %_raw_array2533 to { i64, [0 x i64] }*
  %_ind2535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind2535
  %_ind2536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind2536
  %_ind2537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind2537
  %_ind2538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind2538
  %_ind2539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind2539
  %_ind2540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind2540
  %_ind2541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind2541
  %_ind2542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind2542
  %_ind2543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind2543
  %_ind2544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2534, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind2544
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2534, { i64, [0 x i64] }** %a
  %_local2545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2546 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2545)
  call void @print_string(i8* %_ret2546)
  %_fun_return2547 = bitcast i64 0 to i64
  ret i64 %_fun_return2547
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
