; generated from: hw4programs/lib6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1409, { i64, [0 x i8*] }* %_argv1410) {
  %argc = alloca i64
  store i64 %_argc1409, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1410, { i64, [0 x i8*] }** %argv
  %_raw_array1411 = call i64* @oat_alloc_array(i64 5)
  %_array1412 = bitcast i64* %_raw_array1411 to { i64, [0 x i64] }*
  %_ind1413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind1413
  %_ind1414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind1414
  %_ind1415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind1415
  %_ind1416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind1416
  %_ind1417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind1417
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1412, { i64, [0 x i64] }** %arr1
  %_glob1418 = load i8* ({ i64, [0 x i64] }*), i8* ({ i64, [0 x i64] }*)* @string_of_array
  %_local1419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ret1420 = call i8* %_ret1420({ i64, [0 x i64] }* %_local1419)
  %str = alloca i8*
  store i8* %_ret1420, i8** %str
  %_glob1421 = load { i64, [0 x i64] }* (i8*), { i64, [0 x i64] }* (i8*)* @array_of_string
  %_local1422 = load i8*, i8** %str
  %_ret1423 = call { i64, [0 x i64] }* %_ret1423(i8* %_local1422)
  %arr2 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1423, { i64, [0 x i64] }** %arr2
  %s = alloca i64
  store i64 0, i64* %s
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while1434
_while1434:
  %_local1424 = load i64, i64* %i
  %_bop1425 = icmp slt i64 %_local1424, 5
  br i1 %_bop1425, label %_do1435, label %_elihw1436
_do1435:
  %_local1426 = load i64, i64* %s
  %_local1427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_local1428 = load i64, i64* %i
  %_ptr1429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1427, i32 0, i32 1, i64 %_local1428
  %_elem1430 = load i64, i64* %_ptr1429
  %_bop1431 = add i64 %_local1426, %_elem1430
  store i64 %_bop1431, i64* %s
  %_local1432 = load i64, i64* %i
  %_bop1433 = add i64 %_local1432, 1
  store i64 %_bop1433, i64* %i
  br label %_while1434
_elihw1436:
  %_local1437 = load i64, i64* %s
  ret i64 %_local1437
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
