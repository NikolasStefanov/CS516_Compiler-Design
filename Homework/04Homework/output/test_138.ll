; generated from: hw4programs/easyrun8.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_82 = alloca i64
  %_83 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_82
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_83
  %_84 = icmp ne i64 6, 5
  %_85 = icmp eq i1 1, %_84
  br i1 %_85, label %_then86, label %_else87
_then86:
  %_89 = mul i64 -1, 6
  %_90 = lshr i64 5, %_89
  %_91 = shl i64 %_90, 9
  %_92 = ashr i64 %_91, 10
  %_93 = xor i64 9223372036854775807, %_92
  %_94 = mul i64 %_93, 2
  %_95 = sub i64 %_94, 100
  %_96 = add i64 %_95, 6
  ret i64 %_96
_else87:
  ret i64 2
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
