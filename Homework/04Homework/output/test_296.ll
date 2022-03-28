; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global337 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global337 to { i64, [0 x i64] }*)
@_unused_global336 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global336 to { i64, [0 x i64] }*)

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x338, { i64, [0 x i64] }* %_y339, i1 %_b340) {
  %_x341 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x338, { i64, [0 x i64] }** %_x341
  %_y342 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y339, { i64, [0 x i64] }** %_y342
  %_b343 = alloca i1
  store i1 %_b340, i1* %_b343
  %_local344 = load i1, i1* %_b343
  br i1 %_local344, label %_if349, label %_else350
_if349:
  %_local346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x341
  %_fun_return345 = bitcast { i64, [0 x i64] }* %_local346 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return345
_else350:
  %_local348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y342
  %_fun_return347 = bitcast { i64, [0 x i64] }* %_local348 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return347
}

define i64 @program(i64 %_argc324, { i64, [0 x i8*] }* %_argv325) {
  %_argc326 = alloca i64
  store i64 %_argc324, i64* %_argc326
  %_argv327 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv325, { i64, [0 x i8*] }** %_argv327
  %_glob328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_glob329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_ret330 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob328, { i64, [0 x i64] }* %_glob329, i1 1)
  %_ind_assign331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret330, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign331
  %_glob333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_ptr334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_glob333, i32 0, i32 1, i32 0
  %_elem335 = load i64, i64* %_ptr334
  %_fun_return332 = bitcast i64 %_elem335 to i64
  ret i64 %_fun_return332
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
