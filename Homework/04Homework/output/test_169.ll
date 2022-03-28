; generated from: hw4programs/gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @gcd(i64 %a, i64 %b) {
  %_1005 = alloca i64
  %_1006 = alloca i64
  store i64 %a, i64* %_1005
  store i64 %b, i64* %_1006
  %t = alloca i64
  br label %_while_cond1007
_while_cond1007:
  %_1008 = load i64, i64* %_1006
  %_1009 = icmp ne i64 %_1008, 0
  %_1010 = icmp eq i1 1, %_1009
  br i1 %_1010, label %_loop_body1011, label %_loop_end1019
_loop_body1011:
  %_1012 = load i64, i64* %_1006
  store i64 %_1012, i64* %t
  %_1014 = load i64, i64* %_1006
  %_1013 = load i64, i64* %_1005
  %_1015 = call i64 @mod(i64 %_1013, i64 %_1014)
  store i64 %_1015, i64* %_1006
  %_1017 = load i64, i64* %t
  store i64 %_1017, i64* %_1005
  br label %_while_cond1007
_loop_end1019:
  %_1020 = load i64, i64* %_1005
  ret i64 %_1020
}

define i64 @mod(i64 %a, i64 %b) {
  %_989 = alloca i64
  %_990 = alloca i64
  store i64 %a, i64* %_989
  store i64 %b, i64* %_990
  %t = alloca i64
  %_991 = load i64, i64* %_989
  store i64 %_991, i64* %t
  br label %_while_cond992
_while_cond992:
  %_993 = load i64, i64* %t
  %_994 = load i64, i64* %_990
  %_995 = sub i64 %_993, %_994
  %_996 = icmp sge i64 %_995, 0
  %_997 = icmp eq i1 1, %_996
  br i1 %_997, label %_loop_body998, label %_loop_end1003
_loop_body998:
  %_999 = load i64, i64* %t
  %_1000 = load i64, i64* %_990
  %_1001 = sub i64 %_999, %_1000
  store i64 %_1001, i64* %t
  br label %_while_cond992
_loop_end1003:
  %_1004 = load i64, i64* %t
  ret i64 %_1004
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_984 = alloca i64
  %_985 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_984
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_985
  %a = alloca i64
  %b = alloca i64
  store i64 64, i64* %a
  store i64 48, i64* %b
  %_987 = load i64, i64* %b
  %_986 = load i64, i64* %a
  %_988 = call i64 @gcd(i64 %_986, i64 %_987)
  ret i64 %_988
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
