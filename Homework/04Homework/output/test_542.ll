; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1183, { i64, [0 x i8*] }* %_argv1184) {
  %_argc1185 = alloca i64
  store i64 %_argc1183, i64* %_argc1185
  %_argv1186 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1184, { i64, [0 x i8*] }** %_argv1186
  %_raw_array1187 = call i64* @oat_alloc_array(i64 2)
  %_array1188 = bitcast i64* %_raw_array1187 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1189 = call i64* @oat_alloc_array(i64 2)
  %_array1190 = bitcast i64* %_raw_array1189 to { i64, [0 x i64] }*
  %_ind1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1190, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1191
  %_ind1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1190, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1192
  %_raw_array1193 = call i64* @oat_alloc_array(i64 2)
  %_array1194 = bitcast i64* %_raw_array1193 to { i64, [0 x i64] }*
  %_ind1195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1194, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1195
  %_ind1196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1194, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1196
  %_ind1197 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1188, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1190, { i64, [0 x i64] }** %_ind1197
  %_ind1198 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1188, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1194, { i64, [0 x i64] }** %_ind1198
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1188, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local1200 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1201 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1200, i32 0, i32 1, i32 0
  %_elem1202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1201
  %_ptr1203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1202, i32 0, i32 1, i32 0
  %_elem1204 = load i64, i64* %_ptr1203
  %_fun_return1199 = bitcast i64 %_elem1204 to i64
  ret i64 %_fun_return1199
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
