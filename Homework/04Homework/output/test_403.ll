; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global459 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global459 to { i64, [0 x i64] }*)
@_unused_global458 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_unused_global458 to { i64, [0 x i64] }*)

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x460, { i64, [0 x i64] }* %_y461, i1 %_b462) {
  %_x463 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_x460, { i64, [0 x i64] }** %_x463
  %_y464 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y461, { i64, [0 x i64] }** %_y464
  %_b465 = alloca i1
  store i1 %_b462, i1* %_b465
  %_local466 = load i1, i1* %_b465
  br i1 %_local466, label %_if471, label %_else472
_if471:
  %_local468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x463
  %_fun_return467 = bitcast { i64, [0 x i64] }* %_local468 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return467
_else472:
  %_local470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y464
  %_fun_return469 = bitcast { i64, [0 x i64] }* %_local470 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return469
}

define i64 @program(i64 %_argc446, { i64, [0 x i8*] }* %_argv447) {
  %_argc448 = alloca i64
  store i64 %_argc446, i64* %_argc448
  %_argv449 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv447, { i64, [0 x i8*] }** %_argv449
  %_glob450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_glob451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_y
  %_ret452 = call { i64, [0 x i64] }* @_f({ i64, [0 x i64] }* %_glob450, { i64, [0 x i64] }* %_glob451, i1 1)
  %_ind_assign453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ret452, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind_assign453
  %_glob455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_x
  %_ptr456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_glob455, i32 0, i32 1, i32 0
  %_elem457 = load i64, i64* %_ptr456
  %_fun_return454 = bitcast i64 %_elem457 to i64
  ret i64 %_fun_return454
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
