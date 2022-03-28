; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %_a4669, i64 %_b4670) {
  %_a4671 = alloca i64
  store i64 %_a4669, i64* %_a4671
  %_b4672 = alloca i64
  store i64 %_b4670, i64* %_b4672
  br label %_while4680
_while4680:
  %_local4673 = load i64, i64* %_b4672
  %_bop4674 = icmp ne i64 %_local4673, 0
  br i1 %_bop4674, label %_do4681, label %_elihw4682
_do4681:
  %_local4675 = load i64, i64* %_b4672
  %t = alloca i64
  store i64 %_local4675, i64* %t
  %_local4676 = load i64, i64* %_a4671
  %_local4677 = load i64, i64* %_b4672
  %_ret4678 = call i64 @_mod(i64 %_local4676, i64 %_local4677)
  store i64 %_ret4678, i64* %_b4672
  %_local4679 = load i64, i64* %t
  store i64 %_local4679, i64* %_a4671
  br label %_while4680
_elihw4682:
  %_local4684 = load i64, i64* %_a4671
  %_fun_return4683 = bitcast i64 %_local4684 to i64
  ret i64 %_fun_return4683
}

define i64 @mod(i64 %_a4652, i64 %_b4653) {
  %_a4654 = alloca i64
  store i64 %_a4652, i64* %_a4654
  %_b4655 = alloca i64
  store i64 %_b4653, i64* %_b4655
  %_local4656 = load i64, i64* %_a4654
  %t = alloca i64
  store i64 %_local4656, i64* %t
  br label %_while4664
_while4664:
  %_local4657 = load i64, i64* %t
  %_local4658 = load i64, i64* %_b4655
  %_bop4659 = sub i64 %_local4657, %_local4658
  %_bop4660 = icmp sge i64 %_bop4659, 0
  br i1 %_bop4660, label %_do4665, label %_elihw4666
_do4665:
  %_local4661 = load i64, i64* %t
  %_local4662 = load i64, i64* %_b4655
  %_bop4663 = sub i64 %_local4661, %_local4662
  store i64 %_bop4663, i64* %t
  br label %_while4664
_elihw4666:
  %_local4668 = load i64, i64* %t
  %_fun_return4667 = bitcast i64 %_local4668 to i64
  ret i64 %_fun_return4667
}

define i64 @program(i64 %_argc4644, { i64, [0 x i8*] }* %_argv4645) {
  %_argc4646 = alloca i64
  store i64 %_argc4644, i64* %_argc4646
  %_argv4647 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4645, { i64, [0 x i8*] }** %_argv4647
  %a = alloca i64
  store i64 64, i64* %a
  %b = alloca i64
  store i64 48, i64* %b
  %_local4649 = load i64, i64* %a
  %_local4650 = load i64, i64* %b
  %_ret4651 = call i64 @_gcd(i64 %_local4649, i64 %_local4650)
  %_fun_return4648 = bitcast i64 %_ret4651 to i64
  ret i64 %_fun_return4648
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
