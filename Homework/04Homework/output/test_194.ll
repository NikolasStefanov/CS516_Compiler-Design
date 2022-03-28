; generated from: hw4programs/run21.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc431, { i64, [0 x i8*] }* %_argv432) {
  %_argc433 = alloca i64
  store i64 %_argc431, i64* %_argc433
  %_argv434 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv432, { i64, [0 x i8*] }** %_argv434
  %_raw_array435 = call i64* @oat_alloc_array(i64 2)
  %_array436 = bitcast i64* %_raw_array435 to { i64, [0 x i64] }*
  %_ind437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array436, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind437
  %_ind438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array436, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind438
  %i = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array436, { i64, [0 x i64] }** %i
  %_local440 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %i
  %_ptr441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local440, i32 0, i32 1, i32 0
  %_elem442 = load i64, i64* %_ptr441
  %_fun_return439 = bitcast i64 %_elem442 to i64
  ret i64 %_fun_return439
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
