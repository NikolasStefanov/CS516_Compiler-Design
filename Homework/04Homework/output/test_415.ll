; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc631, { i64, [0 x i8*] }* %_argv632) {
  %_argc633 = alloca i64
  store i64 %_argc631, i64* %_argc633
  %_argv634 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv632, { i64, [0 x i8*] }** %_argv634
  %_raw_array635 = call i64* @oat_alloc_array(i64 2)
  %_array636 = bitcast i64* %_raw_array635 to { i64, [0 x i1] }*
  %_ind637 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array636, i32 0, i32 1, i32 0
  store i1 1, i1* %_ind637
  %_ind638 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array636, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind638
  %b = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array636, { i64, [0 x i1] }** %b
  %i = alloca i64
  store i64 0, i64* %i
  %_local639 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %b
  %_ptr640 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local639, i32 0, i32 1, i32 0
  %_elem641 = load i1, i1* %_ptr640
  br i1 %_elem641, label %_if642, label %_else643
_if642:
  store i64 1, i64* %i
  br label %_fi644
_else643:
  br label %_fi644
_fi644:
  %_local646 = load i64, i64* %i
  %_fun_return645 = bitcast i64 %_local646 to i64
  ret i64 %_fun_return645
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
