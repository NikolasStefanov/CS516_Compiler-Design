; generated from: hw4programs/run53.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1354, { i64, [0 x i8*] }* %_argv1355) {
  %argc = alloca i64
  store i64 %_argc1354, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1355, { i64, [0 x i8*] }** %argv
  %_glob1356 = load i8* ({ i64, [0 x i64] }*), i8* ({ i64, [0 x i64] }*)* @string_of_array
  %_raw_array1357 = call i64* @oat_alloc_array(i64 3)
  %_array1358 = bitcast i64* %_raw_array1357 to { i64, [0 x i64] }*
  %_ind1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1359
  %_ind1360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1360
  %_ind1361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1361
  %_ret1362 = call i8* %_ret1362({ i64, [0 x i64] }* %_array1358)
  %str = alloca i8*
  store i8* %_ret1362, i8** %str
  ret i64 0
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
