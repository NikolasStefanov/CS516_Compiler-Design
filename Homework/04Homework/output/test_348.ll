; generated from: hw4programs/run47.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_glob2283 = load i64, i64* @_a
  %_bop2284 = add i64 %_glob2283, 1
  store i64 %_bop2284, i64* @_a
  %_glob2286 = load i64, i64* @_a
  %_fun_return2285 = bitcast i64 %_glob2286 to i64
  ret i64 %_fun_return2285
}

define i64 @program(i64 %_argc2262, { i64, [0 x i8*] }* %_argv2263) {
  %_argc2264 = alloca i64
  store i64 %_argc2262, i64* %_argc2264
  %_argv2265 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2263, { i64, [0 x i8*] }** %_argv2265
  %_ret2266 = call i64 @_f()
  %_raw_array2267 = call i64* @oat_alloc_array(i64 %_ret2266)
  %_array2268 = bitcast i64* %_raw_array2267 to { i64, [0 x i64] }*
  %b = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2268, { i64, [0 x i64] }** %b
  %_local2269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2269, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind_assign2270
  %_local2271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2271, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind_assign2272
  %_glob2274 = load i64, i64* @_a
  %_local2275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2275, i32 0, i32 1, i32 0
  %_elem2277 = load i64, i64* %_ptr2276
  %_bop2278 = add i64 %_glob2274, %_elem2277
  %_local2279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2279, i32 0, i32 1, i32 1
  %_elem2281 = load i64, i64* %_ptr2280
  %_bop2282 = add i64 %_bop2278, %_elem2281
  %_fun_return2273 = bitcast i64 %_bop2282 to i64
  ret i64 %_fun_return2273
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
