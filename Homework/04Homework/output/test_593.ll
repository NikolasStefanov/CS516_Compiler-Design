; generated from: hw4programs/lcs.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global5043 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_unused_global5043 to { i64, [0 x i64] }*)

define i8* @lcs(i64 %_i4960, i64 %_j4961, i8* %_a4962, i8* %_b4963) {
  %_i4964 = alloca i64
  store i64 %_i4960, i64* %_i4964
  %_j4965 = alloca i64
  store i64 %_j4961, i64* %_j4965
  %_a4966 = alloca i8*
  store i8* %_a4962, i8** %_a4966
  %_b4967 = alloca i8*
  store i8* %_b4963, i8** %_b4967
  %_local4968 = load i64, i64* %_i4964
  %_bop4969 = icmp slt i64 %_local4968, 0
  %_local4970 = load i64, i64* %_j4965
  %_bop4971 = icmp slt i64 %_local4970, 0
  %_bop4972 = or i1 %_bop4969, %_bop4971
  br i1 %_bop4972, label %_if4977, label %_else4978
_if4977:
  %_raw_array4975 = call i64* @oat_alloc_array(i64 0)
  %_array4976 = bitcast i64* %_raw_array4975 to { i64, [0 x i64] }*
  %_strr_arr4974 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4976)
  %_fun_return4973 = bitcast i8* %_strr_arr4974 to i8*
  ret i8* %_fun_return4973
_else4978:
  br label %_fi4979
_fi4979:
  %_local4980 = load i8*, i8** %_a4966
  %_ret4981 = call { i64, [0 x i64] }* @array_of_string(i8* %_local4980)
  %a_chars = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret4981, { i64, [0 x i64] }** %a_chars
  %_local4982 = load i8*, i8** %_b4967
  %_ret4983 = call { i64, [0 x i64] }* @array_of_string(i8* %_local4982)
  %b_chars = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret4983, { i64, [0 x i64] }** %b_chars
  %_local4984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a_chars
  %_local4985 = load i64, i64* %_i4964
  %_ptr4986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4984, i32 0, i32 1, i64 %_local4985
  %_elem4987 = load i64, i64* %_ptr4986
  %last_char_a = alloca i64
  store i64 %_elem4987, i64* %last_char_a
  %_local4988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b_chars
  %_local4989 = load i64, i64* %_j4965
  %_ptr4990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4988, i32 0, i32 1, i64 %_local4989
  %_elem4991 = load i64, i64* %_ptr4990
  %last_char_b = alloca i64
  store i64 %_elem4991, i64* %last_char_b
  %_local4992 = load i64, i64* %last_char_a
  %_local4993 = load i64, i64* %last_char_b
  %_bop4994 = icmp eq i64 %_local4992, %_local4993
  br i1 %_bop4994, label %_if5014, label %_else5015
_if5014:
  %_local4995 = load i64, i64* %_i4964
  %_bop4996 = sub i64 %_local4995, 1
  %_local4997 = load i64, i64* %_j4965
  %_bop4998 = sub i64 %_local4997, 1
  %_local4999 = load i8*, i8** %_a4966
  %_local5000 = load i8*, i8** %_b4967
  %_ret5001 = call i8* @_lcs(i64 %_bop4996, i64 %_bop4998, i8* %_local4999, i8* %_local5000)
  %prev_lcs = alloca i8*
  store i8* %_ret5001, i8** %prev_lcs
  %_local5002 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a_chars
  %_local5003 = load i64, i64* %_i4964
  %_ptr5004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5002, i32 0, i32 1, i64 %_local5003
  %_elem5005 = load i64, i64* %_ptr5004
  %_glob5006 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_buf
  %_ind_assign5007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_glob5006, i32 0, i32 1, i32 0
  store i64 %_elem5005, i64* %_ind_assign5007
  %_glob5008 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_buf
  %_ret5009 = call i8* @string_of_array({ i64, [0 x i64] }* %_glob5008)
  %next_char = alloca i8*
  store i8* %_ret5009, i8** %next_char
  %_local5011 = load i8*, i8** %prev_lcs
  %_local5012 = load i8*, i8** %next_char
  %_ret5013 = call i8* @string_cat(i8* %_local5011, i8* %_local5012)
  %_fun_return5010 = bitcast i8* %_ret5013 to i8*
  ret i8* %_fun_return5010
_else5015:
  br label %_fi5016
_fi5016:
  %_local5017 = load i64, i64* %_i4964
  %_local5018 = load i64, i64* %_j4965
  %_bop5019 = sub i64 %_local5018, 1
  %_local5020 = load i8*, i8** %_a4966
  %_local5021 = load i8*, i8** %_b4967
  %_ret5022 = call i8* @_lcs(i64 %_local5017, i64 %_bop5019, i8* %_local5020, i8* %_local5021)
  %left_lcs = alloca i8*
  store i8* %_ret5022, i8** %left_lcs
  %_local5023 = load i64, i64* %_i4964
  %_bop5024 = sub i64 %_local5023, 1
  %_local5025 = load i64, i64* %_j4965
  %_local5026 = load i8*, i8** %_a4966
  %_local5027 = load i8*, i8** %_b4967
  %_ret5028 = call i8* @_lcs(i64 %_bop5024, i64 %_local5025, i8* %_local5026, i8* %_local5027)
  %right_lcs = alloca i8*
  store i8* %_ret5028, i8** %right_lcs
  %_local5029 = load i8*, i8** %left_lcs
  %_ret5030 = call i64 @length_of_string(i8* %_local5029)
  %left_len = alloca i64
  store i64 %_ret5030, i64* %left_len
  %_local5031 = load i8*, i8** %right_lcs
  %_ret5032 = call i64 @length_of_string(i8* %_local5031)
  %right_len = alloca i64
  store i64 %_ret5032, i64* %right_len
  %_local5033 = load i64, i64* %left_len
  %_local5034 = load i64, i64* %right_len
  %_bop5035 = icmp slt i64 %_local5033, %_local5034
  br i1 %_bop5035, label %_if5040, label %_else5041
_if5040:
  %_local5037 = load i8*, i8** %right_lcs
  %_fun_return5036 = bitcast i8* %_local5037 to i8*
  ret i8* %_fun_return5036
_else5041:
  %_local5039 = load i8*, i8** %left_lcs
  %_fun_return5038 = bitcast i8* %_local5039 to i8*
  ret i8* %_fun_return5038
}

define i64 @program(i64 %_argc4933, { i64, [0 x i8*] }* %_argv4934) {
  %_argc4935 = alloca i64
  store i64 %_argc4933, i64* %_argc4935
  %_argv4936 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4934, { i64, [0 x i8*] }** %_argv4936
  %_raw_array4938 = call i64* @oat_alloc_array(i64 6)
  %_array4939 = bitcast i64* %_raw_array4938 to { i64, [0 x i64] }*
  %_ind4940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 0
  store i64 84, i64* %_ind4940
  %_ind4941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 1
  store i64 79, i64* %_ind4941
  %_ind4942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 2
  store i64 77, i64* %_ind4942
  %_ind4943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4943
  %_ind4944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 4
  store i64 84, i64* %_ind4944
  %_ind4945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4939, i32 0, i32 1, i32 5
  store i64 79, i64* %_ind4945
  %_strr_arr4937 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4939)
  %tomato = alloca i8*
  store i8* %_strr_arr4937, i8** %tomato
  %_raw_array4947 = call i64* @oat_alloc_array(i64 7)
  %_array4948 = bitcast i64* %_raw_array4947 to { i64, [0 x i64] }*
  %_ind4949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 0
  store i64 79, i64* %_ind4949
  %_ind4950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 1
  store i64 82, i64* %_ind4950
  %_ind4951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 2
  store i64 65, i64* %_ind4951
  %_ind4952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 3
  store i64 84, i64* %_ind4952
  %_ind4953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 4
  store i64 73, i64* %_ind4953
  %_ind4954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 5
  store i64 78, i64* %_ind4954
  %_ind4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4948, i32 0, i32 1, i32 6
  store i64 71, i64* %_ind4955
  %_strr_arr4946 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4948)
  %orating = alloca i8*
  store i8* %_strr_arr4946, i8** %orating
  %_local4956 = load i8*, i8** %tomato
  %_local4957 = load i8*, i8** %orating
  %_ret4958 = call i8* @_lcs(i64 5, i64 6, i8* %_local4956, i8* %_local4957)
  call void @print_string(i8* %_ret4958)
  %_fun_return4959 = bitcast i64 0 to i64
  ret i64 %_fun_return4959
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
