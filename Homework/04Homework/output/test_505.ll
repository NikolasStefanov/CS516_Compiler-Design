; generated from: hw4programs/globals6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc354, { i64, [0 x i8*] }* %_args355) {
  %_argc356 = alloca i64
  store i64 %_argc354, i64* %_argc356
  %_args357 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args355, { i64, [0 x i8*] }** %_args357
  %_raw_array359 = call i64* @oat_alloc_array(i64 6)
  %_array360 = bitcast i64* %_raw_array359 to { i64, [0 x i64] }*
  %_ind361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array360, i32 0, i32 1, i32 0
  store i64 104, i64* %_ind361
  %_ind362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array360, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind362
  %_ind363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array360, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind363
  %_ind364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array360, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind364
  %_ind365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array360, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind365
  %_ind366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array360, i32 0, i32 1, i32 5
  store i64 33, i64* %_ind366
  %_strr_arr358 = call i8* @string_of_array({ i64, [0 x i64] }* %_array360)
  %s = alloca i8*
  store i8* %_strr_arr358, i8** %s
  %_fun_return367 = bitcast i64 15 to i64
  ret i64 %_fun_return367
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
