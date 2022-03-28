; generated from: hw4programs/run6.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1061, { i64, [0 x i8*] }* %_argv1062) {
  %_argc1063 = alloca i64
  store i64 %_argc1061, i64* %_argc1063
  %_argv1064 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1062, { i64, [0 x i8*] }** %_argv1064
  %_raw_array1065 = call i64* @oat_alloc_array(i64 2)
  %_array1066 = bitcast i64* %_raw_array1065 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1067 = call i64* @oat_alloc_array(i64 2)
  %_array1068 = bitcast i64* %_raw_array1067 to { i64, [0 x i64] }*
  %_ind1069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1068, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1069
  %_ind1070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1068, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1070
  %_raw_array1071 = call i64* @oat_alloc_array(i64 2)
  %_array1072 = bitcast i64* %_raw_array1071 to { i64, [0 x i64] }*
  %_ind1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1073
  %_ind1074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1074
  %_ind1075 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1066, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1068, { i64, [0 x i64] }** %_ind1075
  %_ind1076 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1066, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1072, { i64, [0 x i64] }** %_ind1076
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1066, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_local1078 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_ptr1079 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1078, i32 0, i32 1, i32 0
  %_elem1080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1079
  %_ptr1081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1080, i32 0, i32 1, i32 0
  %_elem1082 = load i64, i64* %_ptr1081
  %_fun_return1077 = bitcast i64 %_elem1082 to i64
  ret i64 %_fun_return1077
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
