; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global526 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global526 to { i64, [0 x i64] }*)
@_unused_global525 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global525 to { i64, [0 x i64] }*)

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x527, { i64, [0 x i64] }* %_y528, i1 %_b529) {
  %_x530 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x527, { i64, [0 x i64] }** %_x530
  %_y531 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y528, { i64, [0 x i64] }** %_y531
  %_b532 = alloca i1
  store i1 %_b529, i1* %_b532
  %_local533 = load i1, i1* %_b532
  br i1 %_local533, label %_if538, label %_else539
_if538:
  %_local535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x530
  %_fun_return534 = bitcast { i64, [0 x i64] }* %_local535 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return534
_else539:
  %_local537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y531
  %_fun_return536 = bitcast { i64, [0 x i64] }* %_local537 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return536
}

define i64 @program(i64 %_argc504, { i64, [0 x i8*] }* %_argv505) {
  %_argc506 = alloca i64
  store i64 %_argc504, i64* %_argc506
  %_argv507 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv505, { i64, [0 x i8*] }** %_argv507
  %_glob508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_glob509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_ret510 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob508, { i64, [0 x i64] }* %_glob509, i1 1)
  %_ind_assign511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret510, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign511
  %_glob512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_glob513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_ret514 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob512, { i64, [0 x i64] }* %_glob513, i1 1)
  %_ptr515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret514, i32 0, i32 1, i32 0
  %_elem516 = load i64, i64* %_ptr515
  %_glob517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_glob518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_ret519 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob517, { i64, [0 x i64] }* %_glob518, i1 0)
  %_ptr520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret519, i32 0, i32 1, i32 0
  %_elem521 = load i64, i64* %_ptr520
  %_bop522 = add i64 %_elem516, %_elem521
  %z = alloca i64
  store i64 %_bop522, i64* %z
  %_local524 = load i64, i64* %z
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
