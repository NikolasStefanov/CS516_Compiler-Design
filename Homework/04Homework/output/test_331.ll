; generated from: hw4programs/run9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1142, { i64, [0 x i8*] }* %_argv1143) {
  %_argc1144 = alloca i64
  store i64 %_argc1142, i64* %_argc1144
  %_argv1145 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1143, { i64, [0 x i8*] }** %_argv1145
  %_raw_array1146 = call i64* @oat_alloc_array(i64 2)
  %_array1147 = bitcast i64* %_raw_array1146 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1148 = call i64* @oat_alloc_array(i64 2)
  %_array1149 = bitcast i64* %_raw_array1148 to { i64, [0 x i64] }*
  %_ind1150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1149, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1150
  %_ind1151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1149, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1151
  %_raw_array1152 = call i64* @oat_alloc_array(i64 2)
  %_array1153 = bitcast i64* %_raw_array1152 to { i64, [0 x i64] }*
  %_ind1154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1153, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1154
  %_ind1155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1153, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1155
  %_ind1156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1147, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1149, { i64, [0 x i64] }** %_ind1156
  %_ind1157 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1147, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1153, { i64, [0 x i64] }** %_ind1157
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1147, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local1159 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1160 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1159, i32 0, i32 1, i32 1
  %_elem1161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1160
  %_ptr1162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1161, i32 0, i32 1, i32 1
  %_elem1163 = load i64, i64* %_ptr1162
  %_fun_return1158 = bitcast i64 %_elem1163 to i64
  ret i64 %_fun_return1158
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
