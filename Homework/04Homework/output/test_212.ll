; generated from: hw4programs/run49.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc865, { i64, [0 x i8*] }* %_argv866) {
  %_argc867 = alloca i64
  store i64 %_argc865, i64* %_argc867
  %_argv868 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv866, { i64, [0 x i8*] }** %_argv868
  %_raw_array870 = call i64* @oat_alloc_array(i64 3)
  %_array871 = bitcast i64* %_raw_array870 to { i64, [0 x i64] }*
  %_ind872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array871, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind872
  %_ind873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array871, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind873
  %_ind874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array871, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind874
  %_strr_arr869 = call i8* @string_of_array({ i64, [0 x i64] }* %_array871)
  call void @print_string(i8* %_strr_arr869)
  %_fun_return875 = bitcast i64 0 to i64
  ret i64 %_fun_return875
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
