; generated from: hw4programs/run48.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global i64 1

define i64 @f() {
  %_glob2310 = load i64, i64* @_a
  %_bop2311 = add i64 %_glob2310, 1
  store i64 %_bop2311, i64* @_a
  %_glob2313 = load i64, i64* @_a
  %_fun_return2312 = bitcast i64 %_glob2313 to i64
  ret i64 %_fun_return2312
}

define i64 @program(i64 %_argc2287, { i64, [0 x i8*] }* %_argv2288) {
  %_argc2289 = alloca i64
  store i64 %_argc2287, i64* %_argc2289
  %_argv2290 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2288, { i64, [0 x i8*] }** %_argv2290
  %_ret2291 = call i64 @_f()
  %_raw_array2292 = call i64* @oat_alloc_array(i64 %_ret2291)
  %_array2293 = bitcast i64* %_raw_array2292 to { i64, [0 x i64] }*
  %b = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2293, { i64, [0 x i64] }** %b
  %_ret2294 = call i64 @_f()
  %_local2295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2295, i32 0, i32 1, i32 0
  store i64 %_ret2294, i64* %_ind_assign2296
  %_ret2297 = call i64 @_f()
  %_local2298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ind_assign2299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2298, i32 0, i32 1, i32 1
  store i64 %_ret2297, i64* %_ind_assign2299
  %_glob2301 = load i64, i64* @_a
  %_local2302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2302, i32 0, i32 1, i32 0
  %_elem2304 = load i64, i64* %_ptr2303
  %_bop2305 = add i64 %_glob2301, %_elem2304
  %_local2306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_ptr2307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local2306, i32 0, i32 1, i32 1
  %_elem2308 = load i64, i64* %_ptr2307
  %_bop2309 = add i64 %_bop2305, %_elem2308
  %_fun_return2300 = bitcast i64 %_bop2309 to i64
  ret i64 %_fun_return2300
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
