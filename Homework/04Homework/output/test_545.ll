; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1264, { i64, [0 x i8*] }* %_argv1265) {
  %_argc1266 = alloca i64
  store i64 %_argc1264, i64* %_argc1266
  %_argv1267 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1265, { i64, [0 x i8*] }** %_argv1267
  %_raw_array1268 = call i64* @oat_alloc_array(i64 2)
  %_array1269 = bitcast i64* %_raw_array1268 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1270 = call i64* @oat_alloc_array(i64 2)
  %_array1271 = bitcast i64* %_raw_array1270 to { i64, [0 x i64] }*
  %_ind1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1271, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1272
  %_ind1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1271, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1273
  %_raw_array1274 = call i64* @oat_alloc_array(i64 2)
  %_array1275 = bitcast i64* %_raw_array1274 to { i64, [0 x i64] }*
  %_ind1276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1275, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1276
  %_ind1277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1275, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1277
  %_ind1278 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1269, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1271, { i64, [0 x i64] }** %_ind1278
  %_ind1279 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1269, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1275, { i64, [0 x i64] }** %_ind1279
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1269, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local1281 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1282 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1281, i32 0, i32 1, i32 1
  %_elem1283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1282
  %_ptr1284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1283, i32 0, i32 1, i32 1
  %_elem1285 = load i64, i64* %_ptr1284
  %_fun_return1280 = bitcast i64 %_elem1285 to i64
  ret i64 %_fun_return1280
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
