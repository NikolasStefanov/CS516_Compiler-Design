; generated from: hw4programs/run28.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_167 = alloca i64
  %_168 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_167
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_168
  %i = alloca i64
  %j = alloca i64
  store i64 9, i64* %i
  %_169 = load i64, i64* %i
  %_170 = load i64, i64* %i
  %_171 = add i64 %_169, %_170
  store i64 %_171, i64* %j
  %_172 = load i64, i64* %i
  %_173 = load i64, i64* %i
  %_174 = load i64, i64* %i
  %_175 = mul i64 %_173, %_174
  %_176 = add i64 %_172, %_175
  %_177 = load i64, i64* %j
  %_178 = sub i64 %_176, %_177
  %_179 = lshr i64 %_178, 2
  %_180 = shl i64 %_179, 2
  %_181 = ashr i64 %_180, 2
  ret i64 %_181
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
