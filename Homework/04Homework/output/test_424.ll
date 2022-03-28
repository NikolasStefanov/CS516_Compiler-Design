; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc915, { i64, [0 x i8*] }* %_argv916) {
  %_argc917 = alloca i64
  store i64 %_argc915, i64* %_argc917
  %_argv918 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv916, { i64, [0 x i8*] }** %_argv918
  %_raw_array919 = call i64* @oat_alloc_array(i64 3)
  %_array920 = bitcast i64* %_raw_array919 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array921 = call i64* @oat_alloc_array(i64 1)
  %_array922 = bitcast i64* %_raw_array921 to { i64, [0 x i64] }*
  %_raw_array923 = call i64* @oat_alloc_array(i64 1)
  %_array924 = bitcast i64* %_raw_array923 to { i64, [0 x i64] }*
  %_raw_array925 = call i64* @oat_alloc_array(i64 1)
  %_array926 = bitcast i64* %_raw_array925 to { i64, [0 x i64] }*
  %_ind927 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array920, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array922, { i64, [0 x i64] }** %_ind927
  %_ind928 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array920, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array924, { i64, [0 x i64] }** %_ind928
  %_ind929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array920, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array926, { i64, [0 x i64] }** %_ind929
  %a1 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array920, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_raw_array930 = call i64* @oat_alloc_array(i64 3)
  %_array931 = bitcast i64* %_raw_array930 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array932 = call i64* @oat_alloc_array(i64 1)
  %_array933 = bitcast i64* %_raw_array932 to { i64, [0 x i64] }*
  %_raw_array934 = call i64* @oat_alloc_array(i64 1)
  %_array935 = bitcast i64* %_raw_array934 to { i64, [0 x i64] }*
  %_raw_array936 = call i64* @oat_alloc_array(i64 1)
  %_array937 = bitcast i64* %_raw_array936 to { i64, [0 x i64] }*
  %_ind938 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array931, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array933, { i64, [0 x i64] }** %_ind938
  %_ind939 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array931, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array935, { i64, [0 x i64] }** %_ind939
  %_ind940 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array931, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array937, { i64, [0 x i64] }** %_ind940
  %a2 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array931, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_raw_array941 = call i64* @oat_alloc_array(i64 3)
  %_array942 = bitcast i64* %_raw_array941 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array943 = call i64* @oat_alloc_array(i64 1)
  %_array944 = bitcast i64* %_raw_array943 to { i64, [0 x i64] }*
  %_raw_array945 = call i64* @oat_alloc_array(i64 1)
  %_array946 = bitcast i64* %_raw_array945 to { i64, [0 x i64] }*
  %_raw_array947 = call i64* @oat_alloc_array(i64 1)
  %_array948 = bitcast i64* %_raw_array947 to { i64, [0 x i64] }*
  %_ind949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array942, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array944, { i64, [0 x i64] }** %_ind949
  %_ind950 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array942, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array946, { i64, [0 x i64] }** %_ind950
  %_ind951 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array942, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array948, { i64, [0 x i64] }** %_ind951
  %a3 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array942, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_raw_array952 = call i64* @oat_alloc_array(i64 3)
  %_array953 = bitcast i64* %_raw_array952 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array954 = call i64* @oat_alloc_array(i64 1)
  %_array955 = bitcast i64* %_raw_array954 to { i64, [0 x i64] }*
  %_raw_array956 = call i64* @oat_alloc_array(i64 1)
  %_array957 = bitcast i64* %_raw_array956 to { i64, [0 x i64] }*
  %_raw_array958 = call i64* @oat_alloc_array(i64 1)
  %_array959 = bitcast i64* %_raw_array958 to { i64, [0 x i64] }*
  %_ind960 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array953, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array955, { i64, [0 x i64] }** %_ind960
  %_ind961 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array953, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array957, { i64, [0 x i64] }** %_ind961
  %_ind962 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array953, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array959, { i64, [0 x i64] }** %_ind962
  %a4 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array953, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_raw_array963 = call i64* @oat_alloc_array(i64 3)
  %_array964 = bitcast i64* %_raw_array963 to { i64, [0 x i64] }*
  %_ind965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array964, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind965
  %_ind966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array964, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind966
  %_ind967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array964, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind967
  %a5 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array964, { i64, [0 x i64] }** %a5
  %_local968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a5
  %_local969 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_ind_assign970 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local969, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_local968, { i64, [0 x i64] }** %_ind_assign970
  %_local971 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_ptr972 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local971, i32 0, i32 1, i32 0
  %_elem973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr972
  %_ind_assign974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem973, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind_assign974
  %_local975 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local975, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_local976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local976, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_local977 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local977, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_local978 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local978, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_local979 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local979, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_local980 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local980, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_local982 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_ptr983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local982, i32 0, i32 1, i32 0
  %_elem984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr983
  %_ptr985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem984, i32 0, i32 1, i32 0
  %_elem986 = load i64, i64* %_ptr985
  %_fun_return981 = bitcast i64 %_elem986 to i64
  ret i64 %_fun_return981
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
