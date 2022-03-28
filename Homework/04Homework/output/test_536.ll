; generated from: hw4programs/fact.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fact(i64 %_x1031) {
  %_x1032 = alloca i64
  store i64 %_x1031, i64* %_x1032
  %acc = alloca i64
  store i64 1, i64* %acc
  br label %_while1040
_while1040:
  %_local1033 = load i64, i64* %_x1032
  %_bop1034 = icmp sgt i64 %_local1033, 0
  br i1 %_bop1034, label %_do1041, label %_elihw1042
_do1041:
  %_local1035 = load i64, i64* %acc
  %_local1036 = load i64, i64* %_x1032
  %_bop1037 = mul i64 %_local1035, %_local1036
  store i64 %_bop1037, i64* %acc
  %_local1038 = load i64, i64* %_x1032
  %_bop1039 = sub i64 %_local1038, 1
  store i64 %_bop1039, i64* %_x1032
  br label %_while1040
_elihw1042:
  %_local1044 = load i64, i64* %acc
  %_fun_return1043 = bitcast i64 %_local1044 to i64
  ret i64 %_fun_return1043
}

define i64 @program(i64 %_argc1024, { i64, [0 x i8*] }* %_argv1025) {
  %_argc1026 = alloca i64
  store i64 %_argc1024, i64* %_argc1026
  %_argv1027 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1025, { i64, [0 x i8*] }** %_argv1027
  %_ret1028 = call i64 @_fact(i64 5)
  %_ret1029 = call i8* @string_of_int(i64 %_ret1028)
  call void @print_string(i8* %_ret1029)
  %_fun_return1030 = bitcast i64 0 to i64
  ret i64 %_fun_return1030
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
