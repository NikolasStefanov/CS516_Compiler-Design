; generated from: hw4programs/lib8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2565, { i64, [0 x i8*] }* %_argv2566) {
  %_argc2567 = alloca i64
  store i64 %_argc2565, i64* %_argc2567
  %_argv2568 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2566, { i64, [0 x i8*] }** %_argv2568
  %_raw_array2570 = call i64* @oat_alloc_array(i64 12)
  %_array2571 = bitcast i64* %_raw_array2570 to { i64, [0 x i64] }*
  %_ind2572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 0
  store i64 72, i64* %_ind2572
  %_ind2573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind2573
  %_ind2574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind2574
  %_ind2575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind2575
  %_ind2576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind2576
  %_ind2577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 5
  store i64 32, i64* %_ind2577
  %_ind2578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 6
  store i64 119, i64* %_ind2578
  %_ind2579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2579
  %_ind2580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 8
  store i64 114, i64* %_ind2580
  %_ind2581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 9
  store i64 108, i64* %_ind2581
  %_ind2582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 10
  store i64 100, i64* %_ind2582
  %_ind2583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2571, i32 0, i32 1, i32 11
  store i64 33, i64* %_ind2583
  %_strr_arr2569 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2571)
  %str = alloca i8*
  store i8* %_strr_arr2569, i8** %str
  %_local2584 = load i8*, i8** %str
  call void @print_string(i8* %_local2584)
  %_fun_return2585 = bitcast i64 0 to i64
  ret i64 %_fun_return2585
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
