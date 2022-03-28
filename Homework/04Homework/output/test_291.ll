; generated from: hw4programs/globals6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc232, { i64, [0 x i8*] }* %_args233) {
  %_argc234 = alloca i64
  store i64 %_argc232, i64* %_argc234
  %_args235 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args233, { i64, [0 x i8*] }** %_args235
  %_raw_array237 = call i64* @oat_alloc_array(i64 6)
  %_array238 = bitcast i64* %_raw_array237 to { i64, [0 x i64] }*
  %_ind239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array238, i32 0, i32 1, i32 0
  store i64 104, i64* %_ind239
  %_ind240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array238, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind240
  %_ind241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array238, i32 0, i32 1, i32 2
  store i64 108, i64* %_ind241
  %_ind242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array238, i32 0, i32 1, i32 3
  store i64 108, i64* %_ind242
  %_ind243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array238, i32 0, i32 1, i32 4
  store i64 111, i64* %_ind243
  %_ind244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array238, i32 0, i32 1, i32 5
  store i64 33, i64* %_ind244
  %_strr_arr236 = call i8* @string_of_array({ i64, [0 x i64] }* %_array238)
  %s = alloca i8*
  store i8* %_strr_arr236, i8** %s
  %_fun_return245 = bitcast i64 15 to i64
  ret i64 %_fun_return245
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
