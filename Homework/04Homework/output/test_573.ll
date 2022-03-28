; generated from: hw4programs/lib15.oat
target triple = "x86_64-apple-macosx10.13.0"
define i8* @sub(i8* %_str2679, i64 %_start2680, i64 %_len2681) {
  %_str2682 = alloca i8*
  store i8* %_str2679, i8** %_str2682
  %_start2683 = alloca i64
  store i64 %_start2680, i64* %_start2683
  %_len2684 = alloca i64
  store i64 %_len2681, i64* %_len2684
  %_local2685 = load i8*, i8** %_str2682
  %_ret2686 = call { i64, [0 x i64] }* @array_of_string(i8* %_local2685)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2686, { i64, [0 x i64] }** %arr
  %_local2687 = load i64, i64* %_len2684
  %_raw_array2688 = call i64* @oat_alloc_array(i64 %_local2687)
  %_array2689 = bitcast i64* %_raw_array2688 to { i64, [0 x i64] }*
  %r = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2689, { i64, [0 x i64] }** %r
  %_i2690 = alloca i64
  store i64 0, i64* %_i2690
  br label %_while2705
_while2705:
  %_local2691 = load i64, i64* %_i2690
  %_local2692 = load i64, i64* %_len2684
  %_bop2693 = icmp slt i64 %_local2691, %_local2692
  br i1 %_bop2693, label %_do2706, label %_elihw2707
_do2706:
  %_local2694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2695 = load i64, i64* %_i2690
  %_local2696 = load i64, i64* %_start2683
  %_bop2697 = add i64 %_local2695, %_local2696
  %_ptr2698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2694, i32 0, i32 1, i64 %_bop2697
  %_elem2699 = load i64, i64* %_ptr2698
  %_local2700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %r
  %_local2701 = load i64, i64* %_i2690
  %_ind_assign2702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2700, i32 0, i32 1, i64 %_local2701
  store i64 %_elem2699, i64* %_ind_assign2702
  %_local2703 = load i64, i64* %_i2690
  %_bop2704 = add i64 %_local2703, 1
  store i64 %_bop2704, i64* %_i2690
  br label %_while2705
_elihw2707:
  %_local2709 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %r
  %_ret2710 = call i8* @string_of_array({ i64, [0 x i64] }* %_local2709)
  %_fun_return2708 = bitcast i8* %_ret2710 to i8*
  ret i8* %_fun_return2708
}

define i64 @program(i64 %_argc2670, { i64, [0 x i8*] }* %_argv2671) {
  %_argc2672 = alloca i64
  store i64 %_argc2670, i64* %_argc2672
  %_argv2673 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2671, { i64, [0 x i8*] }** %_argv2673
  %_local2674 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2673
  %_ptr2675 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_local2674, i32 0, i32 1, i32 1
  %_elem2676 = load i8*, i8** %_ptr2675
  %_ret2677 = call i8* @_sub(i8* %_elem2676, i64 3, i64 5)
  call void @print_string(i8* %_ret2677)
  %_fun_return2678 = bitcast i64 0 to i64
  ret i64 %_fun_return2678
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
