; generated from: hw4programs/fac.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %i) {
  %_544 = alloca i64
  store i64 %i, i64* %_544
  %r = alloca i64
  store i64 0, i64* %r
  %_545 = load i64, i64* %_544
  %_546 = icmp eq i64 %_545, 0
  %_547 = icmp eq i1 1, %_546
  br i1 %_547, label %_then548, label %_else549
_then548:
  store i64 1, i64* %r
  br label %_out550
_else549:
  %_552 = load i64, i64* %_544
  %_553 = load i64, i64* %_544
  %_554 = sub i64 %_553, 1
  %_555 = call i64 @f(i64 %_554)
  %_556 = mul i64 %_552, %_555
  store i64 %_556, i64* %r
  br label %_out550
_out550:
  %_558 = load i64, i64* %r
  ret i64 %_558
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_541 = alloca i64
  %_542 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_541
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_542
  %_543 = call i64 @f(i64 5)
  ret i64 %_543
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
