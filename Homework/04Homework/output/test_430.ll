; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %_x1104) {
  %_x1105 = alloca i64
  store i64 %_x1104, i64* %_x1105
  %_local1107 = load i64, i64* %_x1105
  %_fun_return1106 = bitcast i64 %_local1107 to i64
  ret i64 %_fun_return1106
}

define i64 @g({ i64, [0 x i64] }* %_y1098) {
  %_y1099 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y1098, { i64, [0 x i64] }** %_y1099
  %_local1101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1099
  %_ptr1102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1101, i32 0, i32 1, i32 2
  %_elem1103 = load i64, i64* %_ptr1102
  %_fun_return1100 = bitcast i64 %_elem1103 to i64
  ret i64 %_fun_return1100
}

define i64 @program(i64 %_argc1045, { i64, [0 x i8*] }* %_argv1046) {
  %_argc1047 = alloca i64
  store i64 %_argc1045, i64* %_argc1047
  %_argv1048 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1046, { i64, [0 x i8*] }** %_argv1048
  %_raw_array1049 = call i64* @oat_alloc_array(i64 2)
  %_array1050 = bitcast i64* %_raw_array1049 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1051 = call i64* @oat_alloc_array(i64 2)
  %_array1052 = bitcast i64* %_raw_array1051 to { i64, [0 x i64] }*
  %_ind1053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1052, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1053
  %_ind1054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1052, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1054
  %_raw_array1055 = call i64* @oat_alloc_array(i64 2)
  %_array1056 = bitcast i64* %_raw_array1055 to { i64, [0 x i64] }*
  %_ind1057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1056, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1057
  %_ind1058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1056, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1058
  %_ind1059 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1050, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1052, { i64, [0 x i64] }** %_ind1059
  %_ind1060 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1050, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1056, { i64, [0 x i64] }** %_ind1060
  %garr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1050, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_raw_array1061 = call i64* @oat_alloc_array(i64 4)
  %_array1062 = bitcast i64* %_raw_array1061 to { i64, [0 x i64] }*
  %_ind1063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1063
  %_ind1064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1064
  %_ind1065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1065
  %_ind1066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind1066
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1062, { i64, [0 x i64] }** %arr
  %p = alloca i64
  store i64 0, i64* %p
  %_j1067 = alloca i64
  store i64 0, i64* %_j1067
  br label %_while1074
_while1074:
  %_local1068 = load i64, i64* %_j1067
  %_bop1069 = icmp slt i64 %_local1068, 100
  br i1 %_bop1069, label %_do1075, label %_elihw1076
_do1075:
  %_local1070 = load i64, i64* %p
  %_bop1071 = add i64 %_local1070, 1
  store i64 %_bop1071, i64* %p
  %_local1072 = load i64, i64* %_j1067
  %_bop1073 = add i64 %_local1072, 1
  store i64 %_bop1073, i64* %_j1067
  br label %_while1074
_elihw1076:
  %_local1078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ret1079 = call i64 @_g({ i64, [0 x i64] }* %_local1078)
  %_glob1080 = load i64, i64* @_i
  %_ret1081 = call i64 @_f(i64 %_glob1080)
  %_bop1082 = add i64 %_ret1079, %_ret1081
  %_local1083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr1084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local1083, i32 0, i32 1, i32 3
  %_elem1085 = load i64, i64* %_ptr1084
  %_ret1086 = call i64 @_f(i64 %_elem1085)
  %_bop1087 = add i64 %_bop1082, %_ret1086
  %_local1088 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_ptr1089 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1088, i32 0, i32 1, i32 1
  %_elem1090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1089
  %_ptr1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1090, i32 0, i32 1, i32 1
  %_elem1092 = load i64, i64* %_ptr1091
  %_ret1093 = call i64 @_f(i64 %_elem1092)
  %_bop1094 = add i64 %_bop1087, %_ret1093
  %_local1095 = load i64, i64* %p
  %_ret1096 = call i64 @_f(i64 %_local1095)
  %_bop1097 = add i64 %_bop1094, %_ret1096
  %_fun_return1077 = bitcast i64 %_bop1097 to i64
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
