; generated from: hw4programs/globals6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc175, { i64, [0 x i8*] }* %_args176) {
  %argc = alloca i64
  store i64 %_argc175, i64* %argc
  %args = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args176, { i64, [0 x i8*] }** %args
  %_raw_array178 = call i64* @oat_alloc_array(i64 6)
  %_array179 = bitcast i64* %_raw_array178 to { i64, [0 x i64] }*
  %_ind180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array179, i32 0, i32 1, i32 0
  store i64 104, i64* %_ind180
  %_ind181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array179, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind181
  %_ind182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array179, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind182
  %_ind183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array179, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind183
  %_ind184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array179, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind184
  %_ind185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array179, i32 0, i32 1, i32 5
  store i64 33, i64* %_ind185
  %_strr_arr177 = call i8* @string_of_array({ i64, [0 x i64] }* %_array179)
  %s = alloca i8*
  store i8* %_strr_arr177, i8** %s
  ret i64 15
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
