; generated from: hw4programs/lib7.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1438, { i64, [0 x i8*] }* %_argv1439) {
  %argc = alloca i64
  store i64 %_argc1438, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1439, { i64, [0 x i8*] }** %argv
  %_raw_array1440 = call i64* @oat_alloc_array(i64 5)
  %_array1441 = bitcast i64* %_raw_array1440 to { i64, [0 x i64] }*
  %_ind1442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind1442
  %_ind1443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind1443
  %_ind1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind1444
  %_ind1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind1445
  %_ind1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1441, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind1446
  %arr1 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1441, { i64, [0 x i64] }** %arr1
  %_glob1447 = load i8* ({ i64, [0 x i64] }*), i8* ({ i64, [0 x i64] }*)* @string_of_array
  %_local1448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_ret1449 = call i8* %_ret1449({ i64, [0 x i64] }* %_local1448)
  %str = alloca i8*
  store i8* %_ret1449, i8** %str
  %_glob1450 = load { i64, [0 x i64] }* (i8*), { i64, [0 x i64] }* (i8*)* @array_of_string
  %_local1451 = load i8*, i8** %str
  %_ret1452 = call { i64, [0 x i64] }* %_ret1452(i8* %_local1451)
  %arr2 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1452, { i64, [0 x i64] }** %arr2
  %s = alloca i64
  store i64 0, i64* %s
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while1463
_while1463:
  %_local1453 = load i64, i64* %i
  %_bop1454 = icmp slt i64 %_local1453, 5
  br i1 %_bop1454, label %_do1464, label %_elihw1465
_do1464:
  %_local1455 = load i64, i64* %s
  %_local1456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_local1457 = load i64, i64* %i
  %_ptr1458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1456, i32 0, i32 1, i64 %_local1457
  %_elem1459 = load i64, i64* %_ptr1458
  %_bop1460 = add i64 %_local1455, %_elem1459
  store i64 %_bop1460, i64* %s
  %_local1461 = load i64, i64* %i
  %_bop1462 = add i64 %_local1461, 1
  store i64 %_bop1462, i64* %i
  br label %_while1463
_elihw1465:
  %_local1466 = load i64, i64* %s
  ret i64 %_local1466
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
