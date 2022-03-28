; generated from: hw4programs/lib5.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1382, { i64, [0 x i8*] }* %_argv1383) {
  %argc = alloca i64
  store i64 %_argc1382, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1383, { i64, [0 x i8*] }** %argv
  %_raw_array1385 = call i64* @oat_alloc_array(i64 5)
  %_array1386 = bitcast i64* %_raw_array1385 to { i64, [0 x i64] }*
  %_ind1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 0
  store i64 104, i64* %_ind1387
  %_ind1388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1388
  %_ind1389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind1389
  %_ind1390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind1390
  %_ind1391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1386, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind1391
  %_strr_arr1384 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1386)
  %str = alloca i8*
  store i8* %_strr_arr1384, i8** %str
  %_glob1392 = load { i64, [0 x i64] }* (i8*), { i64, [0 x i64] }* (i8*)* @array_of_string
  %_local1393 = load i8*, i8** %str
  %_ret1394 = call { i64, [0 x i64] }* %_ret1394(i8* %_local1393)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1394, { i64, [0 x i64] }** %arr
  %s = alloca i64
  store i64 0, i64* %s
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while1405
_while1405:
  %_local1395 = load i64, i64* %i
  %_bop1396 = icmp slt i64 %_local1395, 5
  br i1 %_bop1396, label %_do1406, label %_elihw1407
_do1406:
  %_local1397 = load i64, i64* %s
  %_local1398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1399 = load i64, i64* %i
  %_ptr1400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1398, i32 0, i32 1, i64 %_local1399
  %_elem1401 = load i64, i64* %_ptr1400
  %_bop1402 = add i64 %_local1397, %_elem1401
  store i64 %_bop1402, i64* %s
  %_local1403 = load i64, i64* %i
  %_bop1404 = add i64 %_local1403, 1
  store i64 %_bop1404, i64* %i
  br label %_while1405
_elihw1407:
  %_local1408 = load i64, i64* %s
  ret i64 %_local1408
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
