; generated from: hw4programs/run25.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1099, { i64, [0 x i8*] }* %_argv1100) {
  %argc = alloca i64
  store i64 %_argc1099, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1100, { i64, [0 x i8*] }** %argv
  %_raw_array1101 = call i64* @oat_alloc_array(i64 3)
  %_array1102 = bitcast i64* %_raw_array1101 to { i64, [0 x i64] }*
  %_ind1103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1102, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1103
  %_ind1104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1102, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1104
  %_ind1105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1102, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1105
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1102, { i64, [0 x i64] }** %a
  %_glob1106 = load i8* ({ i64, [0 x i64] }*), i8* ({ i64, [0 x i64] }*)* @string_of_array
  %_local1107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_ret1108 = call i8* %_ret1108({ i64, [0 x i64] }* %_local1107)
  %str = alloca i8*
  store i8* %_ret1108, i8** %str
  ret i64 0
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
