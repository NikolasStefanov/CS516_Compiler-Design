; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %_x996, i64 %_y997) {
  %_x998 = alloca i64
  store i64 %_x996, i64* %_x998
  %_y999 = alloca i64
  store i64 %_y997, i64* %_y999
  %r = alloca i64
  store i64 0, i64* %r
  %_local1000 = load i64, i64* %_x998
  %_bop1001 = icmp sge i64 %_local1000, 1
  br i1 %_bop1001, label %_if1010, label %_else1011
_if1010:
  %_local1002 = load i64, i64* %_x998
  %_bop1003 = sub i64 %_local1002, 1
  %_local1004 = load i64, i64* %_y999
  %_ret1005 = call i64 @_f(i64 %_bop1003, i64 %_local1004)
  %_bop1006 = add i64 1, %_ret1005
  store i64 %_bop1006, i64* %r
  br label %_fi1012
_else1011:
  %_local1007 = load i64, i64* %_x998
  %_local1008 = load i64, i64* %_y999
  %_bop1009 = add i64 %_local1007, %_local1008
  store i64 %_bop1009, i64* %r
  br label %_fi1012
_fi1012:
  %_local1014 = load i64, i64* %r
  %_fun_return1013 = bitcast i64 %_local1014 to i64
  ret i64 %_fun_return1013
}

define i64 @program(i64 %_argc986, { i64, [0 x i8*] }* %_argv987) {
  %_argc988 = alloca i64
  store i64 %_argc986, i64* %_argc988
  %_argv989 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv987, { i64, [0 x i8*] }** %_argv989
  %x = alloca i64
  store i64 3, i64* %x
  %y = alloca i64
  store i64 3, i64* %y
  %_local991 = load i64, i64* %x
  %_local992 = load i64, i64* %y
  %_ret993 = call i64 @_f(i64 %_local991, i64 %_local992)
  %_glob994 = load i64, i64* @_i
  %_bop995 = add i64 %_ret993, %_glob994
  %_fun_return990 = bitcast i64 %_bop995 to i64
  ret i64 %_fun_return990
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
