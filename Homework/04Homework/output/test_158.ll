; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_271 = alloca i64
  %_272 = alloca i64
  %_273 = alloca i64
  %_274 = alloca i64
  %_275 = alloca i64
  %_276 = alloca i64
  %_277 = alloca i64
  %_278 = alloca i64
  store i64 %x1, i64* %_271
  store i64 %x2, i64* %_272
  store i64 %x3, i64* %_273
  store i64 %x4, i64* %_274
  store i64 %x5, i64* %_275
  store i64 %x6, i64* %_276
  store i64 %x7, i64* %_277
  store i64 %x8, i64* %_278
  %_279 = load i64, i64* %_271
  %_280 = load i64, i64* %_272
  %_281 = add i64 %_279, %_280
  %_282 = load i64, i64* %_273
  %_283 = add i64 %_281, %_282
  %_284 = load i64, i64* %_274
  %_285 = add i64 %_283, %_284
  %_286 = load i64, i64* %_275
  %_287 = add i64 %_285, %_286
  %_288 = load i64, i64* %_276
  %_289 = add i64 %_287, %_288
  %_290 = load i64, i64* %_277
  %_291 = add i64 %_289, %_290
  %_292 = load i64, i64* %_278
  %_293 = add i64 %_291, %_292
  ret i64 %_293
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_265 = alloca i64
  %_266 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_265
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_266
  %_269 = mul i64 -1, 3
  %_268 = mul i64 -1, 4
  %_267 = mul i64 -1, 5
  %_270 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_267, i64 %_268, i64 %_269)
  ret i64 %_270
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
