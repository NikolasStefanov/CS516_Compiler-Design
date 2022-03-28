; generated from: hw4programs/run33.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc509, { i64, [0 x i8*] }* %_argv510) {
  %_argc511 = alloca i64
  store i64 %_argc509, i64* %_argc511
  %_argv512 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv510, { i64, [0 x i8*] }** %_argv512
  %_raw_array513 = call i64* @oat_alloc_array(i64 2)
  %_array514 = bitcast i64* %_raw_array513 to { i64, [0 x i1] }*
  %_ind515 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array514, i32 0, i32 1, i32 0
  store i1 1, i1* %_ind515
  %_ind516 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array514, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind516
  %b = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array514, { i64, [0 x i1] }** %b
  %i = alloca i64
  store i64 0, i64* %i
  %_local517 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %b
  %_ptr518 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_local517, i32 0, i32 1, i32 0
  %_elem519 = load i1, i1* %_ptr518
  br i1 %_elem519, label %_if520, label %_else521
_if520:
  store i64 1, i64* %i
  br label %_fi522
_else521:
  br label %_fi522
_fi522:
  %_local524 = load i64, i64* %i
  %_fun_return523 = bitcast i64 %_local524 to i64
  ret i64 %_fun_return523
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
