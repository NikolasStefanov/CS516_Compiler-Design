; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %_a4547, i64 %_b4548) {
  %_a4549 = alloca i64
  store i64 %_a4547, i64* %_a4549
  %_b4550 = alloca i64
  store i64 %_b4548, i64* %_b4550
  br label %_while4558
_while4558:
  %_local4551 = load i64, i64* %_b4550
  %_bop4552 = icmp ne i64 %_local4551, 0
  br i1 %_bop4552, label %_do4559, label %_elihw4560
_do4559:
  %_local4553 = load i64, i64* %_b4550
  %t = alloca i64
  store i64 %_local4553, i64* %t
  %_local4554 = load i64, i64* %_a4549
  %_local4555 = load i64, i64* %_b4550
  %_ret4556 = call i64 @_mod(i64 %_local4554, i64 %_local4555)
  store i64 %_ret4556, i64* %_b4550
  %_local4557 = load i64, i64* %t
  store i64 %_local4557, i64* %_a4549
  br label %_while4558
_elihw4560:
  %_local4562 = load i64, i64* %_a4549
  %_fun_return4561 = bitcast i64 %_local4562 to i64
  ret i64 %_fun_return4561
}

define i64 @mod(i64 %_a4530, i64 %_b4531) {
  %_a4532 = alloca i64
  store i64 %_a4530, i64* %_a4532
  %_b4533 = alloca i64
  store i64 %_b4531, i64* %_b4533
  %_local4534 = load i64, i64* %_a4532
  %t = alloca i64
  store i64 %_local4534, i64* %t
  br label %_while4542
_while4542:
  %_local4535 = load i64, i64* %t
  %_local4536 = load i64, i64* %_b4533
  %_bop4537 = sub i64 %_local4535, %_local4536
  %_bop4538 = icmp sge i64 %_bop4537, 0
  br i1 %_bop4538, label %_do4543, label %_elihw4544
_do4543:
  %_local4539 = load i64, i64* %t
  %_local4540 = load i64, i64* %_b4533
  %_bop4541 = sub i64 %_local4539, %_local4540
  store i64 %_bop4541, i64* %t
  br label %_while4542
_elihw4544:
  %_local4546 = load i64, i64* %t
  %_fun_return4545 = bitcast i64 %_local4546 to i64
  ret i64 %_fun_return4545
}

define i64 @program(i64 %_argc4522, { i64, [0 x i8*] }* %_argv4523) {
  %_argc4524 = alloca i64
  store i64 %_argc4522, i64* %_argc4524
  %_argv4525 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4523, { i64, [0 x i8*] }** %_argv4525
  %a = alloca i64
  store i64 64, i64* %a
  %b = alloca i64
  store i64 48, i64* %b
  %_local4527 = load i64, i64* %a
  %_local4528 = load i64, i64* %b
  %_ret4529 = call i64 @_gcd(i64 %_local4527, i64 %_local4528)
  %_fun_return4526 = bitcast i64 %_ret4529 to i64
  ret i64 %_fun_return4526
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
