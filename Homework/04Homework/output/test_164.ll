; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_343 = alloca i64
  %_344 = alloca i64
  store i64 %x, i64* %_343
  store i64 %y, i64* %_344
  %r = alloca i64
  store i64 0, i64* %r
  %_345 = load i64, i64* %_343
  %_346 = icmp sge i64 %_345, 1
  %_347 = icmp eq i1 1, %_346
  br i1 %_347, label %_then348, label %_else349
_then348:
  %_353 = load i64, i64* %_344
  %_351 = load i64, i64* %_343
  %_352 = sub i64 %_351, 1
  %_354 = call i64 @f(i64 %_352, i64 %_353)
  %_355 = add i64 1, %_354
  store i64 %_355, i64* %r
  br label %_out350
_else349:
  %_357 = load i64, i64* %_343
  %_358 = load i64, i64* %_344
  %_359 = add i64 %_357, %_358
  store i64 %_359, i64* %r
  br label %_out350
_out350:
  %_361 = load i64, i64* %r
  ret i64 %_361
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_336 = alloca i64
  %_337 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_336
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_337
  %x = alloca i64
  %y = alloca i64
  store i64 3, i64* %x
  store i64 3, i64* %y
  %_339 = load i64, i64* %y
  %_338 = load i64, i64* %x
  %_340 = call i64 @f(i64 %_338, i64 %_339)
  %_341 = load i64, i64* @i
  %_342 = add i64 %_340, %_341
  ret i64 %_342
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
