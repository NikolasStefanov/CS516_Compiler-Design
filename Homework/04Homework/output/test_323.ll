; generated from: hw4programs/run1.oat
target triple = "x86_64-apple-macosx10.13.0"
@i = global i64 42

define i64 @f(i64 %_x982) {
  %_x983 = alloca i64
  store i64 %_x982, i64* %_x983
  %_local985 = load i64, i64* %_x983
  %_fun_return984 = bitcast i64 %_local985 to i64
  ret i64 %_fun_return984
}

define i64 @g({ i64, [0 x i64] }* %_y976) {
  %_y977 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y976, { i64, [0 x i64] }** %_y977
  %_local979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y977
  %_ptr980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local979, i32 0, i32 1, i32 2
  %_elem981 = load i64, i64* %_ptr980
  %_fun_return978 = bitcast i64 %_elem981 to i64
  ret i64 %_fun_return978
}

define i64 @program(i64 %_argc923, { i64, [0 x i8*] }* %_argv924) {
  %_argc925 = alloca i64
  store i64 %_argc923, i64* %_argc925
  %_argv926 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv924, { i64, [0 x i8*] }** %_argv926
  %_raw_array927 = call i64* @oat_alloc_array(i64 2)
  %_array928 = bitcast i64* %_raw_array927 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array929 = call i64* @oat_alloc_array(i64 2)
  %_array930 = bitcast i64* %_raw_array929 to { i64, [0 x i64] }*
  %_ind931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array930, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind931
  %_ind932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array930, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind932
  %_raw_array933 = call i64* @oat_alloc_array(i64 2)
  %_array934 = bitcast i64* %_raw_array933 to { i64, [0 x i64] }*
  %_ind935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array934, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind935
  %_ind936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array934, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind936
  %_ind937 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array928, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array930, { i64, [0 x i64] }** %_ind937
  %_ind938 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array928, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array934, { i64, [0 x i64] }** %_ind938
  %garr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array928, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_raw_array939 = call i64* @oat_alloc_array(i64 4)
  %_array940 = bitcast i64* %_raw_array939 to { i64, [0 x i64] }*
  %_ind941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind941
  %_ind942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind942
  %_ind943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind943
  %_ind944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind944
  %arr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array940, { i64, [0 x i64] }** %arr
  %p = alloca i64
  store i64 0, i64* %p
  %_j945 = alloca i64
  store i64 0, i64* %_j945
  br label %_while952
_while952:
  %_local946 = load i64, i64* %_j945
  %_bop947 = icmp slt i64 %_local946, 100
  br i1 %_bop947, label %_do953, label %_elihw954
_do953:
  %_local948 = load i64, i64* %p
  %_bop949 = add i64 %_local948, 1
  store i64 %_bop949, i64* %p
  %_local950 = load i64, i64* %_j945
  %_bop951 = add i64 %_local950, 1
  store i64 %_bop951, i64* %_j945
  br label %_while952
_elihw954:
  %_local956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ret957 = call i64 @_g({ i64, [0 x i64] }* %_local956)
  %_glob958 = load i64, i64* @_i
  %_ret959 = call i64 @_f(i64 %_glob958)
  %_bop960 = add i64 %_ret957, %_ret959
  %_local961 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_ptr962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local961, i32 0, i32 1, i32 3
  %_elem963 = load i64, i64* %_ptr962
  %_ret964 = call i64 @_f(i64 %_elem963)
  %_bop965 = add i64 %_bop960, %_ret964
  %_local966 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_ptr967 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local966, i32 0, i32 1, i32 1
  %_elem968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr967
  %_ptr969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem968, i32 0, i32 1, i32 1
  %_elem970 = load i64, i64* %_ptr969
  %_ret971 = call i64 @_f(i64 %_elem970)
  %_bop972 = add i64 %_bop965, %_ret971
  %_local973 = load i64, i64* %p
  %_ret974 = call i64 @_f(i64 %_local973)
  %_bop975 = add i64 %_bop972, %_ret974
  %_fun_return955 = bitcast i64 %_bop975 to i64
  ret i64 %_fun_return955
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
