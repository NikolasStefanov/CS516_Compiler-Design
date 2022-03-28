; generated from: hw4programs/arrayargs.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x432, { i64, [0 x i64] }* %_y433, i1 %_b434) {
  %_x435 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x432, { i64, [0 x i64] }** %_x435
  %_y436 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y433, { i64, [0 x i64] }** %_y436
  %_b437 = alloca i1
  store i1 %_b434, i1* %_b437
  %_local438 = load i1, i1* %_b437
  br i1 %_local438, label %_if443, label %_else444
_if443:
  %_local440 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x435
  %_fun_return439 = bitcast { i64, [0 x i64] }* %_local440 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return439
_else444:
  %_local442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y436
  %_fun_return441 = bitcast { i64, [0 x i64] }* %_local442 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return441
}

define i64 @program(i64 %_argc391, { i64, [0 x i8*] }* %_argv392) {
  %_argc393 = alloca i64
  store i64 %_argc391, i64* %_argc393
  %_argv394 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv392, { i64, [0 x i8*] }** %_argv394
  %_raw_array395 = call i64* @oat_alloc_array(i64 3)
  %_array396 = bitcast i64* %_raw_array395 to { i64, [0 x i64] }*
  %x = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array396, { i64, [0 x i64] }** %x
  %_i397 = alloca i64
  store i64 0, i64* %_i397
  br label %_while406
_while406:
  %_local398 = load i64, i64* %_i397
  %_bop399 = icmp slt i64 %_local398, 3
  br i1 %_bop399, label %_do407, label %_elihw408
_do407:
  %_local400 = load i64, i64* %_i397
  %_local401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local402 = load i64, i64* %_i397
  %_ind_assign403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local401, i32 0, i32 1, i64 %_local402
  store i64 %_local400, i64* %_ind_assign403
  %_local404 = load i64, i64* %_i397
  %_bop405 = add i64 %_local404, 1
  store i64 %_bop405, i64* %_i397
  br label %_while406
_elihw408:
  %_raw_array409 = call i64* @oat_alloc_array(i64 3)
  %_array410 = bitcast i64* %_raw_array409 to { i64, [0 x i64] }*
  %y = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array410, { i64, [0 x i64] }** %y
  %_i411 = alloca i64
  store i64 0, i64* %_i411
  br label %_while421
_while421:
  %_local412 = load i64, i64* %_i411
  %_bop413 = icmp slt i64 %_local412, 3
  br i1 %_bop413, label %_do422, label %_elihw423
_do422:
  %_local414 = load i64, i64* %_i411
  %_bop415 = add i64 %_local414, 3
  %_local416 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_local417 = load i64, i64* %_i411
  %_ind_assign418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local416, i32 0, i32 1, i64 %_local417
  store i64 %_bop415, i64* %_ind_assign418
  %_local419 = load i64, i64* %_i411
  %_bop420 = add i64 %_local419, 1
  store i64 %_bop420, i64* %_i411
  br label %_while421
_elihw423:
  %_local424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_ret426 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_local424, { i64, [0 x i64] }* %_local425, i1 1)
  %_ind_assign427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret426, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign427
  %_local429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_ptr430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local429, i32 0, i32 1, i32 0
  %_elem431 = load i64, i64* %_ptr430
  %_fun_return428 = bitcast i64 %_elem431 to i64
  ret i64 %_fun_return428
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
