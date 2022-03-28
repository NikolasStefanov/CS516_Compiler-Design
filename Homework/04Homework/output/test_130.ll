; generated from: hw4programs/lib14.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1530, { i64, [0 x i8*] }* %_argv1531) {
  %argc = alloca i64
  store i64 %_argc1530, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1531, { i64, [0 x i8*] }** %argv
  %_raw_array1532 = call i64* @oat_alloc_array(i64 10)
  %_array1533 = bitcast i64* %_raw_array1532 to { i64, [0 x i64] }*
  %_ind1534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind1534
  %_ind1535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind1535
  %_ind1536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind1536
  %_ind1537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind1537
  %_ind1538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind1538
  %_ind1539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind1539
  %_ind1540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind1540
  %_ind1541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind1541
  %_ind1542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind1542
  %_ind1543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1533, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind1543
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1533, { i64, [0 x i64] }** %a
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
