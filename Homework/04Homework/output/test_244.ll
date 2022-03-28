; generated from: hw4programs/run53.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc2314, { i64, [0 x i8*] }* %_argv2315) {
  %_argc2316 = alloca i64
  store i64 %_argc2314, i64* %_argc2316
  %_argv2317 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv2315, { i64, [0 x i8*] }** %_argv2317
  %_raw_array2318 = call i64* @oat_alloc_array(i64 3)
  %_array2319 = bitcast i64* %_raw_array2318 to { i64, [0 x i64] }*
  %_ind2320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2319, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind2320
  %_ind2321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2319, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind2321
  %_ind2322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2319, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind2322
  %_ret2323 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2319)
  %str = alloca i8*
  store i8* %_ret2323, i8** %str
  %_local2324 = load i8*, i8** %str
  call void @print_string(i8* %_local2324)
  %_fun_return2325 = bitcast i64 0 to i64
  ret i64 %_fun_return2325
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
