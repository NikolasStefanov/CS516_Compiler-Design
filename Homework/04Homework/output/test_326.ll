; generated from: hw4programs/run4.oat
target triple = "x86_64-apple-macosx10.13.0"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %_argc1027, { i64, [0 x i8*] }* %_argv1028) {
  %_argc1029 = alloca i64
  store i64 %_argc1027, i64* %_argc1029
  %_argv1030 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1028, { i64, [0 x i8*] }** %_argv1030
  %_raw_array1031 = call i64* @oat_alloc_array(i64 2)
  %_array1032 = bitcast i64* %_raw_array1031 to { i64, [0 x i64] }*
  %_ind1033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1032, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind1033
  %_ind1034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1032, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind1034
  store { i64, [0 x i64] }* %_array1032, { i64, [0 x i64] }** @_arr
  %_glob1036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_arr
  %_ptr1037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_glob1036, i32 0, i32 1, i32 1
  %_elem1038 = load i64, i64* %_ptr1037
  %_fun_return1035 = bitcast i64 %_elem1038 to i64
  ret i64 %_fun_return1035
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
