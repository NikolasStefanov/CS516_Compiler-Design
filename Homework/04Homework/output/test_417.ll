; generated from: hw4programs/run35.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc701, { i64, [0 x i8*] }* %_argv702) {
  %_argc703 = alloca i64
  store i64 %_argc701, i64* %_argc703
  %_argv704 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv702, { i64, [0 x i8*] }** %_argv704
  %_raw_array705 = call i64* @oat_alloc_array(i64 3)
  %_array706 = bitcast i64* %_raw_array705 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array707 = call i64* @oat_alloc_array(i64 4)
  %_array708 = bitcast i64* %_raw_array707 to { i64, [0 x i64] }*
  %_ind709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array708, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind709
  %_ind710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array708, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind710
  %_ind711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array708, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind711
  %_ind712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array708, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind712
  %_raw_array713 = call i64* @oat_alloc_array(i64 4)
  %_array714 = bitcast i64* %_raw_array713 to { i64, [0 x i64] }*
  %_ind715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array714, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind715
  %_ind716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array714, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind716
  %_ind717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array714, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind717
  %_ind718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array714, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind718
  %_raw_array719 = call i64* @oat_alloc_array(i64 4)
  %_array720 = bitcast i64* %_raw_array719 to { i64, [0 x i64] }*
  %_ind721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind721
  %_ind722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind722
  %_ind723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind723
  %_ind724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind724
  %_ind725 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array706, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array708, { i64, [0 x i64] }** %_ind725
  %_ind726 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array706, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array714, { i64, [0 x i64] }** %_ind726
  %_ind727 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array706, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array720, { i64, [0 x i64] }** %_ind727
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array706, { i64, [0 x { i64, [0 x i64] }*] }** @_a
  %s = alloca i64
  store i64 0, i64* %s
  %_i728 = alloca i64
  store i64 0, i64* %_i728
  br label %_while750
_while750:
  %_local729 = load i64, i64* %_i728
  %_bop730 = icmp slt i64 %_local729, 3
  br i1 %_bop730, label %_do751, label %_elihw752
_do751:
  %_j731 = alloca i64
  store i64 0, i64* %_j731
  br label %_while745
_while745:
  %_local732 = load i64, i64* %_j731
  %_bop733 = icmp slt i64 %_local732, 4
  br i1 %_bop733, label %_do746, label %_elihw747
_do746:
  %_local734 = load i64, i64* %s
  %_glob735 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @_a
  %_local736 = load i64, i64* %_i728
  %_ptr737 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_glob735, i32 0, i32 1, i64 %_local736
  %_elem738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr737
  %_local739 = load i64, i64* %_j731
  %_ptr740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem738, i32 0, i32 1, i64 %_local739
  %_elem741 = load i64, i64* %_ptr740
  %_bop742 = add i64 %_local734, %_elem741
  store i64 %_bop742, i64* %s
  %_local743 = load i64, i64* %_j731
  %_bop744 = add i64 %_local743, 1
  store i64 %_bop744, i64* %_j731
  br label %_while745
_elihw747:
  %_local748 = load i64, i64* %_i728
  %_bop749 = add i64 %_local748, 1
  store i64 %_bop749, i64* %_i728
  br label %_while750
_elihw752:
  %_local754 = load i64, i64* %s
  %_fun_return753 = bitcast i64 %_local754 to i64
  ret i64 %_fun_return753
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
