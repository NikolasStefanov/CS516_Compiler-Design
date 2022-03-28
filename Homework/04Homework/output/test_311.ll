; generated from: hw4programs/run36.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc633, { i64, [0 x i8*] }* %_argv634) {
  %_argc635 = alloca i64
  store i64 %_argc633, i64* %_argc635
  %_argv636 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv634, { i64, [0 x i8*] }** %_argv636
  %_raw_array637 = call i64* @oat_alloc_array(i64 2)
  %_array638 = bitcast i64* %_raw_array637 to { i64, [0 x i64] }*
  %_ind639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array638, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind639
  %_ind640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array638, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind640
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array638, { i64, [0 x i64] }** %a
  %_local642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ptr643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local642, i32 0, i32 1, i32 1
  %_elem644 = load i64, i64* %_ptr643
  %_fun_return641 = bitcast i64 %_elem644 to i64
  ret i64 %_fun_return641
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
