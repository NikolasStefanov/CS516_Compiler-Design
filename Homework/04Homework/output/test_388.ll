; generated from: hw4programs/easyrun6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc191, { i64, [0 x i8*] }* %_argv192) {
  %_argc193 = alloca i64
  store i64 %_argc191, i64* %_argc193
  %_argv194 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv192, { i64, [0 x i8*] }** %_argv194
  %_uop195 = xor i1 1, 1
  %_uop196 = mul i64 4, -1
  %_bop197 = add i64 %_uop196, 5
  %_bop198 = icmp sgt i64 %_bop197, 0
  %_bop199 = mul i64 6, 4
  %_bop200 = icmp slt i64 %_bop199, 25
  %_bop201 = and i1 %_bop198, %_bop200
  %_bop202 = or i1 %_uop195, %_bop201
  br i1 %_bop202, label %_if205, label %_else206
_if205:
  %_fun_return203 = bitcast i64 9 to i64
  ret i64 %_fun_return203
_else206:
  %_fun_return204 = bitcast i64 4 to i64
  ret i64 %_fun_return204
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
