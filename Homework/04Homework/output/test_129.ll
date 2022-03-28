; generated from: hw4programs/lib11.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1488, { i64, [0 x i8*] }* %_argv1489) {
  %argc = alloca i64
  store i64 %_argc1488, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1489, { i64, [0 x i8*] }** %argv
  %_glob1490 = load { i64, [0 x i64] }* (i8*), { i64, [0 x i64] }* (i8*)* @array_of_string
  %_raw_array1492 = call i64* @oat_alloc_array(i64 10)
  %_array1493 = bitcast i64* %_raw_array1492 to { i64, [0 x i64] }*
  %_ind1494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 0
  store i64 49, i64* %_ind1494
  %_ind1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 1
  store i64 50, i64* %_ind1495
  %_ind1496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 2
  store i64 51, i64* %_ind1496
  %_ind1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 3
  store i64 52, i64* %_ind1497
  %_ind1498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 4
  store i64 57, i64* %_ind1498
  %_ind1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 5
  store i64 54, i64* %_ind1499
  %_ind1500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 6
  store i64 55, i64* %_ind1500
  %_ind1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 7
  store i64 56, i64* %_ind1501
  %_ind1502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 8
  store i64 57, i64* %_ind1502
  %_ind1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1493, i32 0, i32 1, i32 9
  store i64 48, i64* %_ind1503
  %_strr_arr1491 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1493)
  %_ret1504 = call { i64, [0 x i64] }* %_ret1504(i8* %_strr_arr1491)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1504, { i64, [0 x i64] }** %arr
  %sum = alloca i64
  store i64 0, i64* %sum
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while1513
_while1513:
  %_local1505 = load i64, i64* %i
  %_bop1506 = icmp slt i64 %_local1505, 10
  br i1 %_bop1506, label %_do1514, label %_elihw1515
_do1514:
  %_local1508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1509 = load i64, i64* %i
  %_ind_assign1510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1508, i32 0, i32 1, i64 %_local1509
  store i64 %_local1509, i64* %_local1508
  %_local1511 = load i64, i64* %i
  %_bop1512 = add i64 %_local1511, 1
  store i64 %_bop1512, i64* %i
  br label %_while1513
_elihw1515:
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while1526
_while1526:
  %_local1516 = load i64, i64* %i
  %_bop1517 = icmp slt i64 %_local1516, 10
  br i1 %_bop1517, label %_do1527, label %_elihw1528
_do1527:
  %_local1518 = load i64, i64* %sum
  %_local1519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1520 = load i64, i64* %i
  %_ptr1521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1519, i32 0, i32 1, i64 %_local1520
  %_elem1522 = load i64, i64* %_ptr1521
  %_bop1523 = add i64 %_local1518, %_elem1522
  store i64 %_bop1523, i64* %sum
  %_local1524 = load i64, i64* %i
  %_bop1525 = add i64 %_local1524, 1
  store i64 %_bop1525, i64* %i
  br label %_while1526
_elihw1528:
  %_local1529 = load i64, i64* %sum
  ret i64 %_local1529
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
