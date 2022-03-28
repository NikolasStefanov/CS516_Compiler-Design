; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %_n4019) {
  %_n4020 = alloca i64
  store i64 %_n4019, i64* %_n4020
  %_local4021 = load i64, i64* %_n4020
  %_bop4022 = icmp eq i64 %_local4021, 0
  br i1 %_bop4022, label %_if4024, label %_else4025
_if4024:
  %_fun_return4023 = bitcast i64 0 to i64
  ret i64 %_fun_return4023
_else4025:
  br label %_fi4026
_fi4026:
  %_local4027 = load i64, i64* %_n4020
  %_bop4028 = icmp eq i64 %_local4027, 1
  br i1 %_bop4028, label %_if4030, label %_else4031
_if4030:
  %_fun_return4029 = bitcast i64 1 to i64
  ret i64 %_fun_return4029
_else4031:
  br label %_fi4032
_fi4032:
  %_local4034 = load i64, i64* %_n4020
  %_bop4035 = sub i64 %_local4034, 1
  %_ret4036 = call i64 @_fibR(i64 %_bop4035)
  %_local4037 = load i64, i64* %_n4020
  %_bop4038 = sub i64 %_local4037, 2
  %_ret4039 = call i64 @_fibR(i64 %_bop4038)
  %_bop4040 = add i64 %_ret4036, %_ret4039
  %_fun_return4033 = bitcast i64 %_bop4040 to i64
  ret i64 %_fun_return4033
}

define i64 @fibI(i64 %_n3986) {
  %_n3987 = alloca i64
  store i64 %_n3986, i64* %_n3987
  %a = alloca i64
  store i64 0, i64* %a
  %b = alloca i64
  store i64 1, i64* %b
  %_local3988 = load i64, i64* %_n3987
  %_bop3989 = icmp eq i64 %_local3988, 0
  br i1 %_bop3989, label %_if3992, label %_else3993
_if3992:
  %_local3991 = load i64, i64* %a
  %_fun_return3990 = bitcast i64 %_local3991 to i64
  ret i64 %_fun_return3990
_else3993:
  br label %_fi3994
_fi3994:
  %_local3995 = load i64, i64* %_n3987
  %_bop3996 = icmp eq i64 %_local3995, 1
  br i1 %_bop3996, label %_if3999, label %_else4000
_if3999:
  %_local3998 = load i64, i64* %b
  %_fun_return3997 = bitcast i64 %_local3998 to i64
  ret i64 %_fun_return3997
_else4000:
  br label %_fi4001
_fi4001:
  br label %_while4012
_while4012:
  %_local4002 = load i64, i64* %_n3987
  %_bop4003 = sub i64 %_local4002, 2
  %_bop4004 = icmp sgt i64 %_bop4003, 0
  br i1 %_bop4004, label %_do4013, label %_elihw4014
_do4013:
  %_local4005 = load i64, i64* %b
  %old = alloca i64
  store i64 %_local4005, i64* %old
  %_local4006 = load i64, i64* %b
  %_local4007 = load i64, i64* %a
  %_bop4008 = add i64 %_local4006, %_local4007
  store i64 %_bop4008, i64* %b
  %_local4009 = load i64, i64* %old
  store i64 %_local4009, i64* %a
  %_local4010 = load i64, i64* %_n3987
  %_bop4011 = sub i64 %_local4010, 1
  store i64 %_bop4011, i64* %_n3987
  br label %_while4012
_elihw4014:
  %_local4016 = load i64, i64* %a
  %_local4017 = load i64, i64* %b
  %_bop4018 = add i64 %_local4016, %_local4017
  %_fun_return4015 = bitcast i64 %_bop4018 to i64
  ret i64 %_fun_return4015
}

define i64 @program(i64 %_argc3972, { i64, [0 x i8*] }* %_argv3973) {
  %_argc3974 = alloca i64
  store i64 %_argc3972, i64* %_argc3974
  %_argv3975 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv3973, { i64, [0 x i8*] }** %_argv3975
  %val = alloca i64
  store i64 1, i64* %val
  %_ret3976 = call i64 @_fibR(i64 12)
  %_bop3977 = icmp eq i64 %_ret3976, 144
  %_ret3978 = call i64 @_fibI(i64 12)
  %_bop3979 = icmp eq i64 %_ret3978, 144
  %_bop3980 = and i1 %_bop3977, %_bop3979
  br i1 %_bop3980, label %_if3981, label %_else3982
_if3981:
  store i64 0, i64* %val
  br label %_fi3983
_else3982:
  br label %_fi3983
_fi3983:
  %_local3985 = load i64, i64* %val
  %_fun_return3984 = bitcast i64 %_local3985 to i64
  ret i64 %_fun_return3984
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
