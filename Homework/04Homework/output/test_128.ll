; generated from: hw4programs/lib8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1467, { i64, [0 x i8*] }* %_argv1468) {
  %argc = alloca i64
  store i64 %_argc1467, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1468, { i64, [0 x i8*] }** %argv
  %_raw_array1470 = call i64* @oat_alloc_array(i64 12)
  %_array1471 = bitcast i64* %_raw_array1470 to { i64, [0 x i64] }*
  %_ind1472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 0
  store i64 72, i64* %_ind1472
  %_ind1473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind1473
  %_ind1474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind1474
  %_ind1475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind1475
  %_ind1476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind1476
  %_ind1477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 5
  store i64 32, i64* %_ind1477
  %_ind1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 6
  store i64 119, i64* %_ind1478
  %_ind1479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind1479
  %_ind1480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 8
  store i64 114, i64* %_ind1480
  %_ind1481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 9
  store i64 108, i64* %_ind1481
  %_ind1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 10
  store i64 100, i64* %_ind1482
  %_ind1483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1471, i32 0, i32 1, i32 11
  store i64 33, i64* %_ind1483
  %_strr_arr1469 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1471)
  %str = alloca i8*
  store i8* %_strr_arr1469, i8** %str
  ret i64 0
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
