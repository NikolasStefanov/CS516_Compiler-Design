; generated from: hw4programs/arrayargs2.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x490, { i64, [0 x i64] }* %_y491, i1 %_b492) {
  %_x493 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x490, { i64, [0 x i64] }** %_x493
  %_y494 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y491, { i64, [0 x i64] }** %_y494
  %_b495 = alloca i1
  store i1 %_b492, i1* %_b495
  %_local496 = load i1, i1* %_b495
  br i1 %_local496, label %_if501, label %_else502
_if501:
  %_local498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x493
  %_fun_return497 = bitcast { i64, [0 x i64] }* %_local498 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return497
_else502:
  %_local500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y494
  %_fun_return499 = bitcast { i64, [0 x i64] }* %_local500 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return499
}

define i64 @program(i64 %_argc474, { i64, [0 x i8*] }* %_argv475) {
  %_argc476 = alloca i64
  store i64 %_argc474, i64* %_argc476
  %_argv477 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv475, { i64, [0 x i8*] }** %_argv477
  %_raw_array478 = call i64* @oat_alloc_array(i64 3)
  %_array479 = bitcast i64* %_raw_array478 to { i64, [0 x i64] }*
  %x = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array479, { i64, [0 x i64] }** %x
  %_raw_array480 = call i64* @oat_alloc_array(i64 3)
  %_array481 = bitcast i64* %_raw_array480 to { i64, [0 x i64] }*
  %y = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array481, { i64, [0 x i64] }** %y
  %_local482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_ret484 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_local482, { i64, [0 x i64] }* %_local483, i1 1)
  %_ind_assign485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret484, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign485
  %_local487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_ptr488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local487, i32 0, i32 1, i32 0
  %_elem489 = load i64, i64* %_ptr488
  %_fun_return486 = bitcast i64 %_elem489 to i64
  ret i64 %_fun_return486
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
