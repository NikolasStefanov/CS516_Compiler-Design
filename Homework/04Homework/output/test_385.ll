; generated from: hw4programs/easyrun3.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc135, { i64, [0 x i8*] }* %_argv136) {
  %_argc137 = alloca i64
  store i64 %_argc135, i64* %_argc137
  %_argv138 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv136, { i64, [0 x i8*] }** %_argv138
  %x = alloca i64
  store i64 0, i64* %x
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while148
_while148:
  %_local139 = load i64, i64* %i
  %_bop140 = icmp slt i64 %_local139, 10
  br i1 %_bop140, label %_do149, label %_elihw150
_do149:
  %_local141 = load i64, i64* %x
  %_local142 = load i64, i64* %i
  %_bop143 = add i64 %_local141, %_local142
  %_local144 = load i64, i64* %i
  %_bop145 = mul i64 %_bop143, %_local144
  store i64 %_bop145, i64* %x
  %_local146 = load i64, i64* %i
  %_bop147 = add i64 %_local146, 1
  store i64 %_bop147, i64* %i
  br label %_while148
_elihw150:
  %_local152 = load i64, i64* %x
  %_fun_return151 = bitcast i64 %_local152 to i64
  ret i64 %_fun_return151
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
