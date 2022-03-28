; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %x) {
  %_319 = alloca i64
  store i64 %x, i64* %_319
  %acc = alloca i64
  store i64 1, i64* %acc
  br label %_while_cond320
_while_cond320:
  %_321 = load i64, i64* %_319
  %_322 = icmp sgt i64 %_321, 0
  %_323 = icmp eq i1 1, %_322
  br i1 %_323, label %_loop_body324, label %_loop_end332
_loop_body324:
  %_325 = load i64, i64* %acc
  %_326 = load i64, i64* %_319
  %_327 = mul i64 %_325, %_326
  store i64 %_327, i64* %acc
  %_329 = load i64, i64* %_319
  %_330 = sub i64 %_329, 1
  store i64 %_330, i64* %_319
  br label %_while_cond320
_loop_end332:
  %_333 = load i64, i64* %acc
  ret i64 %_333
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_314 = alloca i64
  %_315 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_314
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_315
  %_316 = call i64 @fact(i64 5)
  %_317 = call i8* @string_of_int(i64 %_316)
  call void @print_string(i8* %_317)
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
