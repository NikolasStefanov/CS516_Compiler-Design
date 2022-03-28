; generated from: hw4programs/run8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc691, { i64, [0 x i8*] }* %_argv692) {
  %argc = alloca i64
  store i64 %_argc691, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv692, { i64, [0 x i8*] }** %argv
  %_raw_array693 = call i64* @oat_alloc_array(i64 2)
  %_array694 = bitcast i64* %_raw_array693 to { i64, [0 x i64] }*
  %_ind695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array694, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind695
  %_ind696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array694, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind696
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array694, { i64, [0 x i64] }** %arr
  %_local697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local697, i32 0, i32 1, i32 1
  %_elem699 = load i64, i64* %_ptr698
  ret i64 %_elem699
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
