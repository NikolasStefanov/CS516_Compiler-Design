; generated from: hw4programs/run3.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %_argc1137, { i64, [0 x i8*] }* %_argv1138) {
  %_argc1139 = alloca i64
  store i64 %_argc1137, i64* %_argc1139
  %_argv1140 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1138, { i64, [0 x i8*] }** %_argv1140
  %_raw_array1141 = call i64* @oat_alloc_array(i64 2)
  %_array1142 = bitcast i64* %_raw_array1141 to { i64, [0 x i64] }*
  %_ind1143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1143
  %_ind1144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1144
  store { i64, [0 x i64] }* %_array1142, { i64, [0 x i64] }** @_arr
  %_glob1146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_arr
  %_ptr1147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_glob1146, i32 0, i32 1, i32 1
  %_elem1148 = load i64, i64* %_ptr1147
  %_fun_return1145 = bitcast i64 %_elem1148 to i64
  ret i64 %_fun_return1145
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
