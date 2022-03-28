; generated from: hw4programs/run29.oat
target triple = "x86_64-apple-macosx10.13.0"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_182 = alloca i64
  %_183 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_182
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_183
  %i = alloca i64
  store i64 0, i64* %i
  %_184 = load i1, i1* @b
  %_185 = icmp eq i1 1, %_184
  br i1 %_185, label %_then186, label %_else187
_then186:
  store i64 1, i64* %i
  br label %_out188
_else187:
  br label %_out188
_out188:
  %_190 = load i64, i64* %i
  ret i64 %_190
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
