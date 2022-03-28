; generated from: hw4programs/run32.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 11

define i64 @f() {
  %i = alloca i64
  store i64 12, i64* %i
  %_206 = load i64, i64* %i
  ret i64 %_206
}

define i64 @g() {
  %i = alloca i64
  store i64 10, i64* %i
  %_205 = load i64, i64* %i
  ret i64 %_205
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_198 = alloca i64
  %_199 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_198
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_199
  %_200 = call i64 @f()
  %_201 = call i64 @g()
  %_202 = add i64 %_200, %_201
  %_203 = load i64, i64* @i
  %_204 = add i64 %_202, %_203
  ret i64 %_204
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
