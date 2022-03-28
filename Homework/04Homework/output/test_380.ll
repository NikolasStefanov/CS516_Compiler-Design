; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial4970, i64 %_len4971, i64 %_insertee4972) {
  %_partial4973 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_partial4970, { i64, [0 x i64] }** %_partial4973
  %_len4974 = alloca i64
  store i64 %_len4971, i64* %_len4974
  %_insertee4975 = alloca i64
  store i64 %_insertee4972, i64* %_insertee4975
  %_local4976 = load i64, i64* %_len4974
  %_bop4977 = add i64 %_local4976, 1
  %_raw_array4978 = call i64* @oat_alloc_array(i64 %_bop4977)
  %_array4979 = bitcast i64* %_raw_array4978 to { i64, [0 x i64] }*
  %inserted = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4979, { i64, [0 x i64] }** %inserted
  %_i4980 = alloca i64
  store i64 0, i64* %_i4980
  br label %_while4991
_while4991:
  %_local4981 = load i64, i64* %_i4980
  %_local4982 = load i64, i64* %_len4974
  %_bop4983 = add i64 %_local4982, 1
  %_bop4984 = icmp slt i64 %_local4981, %_bop4983
  br i1 %_bop4984, label %_do4992, label %_elihw4993
_do4992:
  %_uop4985 = mul i64 1, -1
  %_local4986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local4987 = load i64, i64* %_i4980
  %_ind_assign4988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4986, i32 0, i32 1, i64 %_local4987
  store i64 %_uop4985, i64* %_ind_assign4988
  %_local4989 = load i64, i64* %_i4980
  %_bop4990 = add i64 %_local4989, 1
  store i64 %_bop4990, i64* %_i4980
  br label %_while4991
_elihw4993:
  %not_yet_inserted = alloca i1
  store i1 1, i1* %not_yet_inserted
  %_local4994 = load i64, i64* %_insertee4975
  %_local4995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4973
  %_ptr4996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4995, i32 0, i32 1, i32 0
  %_elem4997 = load i64, i64* %_ptr4996
  %_bop4998 = icmp slt i64 %_local4994, %_elem4997
  br i1 %_bop4998, label %_if5002, label %_else5003
_if5002:
  store i1 0, i1* %not_yet_inserted
  %_local4999 = load i64, i64* %_insertee4975
  %_local5000 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_ind_assign5001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5000, i32 0, i32 1, i32 0
  store i64 %_local4999, i64* %_ind_assign5001
  br label %_fi5004
_else5003:
  br label %_fi5004
_fi5004:
  %_i5005 = alloca i64
  store i64 0, i64* %_i5005
  br label %_while5051
_while5051:
  %_local5006 = load i64, i64* %_i5005
  %_local5007 = load i64, i64* %_len4974
  %_bop5008 = icmp slt i64 %_local5006, %_local5007
  br i1 %_bop5008, label %_do5052, label %_elihw5053
_do5052:
  %_local5009 = load i1, i1* %not_yet_inserted
  br i1 %_local5009, label %_if5046, label %_else5047
_if5046:
  %_local5010 = load i64, i64* %_insertee4975
  %_local5011 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4973
  %_local5012 = load i64, i64* %_i5005
  %_ptr5013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5011, i32 0, i32 1, i64 %_local5012
  %_elem5014 = load i64, i64* %_ptr5013
  %_bop5015 = icmp sgt i64 %_local5010, %_elem5014
  br i1 %_bop5015, label %_if5035, label %_else5036
_if5035:
  store i1 0, i1* %not_yet_inserted
  %_local5016 = load i64, i64* %_insertee4975
  %_local5017 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5018 = load i64, i64* %_i5005
  %_bop5019 = add i64 %_local5018, 1
  %_ind_assign5020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5017, i32 0, i32 1, i64 %_bop5019
  store i64 %_local5016, i64* %_ind_assign5020
  %_local5021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4973
  %_local5022 = load i64, i64* %_i5005
  %_ptr5023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5021, i32 0, i32 1, i64 %_local5022
  %_elem5024 = load i64, i64* %_ptr5023
  %_local5025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5026 = load i64, i64* %_i5005
  %_ind_assign5027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5025, i32 0, i32 1, i64 %_local5026
  store i64 %_elem5024, i64* %_ind_assign5027
  br label %_fi5037
_else5036:
  %_local5028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4973
  %_local5029 = load i64, i64* %_i5005
  %_ptr5030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5028, i32 0, i32 1, i64 %_local5029
  %_elem5031 = load i64, i64* %_ptr5030
  %_local5032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5033 = load i64, i64* %_i5005
  %_ind_assign5034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5032, i32 0, i32 1, i64 %_local5033
  store i64 %_elem5031, i64* %_ind_assign5034
  br label %_fi5037
_fi5037:
  br label %_fi5048
_else5047:
  %_local5038 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4973
  %_local5039 = load i64, i64* %_i5005
  %_ptr5040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5038, i32 0, i32 1, i64 %_local5039
  %_elem5041 = load i64, i64* %_ptr5040
  %_local5042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5043 = load i64, i64* %_i5005
  %_bop5044 = add i64 %_local5043, 1
  %_ind_assign5045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5042, i32 0, i32 1, i64 %_bop5044
  store i64 %_elem5041, i64* %_ind_assign5045
  br label %_fi5048
_fi5048:
  %_local5049 = load i64, i64* %_i5005
  %_bop5050 = add i64 %_local5049, 1
  store i64 %_bop5050, i64* %_i5005
  br label %_while5051
_elihw5053:
  %_local5055 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_fun_return5054 = bitcast { i64, [0 x i64] }* %_local5055 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return5054
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted4940, i64 %_len4941) {
  %_unsorted4942 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_unsorted4940, { i64, [0 x i64] }** %_unsorted4942
  %_len4943 = alloca i64
  store i64 %_len4941, i64* %_len4943
  %_raw_array4944 = call i64* @oat_alloc_array(i64 1)
  %_array4945 = bitcast i64* %_raw_array4944 to { i64, [0 x i64] }*
  %_ind4946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4945, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4946
  %out = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4945, { i64, [0 x i64] }** %out
  %_local4947 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4942
  %_ptr4948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4947, i32 0, i32 1, i32 0
  %_elem4949 = load i64, i64* %_ptr4948
  %_local4950 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_ind_assign4951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4950, i32 0, i32 1, i32 0
  store i64 %_elem4949, i64* %_ind_assign4951
  %_i4952 = alloca i64
  store i64 1, i64* %_i4952
  br label %_while4965
_while4965:
  %_local4953 = load i64, i64* %_i4952
  %_local4954 = load i64, i64* %_len4943
  %_bop4955 = icmp slt i64 %_local4953, %_local4954
  br i1 %_bop4955, label %_do4966, label %_elihw4967
_do4966:
  %_local4956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_local4957 = load i64, i64* %_i4952
  %_local4958 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4942
  %_local4959 = load i64, i64* %_i4952
  %_ptr4960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4958, i32 0, i32 1, i64 %_local4959
  %_elem4961 = load i64, i64* %_ptr4960
  %_ret4962 = call { i64, [0 x i64] }* @_insert({ i64, [0 x i64] }* %_local4956, i64 %_local4957, i64 %_elem4961)
  store { i64, [0 x i64] }* %_ret4962, { i64, [0 x i64] }** %out
  %_local4963 = load i64, i64* %_i4952
  %_bop4964 = add i64 %_local4963, 1
  store i64 %_bop4964, i64* %_i4952
  br label %_while4965
_elihw4967:
  %_local4969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_fun_return4968 = bitcast { i64, [0 x i64] }* %_local4969 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return4968
}

define i64 @program(i64 %_argc4922, { i64, [0 x i8*] }* %_argv4923) {
  %_argc4924 = alloca i64
  store i64 %_argc4922, i64* %_argc4924
  %_argv4925 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4923, { i64, [0 x i8*] }** %_argv4925
  %_raw_array4926 = call i64* @oat_alloc_array(i64 6)
  %_array4927 = bitcast i64* %_raw_array4926 to { i64, [0 x i64] }*
  %_ind4928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4927, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind4928
  %_ind4929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4927, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind4929
  %_ind4930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4927, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind4930
  %_ind4931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4927, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind4931
  %_ind4932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4927, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind4932
  %_ind4933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4927, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind4933
  %array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4927, { i64, [0 x i64] }** %array
  %_local4934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_ret4935 = call { i64, [0 x i64] }* @_insort({ i64, [0 x i64] }* %_local4934, i64 6)
  %result = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret4935, { i64, [0 x i64] }** %result
  %_local4937 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %result
  %_ptr4938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4937, i32 0, i32 1, i32 5
  %_elem4939 = load i64, i64* %_ptr4938
  %_fun_return4936 = bitcast i64 %_elem4939 to i64
  ret i64 %_fun_return4936
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
