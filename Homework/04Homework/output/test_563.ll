; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_glob2432 = load i64, i64* @_a
  %_bop2433 = add i64 %_glob2432, 1
  store i64 %_bop2433, i64* @_a
  %_glob2435 = load i64, i64* @_a
  %_fun_return2434 = bitcast i64 %_glob2435 to i64
  ret i64 %_fun_return2434
}

define i64 @program(i64 %_argc2409, { i64, [0 x i8*] }* %_argv2410) {
  %_argc2411 = alloca i64
  store i64 %_argc2409, i64* %_argc2411
  %_argv2412 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2410, { i64, [0 x i8*] }** %_argv2412
  %_ret2413 = call i64 @_f()
  %_raw_array2414 = call i64* @oat_alloc_array(i64 %_ret2413)
  %_array2415 = bitcast i64* %_raw_array2414 to { i64, [0 x i64] }*
  %b = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2415, { i64, [0 x i64] }** %b
  %_ret2416 = call i64 @_f()
  %_local2417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2417, i32 0, i32 1, i32 0
  store i64 %_ret2416, i64* %_ind_assign2418
  %_ret2419 = call i64 @_f()
  %_local2420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2420, i32 0, i32 1, i32 1
  store i64 %_ret2419, i64* %_ind_assign2421
  %_glob2423 = load i64, i64* @_a
  %_local2424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2424, i32 0, i32 1, i32 0
  %_elem2426 = load i64, i64* %_ptr2425
  %_bop2427 = add i64 %_glob2423, %_elem2426
  %_local2428 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2428, i32 0, i32 1, i32 1
  %_elem2430 = load i64, i64* %_ptr2429
  %_bop2431 = add i64 %_bop2427, %_elem2430
  %_fun_return2422 = bitcast i64 %_bop2431 to i64
  ret i64 %_fun_return2422
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
