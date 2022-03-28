; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global404 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global404 to { i64, [0 x i64] }*)
@_unused_global403 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global403 to { i64, [0 x i64] }*)

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x405, { i64, [0 x i64] }* %_y406, i1 %_b407) {
  %_x408 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x405, { i64, [0 x i64] }** %_x408
  %_y409 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y406, { i64, [0 x i64] }** %_y409
  %_b410 = alloca i1
  store i1 %_b407, i1* %_b410
  %_local411 = load i1, i1* %_b410
  br i1 %_local411, label %_if416, label %_else417
_if416:
  %_local413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x408
  %_fun_return412 = bitcast { i64, [0 x i64] }* %_local413 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return412
_else417:
  %_local415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y409
  %_fun_return414 = bitcast { i64, [0 x i64] }* %_local415 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return414
}

define i64 @program(i64 %_argc382, { i64, [0 x i8*] }* %_argv383) {
  %_argc384 = alloca i64
  store i64 %_argc382, i64* %_argc384
  %_argv385 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv383, { i64, [0 x i8*] }** %_argv385
  %_glob386 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_glob387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_ret388 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob386, { i64, [0 x i64] }* %_glob387, i1 1)
  %_ind_assign389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret388, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign389
  %_glob390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_glob391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_ret392 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob390, { i64, [0 x i64] }* %_glob391, i1 1)
  %_ptr393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret392, i32 0, i32 1, i32 0
  %_elem394 = load i64, i64* %_ptr393
  %_glob395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_glob396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_ret397 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob395, { i64, [0 x i64] }* %_glob396, i1 0)
  %_ptr398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret397, i32 0, i32 1, i32 0
  %_elem399 = load i64, i64* %_ptr398
  %_bop400 = add i64 %_elem394, %_elem399
  %z = alloca i64
  store i64 %_bop400, i64* %z
  %_local402 = load i64, i64* %z
  %_fun_return401 = bitcast i64 %_local402 to i64
  ret i64 %_fun_return401
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
