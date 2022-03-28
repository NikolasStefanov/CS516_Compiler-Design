; generated from: hw4programs/lib4.oat
target triple = "x86_64-apple-macosx10.13.0"
@_str_global2349 = global [6 x i8] c"hello\00"
@str = global i8* bitcast ([6 x i8]* @_str_global2349 to i8*)

define i64 @program(i64 %_argc2326, { i64, [0 x i8*] }* %_argv2327) {
  %_argc2328 = alloca i64
  store i64 %_argc2326, i64* %_argc2328
  %_argv2329 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2327, { i64, [0 x i8*] }** %_argv2329
  %_glob2330 = load i8*, i8** @_str
  %_ret2331 = call { i64, [0 x i64] }* @array_of_string(i8* %_glob2330)
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret2331, { i64, [0 x i64] }** %arr
  %s = alloca i64
  store i64 0, i64* %s
  %_i2332 = alloca i64
  store i64 0, i64* %_i2332
  br label %_while2343
_while2343:
  %_local2333 = load i64, i64* %_i2332
  %_bop2334 = icmp slt i64 %_local2333, 5
  br i1 %_bop2334, label %_do2344, label %_elihw2345
_do2344:
  %_local2335 = load i64, i64* %s
  %_local2336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_local2337 = load i64, i64* %_i2332
  %_ptr2338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2336, i32 0, i32 1, i64 %_local2337
  %_elem2339 = load i64, i64* %_ptr2338
  %_bop2340 = add i64 %_local2335, %_elem2339
  store i64 %_bop2340, i64* %s
  %_local2341 = load i64, i64* %_i2332
  %_bop2342 = add i64 %_local2341, 1
  store i64 %_bop2342, i64* %_i2332
  br label %_while2343
_elihw2345:
  %_local2346 = load i64, i64* %s
  call void @print_int(i64 %_local2346)
  %_local2348 = load i64, i64* %s
  %_fun_return2347 = bitcast i64 %_local2348 to i64
  ret i64 %_fun_return2347
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
