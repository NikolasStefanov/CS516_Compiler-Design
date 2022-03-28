; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_glob2405 = load i64, i64* @_a
  %_bop2406 = add i64 %_glob2405, 1
  store i64 %_bop2406, i64* @_a
  %_glob2408 = load i64, i64* @_a
  %_fun_return2407 = bitcast i64 %_glob2408 to i64
  ret i64 %_fun_return2407
}

define i64 @program(i64 %_argc2384, { i64, [0 x i8*] }* %_argv2385) {
  %_argc2386 = alloca i64
  store i64 %_argc2384, i64* %_argc2386
  %_argv2387 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2385, { i64, [0 x i8*] }** %_argv2387
  %_ret2388 = call i64 @_f()
  %_raw_array2389 = call i64* @oat_alloc_array(i64 %_ret2388)
  %_array2390 = bitcast i64* %_raw_array2389 to { i64, [0 x i64] }*
  %b = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2390, { i64, [0 x i64] }** %b
  %_local2391 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2391, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind_assign2392
  %_local2393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2393, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind_assign2394
  %_glob2396 = load i64, i64* @_a
  %_local2397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2397, i32 0, i32 1, i32 0
  %_elem2399 = load i64, i64* %_ptr2398
  %_bop2400 = add i64 %_glob2396, %_elem2399
  %_local2401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2401, i32 0, i32 1, i32 1
  %_elem2403 = load i64, i64* %_ptr2402
  %_bop2404 = add i64 %_bop2400, %_elem2403
  %_fun_return2395 = bitcast i64 %_bop2404 to i64
  ret i64 %_fun_return2395
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
