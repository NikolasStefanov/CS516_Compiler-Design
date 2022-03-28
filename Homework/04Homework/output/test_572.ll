; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2651, { i64, [0 x i8*] }* %_argv2652) {
  %_argc2653 = alloca i64
  store i64 %_argc2651, i64* %_argc2653
  %_argv2654 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2652, { i64, [0 x i8*] }** %_argv2654
  %_raw_array2655 = call i64* @oat_alloc_array(i64 10)
  %_array2656 = bitcast i64* %_raw_array2655 to { i64, [0 x i64] }*
  %_ind2657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind2657
  %_ind2658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind2658
  %_ind2659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind2659
  %_ind2660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind2660
  %_ind2661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind2661
  %_ind2662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind2662
  %_ind2663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind2663
  %_ind2664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind2664
  %_ind2665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind2665
  %_ind2666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2656, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind2666
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2656, { i64, [0 x i64] }** %a
  %_local2667 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret2668 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2667)
  call void @print_string(i8* %_ret2668)
  %_fun_return2669 = bitcast i64 0 to i64
  ret i64 %_fun_return2669
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
