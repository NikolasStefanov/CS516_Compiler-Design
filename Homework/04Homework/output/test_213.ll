; generated from: hw4programs/run50.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc876, { i64, [0 x i8*] }* %_argv877) {
  %_argc878 = alloca i64
  store i64 %_argc876, i64* %_argc878
  %_argv879 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv877, { i64, [0 x i8*] }** %_argv879
  %_raw_array881 = call i64* @oat_alloc_array(i64 5)
  %_array882 = bitcast i64* %_raw_array881 to { i64, [0 x i64] }*
  %_ind883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array882, i32 0, i32 1, i32 0
  store i64 97, i64* %_ind883
  %_ind884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array882, i32 0, i32 1, i32 1
  store i64 98, i64* %_ind884
  %_ind885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array882, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind885
  %_ind886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array882, i32 0, i32 1, i32 3
  store i64 100, i64* %_ind886
  %_ind887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array882, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind887
  %_strr_arr880 = call i8* @string_of_array({ i64, [0 x i64] }* %_array882)
  call void @print_string(i8* %_strr_arr880)
  %_fun_return888 = bitcast i64 0 to i64
  ret i64 %_fun_return888
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
