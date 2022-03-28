; generated from: hw4programs/run34.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc647, { i64, [0 x i8*] }* %_argv648) {
  %_argc649 = alloca i64
  store i64 %_argc647, i64* %_argc649
  %_argv650 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv648, { i64, [0 x i8*] }** %_argv650
  %_raw_array651 = call i64* @oat_alloc_array(i64 3)
  %_array652 = bitcast i64* %_raw_array651 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array653 = call i64* @oat_alloc_array(i64 4)
  %_array654 = bitcast i64* %_raw_array653 to { i64, [0 x i64] }*
  %_ind655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array654, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind655
  %_ind656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array654, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind656
  %_ind657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array654, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind657
  %_ind658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array654, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind658
  %_raw_array659 = call i64* @oat_alloc_array(i64 4)
  %_array660 = bitcast i64* %_raw_array659 to { i64, [0 x i64] }*
  %_ind661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array660, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind661
  %_ind662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array660, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind662
  %_ind663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array660, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind663
  %_ind664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array660, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind664
  %_raw_array665 = call i64* @oat_alloc_array(i64 4)
  %_array666 = bitcast i64* %_raw_array665 to { i64, [0 x i64] }*
  %_ind667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array666, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind667
  %_ind668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array666, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind668
  %_ind669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array666, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind669
  %_ind670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array666, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind670
  %_ind671 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array652, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array654, { i64, [0 x i64] }** %_ind671
  %_ind672 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array652, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array660, { i64, [0 x i64] }** %_ind672
  %_ind673 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array652, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array666, { i64, [0 x i64] }** %_ind673
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array652, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %s = alloca i64
  store i64 0, i64* %s
  %_i674 = alloca i64
  store i64 0, i64* %_i674
  br label %_while696
_while696:
  %_local675 = load i64, i64* %_i674
  %_bop676 = icmp slt i64 %_local675, 3
  br i1 %_bop676, label %_do697, label %_elihw698
_do697:
  %_j677 = alloca i64
  store i64 0, i64* %_j677
  br label %_while691
_while691:
  %_local678 = load i64, i64* %_j677
  %_bop679 = icmp slt i64 %_local678, 4
  br i1 %_bop679, label %_do692, label %_elihw693
_do692:
  %_local680 = load i64, i64* %s
  %_local681 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local682 = load i64, i64* %_i674
  %_ptr683 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local681, i32 0, i32 1, i64 %_local682
  %_elem684 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr683
  %_local685 = load i64, i64* %_j677
  %_ptr686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem684, i32 0, i32 1, i64 %_local685
  %_elem687 = load i64, i64* %_ptr686
  %_bop688 = add i64 %_local680, %_elem687
  store i64 %_bop688, i64* %s
  %_local689 = load i64, i64* %_j677
  %_bop690 = add i64 %_local689, 1
  store i64 %_bop690, i64* %_j677
  br label %_while691
_elihw693:
  %_local694 = load i64, i64* %_i674
  %_bop695 = add i64 %_local694, 1
  store i64 %_bop695, i64* %_i674
  br label %_while696
_elihw698:
  %_local700 = load i64, i64* %s
  %_fun_return699 = bitcast i64 %_local700 to i64
  ret i64 %_fun_return699
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
