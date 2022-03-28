; generated from: hw4programs/run39.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f1(i64 %i) {
  %_255 = alloca i64
  store i64 %i, i64* %_255
  %_256 = load i64, i64* %_255
  %_257 = call i64 @f2(i64 %_256)
  ret i64 %_257
}

define i64 @f2(i64 %i) {
  %_252 = alloca i64
  store i64 %i, i64* %_252
  %_253 = load i64, i64* %_252
  %_254 = call i64 @f3(i64 %_253)
  ret i64 %_254
}

define i64 @f3(i64 %i) {
  %_249 = alloca i64
  store i64 %i, i64* %_249
  %_250 = load i64, i64* %_249
  %_251 = call i64 @f4(i64 %_250)
  ret i64 %_251
}

define i64 @f4(i64 %i) {
  %_246 = alloca i64
  store i64 %i, i64* %_246
  %_247 = load i64, i64* %_246
  %_248 = call i64 @f5(i64 %_247)
  ret i64 %_248
}

define i64 @f5(i64 %i) {
  %_243 = alloca i64
  store i64 %i, i64* %_243
  %_244 = load i64, i64* %_243
  %_245 = call i64 @f6(i64 %_244)
  ret i64 %_245
}

define i64 @f6(i64 %i) {
  %_240 = alloca i64
  store i64 %i, i64* %_240
  %_241 = load i64, i64* %_240
  %_242 = call i64 @f7(i64 %_241)
  ret i64 %_242
}

define i64 @f7(i64 %i) {
  %_237 = alloca i64
  store i64 %i, i64* %_237
  %_238 = load i64, i64* %_237
  %_239 = call i64 @f8(i64 %_238)
  ret i64 %_239
}

define i64 @f8(i64 %i) {
  %_234 = alloca i64
  store i64 %i, i64* %_234
  %_235 = load i64, i64* %_234
  %_236 = call i64 @f9(i64 %_235)
  ret i64 %_236
}

define i64 @f9(i64 %i) {
  %_232 = alloca i64
  store i64 %i, i64* %_232
  %_233 = load i64, i64* %_232
  ret i64 %_233
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_228 = alloca i64
  %_229 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_228
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_229
  %_230 = load i64, i64* %_228
  %_231 = call i64 @f1(i64 %_230)
  ret i64 %_231
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
