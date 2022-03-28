; generated from: hw4programs/run29.oat
target triple = "x86_64-apple-macosx10.13.0"
@b = global i1 1

define i64 @program(i64 %_argc472, { i64, [0 x i8*] }* %_argv473) {
  %_argc474 = alloca i64
  store i64 %_argc472, i64* %_argc474
  %_argv475 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv473, { i64, [0 x i8*] }** %_argv475
  %i = alloca i64
  store i64 0, i64* %i
  %_glob476 = load i1, i1* @_b
  br i1 %_glob476, label %_if477, label %_else478
_if477:
  store i64 1, i64* %i
  br label %_fi479
_else478:
  br label %_fi479
_fi479:
  %_local481 = load i64, i64* %i
  %_fun_return480 = bitcast i64 %_local481 to i64
  ret i64 %_fun_return480
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
