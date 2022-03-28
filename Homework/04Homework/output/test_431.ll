; generated from: hw4programs/run2.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 0

define i64 @f(i64 %_x1118, i64 %_y1119) {
  %_x1120 = alloca i64
  store i64 %_x1118, i64* %_x1120
  %_y1121 = alloca i64
  store i64 %_y1119, i64* %_y1121
  %r = alloca i64
  store i64 0, i64* %r
  %_local1122 = load i64, i64* %_x1120
  %_bop1123 = icmp sge i64 %_local1122, 1
  br i1 %_bop1123, label %_if1132, label %_else1133
_if1132:
  %_local1124 = load i64, i64* %_x1120
  %_bop1125 = sub i64 %_local1124, 1
  %_local1126 = load i64, i64* %_y1121
  %_ret1127 = call i64 @_f(i64 %_bop1125, i64 %_local1126)
  %_bop1128 = add i64 1, %_ret1127
  store i64 %_bop1128, i64* %r
  br label %_fi1134
_else1133:
  %_local1129 = load i64, i64* %_x1120
  %_local1130 = load i64, i64* %_y1121
  %_bop1131 = add i64 %_local1129, %_local1130
  store i64 %_bop1131, i64* %r
  br label %_fi1134
_fi1134:
  %_local1136 = load i64, i64* %r
  %_fun_return1135 = bitcast i64 %_local1136 to i64
  ret i64 %_fun_return1135
}

define i64 @program(i64 %_argc1108, { i64, [0 x i8*] }* %_argv1109) {
  %_argc1110 = alloca i64
  store i64 %_argc1108, i64* %_argc1110
  %_argv1111 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1109, { i64, [0 x i8*] }** %_argv1111
  %x = alloca i64
  store i64 3, i64* %x
  %y = alloca i64
  store i64 3, i64* %y
  %_local1113 = load i64, i64* %x
  %_local1114 = load i64, i64* %y
  %_ret1115 = call i64 @_f(i64 %_local1113, i64 %_local1114)
  %_glob1116 = load i64, i64* @_i
  %_bop1117 = add i64 %_ret1115, %_glob1116
  %_fun_return1112 = bitcast i64 %_bop1117 to i64
  ret i64 %_fun_return1112
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
