; generated from: hw4programs/run5.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1161, { i64, [0 x i8*] }* %_argv1162) {
  %_argc1163 = alloca i64
  store i64 %_argc1161, i64* %_argc1163
  %_argv1164 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1162, { i64, [0 x i8*] }** %_argv1164
  %_raw_array1165 = call i64* @oat_alloc_array(i64 2)
  %_array1166 = bitcast i64* %_raw_array1165 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1167 = call i64* @oat_alloc_array(i64 2)
  %_array1168 = bitcast i64* %_raw_array1167 to { i64, [0 x i64] }*
  %_ind1169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1169
  %_ind1170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1170
  %_raw_array1171 = call i64* @oat_alloc_array(i64 2)
  %_array1172 = bitcast i64* %_raw_array1171 to { i64, [0 x i64] }*
  %_ind1173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1172, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1173
  %_ind1174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1172, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1174
  %_ind1175 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1166, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1168, { i64, [0 x i64] }** %_ind1175
  %_ind1176 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1166, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1172, { i64, [0 x i64] }** %_ind1176
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1166, { i64, [0 x { i64, [0 x i64] }*] }** @_arr
  %_glob1178 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @_arr
  %_ptr1179 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_glob1178, i32 0, i32 1, i32 1
  %_elem1180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1179
  %_ptr1181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1180, i32 0, i32 1, i32 1
  %_elem1182 = load i64, i64* %_ptr1181
  %_fun_return1177 = bitcast i64 %_elem1182 to i64
  ret i64 %_fun_return1177
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
