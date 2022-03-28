; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x368, { i64, [0 x i64] }* %_y369, i1 %_b370) {
  %_x371 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x368, { i64, [0 x i64] }** %_x371
  %_y372 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y369, { i64, [0 x i64] }** %_y372
  %_b373 = alloca i1
  store i1 %_b370, i1* %_b373
  %_local374 = load i1, i1* %_b373
  br i1 %_local374, label %_if379, label %_else380
_if379:
  %_local376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x371
  %_fun_return375 = bitcast { i64, [0 x i64] }* %_local376 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return375
_else380:
  %_local378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y372
  %_fun_return377 = bitcast { i64, [0 x i64] }* %_local378 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return377
}

define i64 @program(i64 %_argc352, { i64, [0 x i8*] }* %_argv353) {
  %_argc354 = alloca i64
  store i64 %_argc352, i64* %_argc354
  %_argv355 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv353, { i64, [0 x i8*] }** %_argv355
  %_raw_array356 = call i64* @oat_alloc_array(i64 3)
  %_array357 = bitcast i64* %_raw_array356 to { i64, [0 x i64] }*
  %x = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array357, { i64, [0 x i64] }** %x
  %_raw_array358 = call i64* @oat_alloc_array(i64 3)
  %_array359 = bitcast i64* %_raw_array358 to { i64, [0 x i64] }*
  %y = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array359, { i64, [0 x i64] }** %y
  %_local360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_ret362 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_local360, { i64, [0 x i64] }* %_local361, i1 1)
  %_ind_assign363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret362, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign363
  %_local365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_ptr366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local365, i32 0, i32 1, i32 0
  %_elem367 = load i64, i64* %_ptr366
  %_fun_return364 = bitcast i64 %_elem367 to i64
  ret i64 %_fun_return364
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
