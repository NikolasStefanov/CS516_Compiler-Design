; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %_x909) {
  %_x910 = alloca i64
  store i64 %_x909, i64* %_x910
  %acc = alloca i64
  store i64 1, i64* %acc
  br label %_while918
_while918:
  %_local911 = load i64, i64* %_x910
  %_bop912 = icmp sgt i64 %_local911, 0
  br i1 %_bop912, label %_do919, label %_elihw920
_do919:
  %_local913 = load i64, i64* %acc
  %_local914 = load i64, i64* %_x910
  %_bop915 = mul i64 %_local913, %_local914
  store i64 %_bop915, i64* %acc
  %_local916 = load i64, i64* %_x910
  %_bop917 = sub i64 %_local916, 1
  store i64 %_bop917, i64* %_x910
  br label %_while918
_elihw920:
  %_local922 = load i64, i64* %acc
  %_fun_return921 = bitcast i64 %_local922 to i64
  ret i64 %_fun_return921
}

define i64 @program(i64 %_argc902, { i64, [0 x i8*] }* %_argv903) {
  %_argc904 = alloca i64
  store i64 %_argc902, i64* %_argc904
  %_argv905 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv903, { i64, [0 x i8*] }** %_argv905
  %_ret906 = call i64 @_fact(i64 5)
  %_ret907 = call i8* @string_of_int(i64 %_ret906)
  call void @print_string(i8* %_ret907)
  %_fun_return908 = bitcast i64 0 to i64
  ret i64 %_fun_return908
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
