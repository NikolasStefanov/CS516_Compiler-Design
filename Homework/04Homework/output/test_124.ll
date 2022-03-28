; generated from: hw4programs/lib4.oat
target triple = "x86_64-apple-macosx10.13.0"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc1363, { i64, [0 x i8*] }* %_argv1364) {
  %argc = alloca i64
  store i64 %_argc1363, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1364, { i64, [0 x i8*] }** %argv
  %_glob1365 = load { i64, [0 x i64] }* (i8*), { i64, [0 x i64] }* (i8*)* @array_of_string
  %_glob1366 = load i8, i8* @_str
  %_ret1367 = call { i64, [0 x i64] }* %_ret1367(i8 %_glob1366)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret1367, { i64, [0 x i64] }** %arr
  %s = alloca i64
  store i64 0, i64* %s
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while1378
_while1378:
  %_local1368 = load i64, i64* %i
  %_bop1369 = icmp slt i64 %_local1368, 5
  br i1 %_bop1369, label %_do1379, label %_elihw1380
_do1379:
  %_local1370 = load i64, i64* %s
  %_local1371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local1372 = load i64, i64* %i
  %_ptr1373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1371, i32 0, i32 1, i64 %_local1372
  %_elem1374 = load i64, i64* %_ptr1373
  %_bop1375 = add i64 %_local1370, %_elem1374
  store i64 %_bop1375, i64* %s
  %_local1376 = load i64, i64* %i
  %_bop1377 = add i64 %_local1376, 1
  store i64 %_bop1377, i64* %i
  br label %_while1378
_elihw1380:
  %_local1381 = load i64, i64* %s
  ret i64 %_local1381
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
