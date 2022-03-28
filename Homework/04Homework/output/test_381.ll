; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @maxsum({ i64, [0 x i64] }* %_arr5073, i64 %_size5074) {
  %_arr5075 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr5073, { i64, [0 x i64] }** %_arr5075
  %_size5076 = alloca i64
  store i64 %_size5074, i64* %_size5076
  %_local5077 = load i64, i64* %_size5076
  %_raw_array5078 = call i64* @oat_alloc_array(i64 %_local5077)
  %_array5079 = bitcast i64* %_raw_array5078 to { i64, [0 x i64] }*
  %maxarr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5079, { i64, [0 x i64] }** %maxarr
  %maxs = alloca i64
  store i64 0, i64* %maxs
  %_local5080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5075
  %_ptr5081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5080, i32 0, i32 1, i32 0
  %_elem5082 = load i64, i64* %_ptr5081
  %_local5083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_ind_assign5084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5083, i32 0, i32 1, i32 0
  store i64 %_elem5082, i64* %_ind_assign5084
  %_i5085 = alloca i64
  store i64 0, i64* %_i5085
  br label %_while5152
_while5152:
  %_local5086 = load i64, i64* %_i5085
  %_local5087 = load i64, i64* %_size5076
  %_bop5088 = icmp slt i64 %_local5086, %_local5087
  br i1 %_bop5088, label %_do5153, label %_elihw5154
_do5153:
  %_j5089 = alloca i64
  store i64 0, i64* %_j5089
  br label %_while5134
_while5134:
  %_local5090 = load i64, i64* %_j5089
  %_local5091 = load i64, i64* %_i5085
  %_bop5092 = icmp slt i64 %_local5090, %_local5091
  br i1 %_bop5092, label %_do5135, label %_elihw5136
_do5135:
  %_local5093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5075
  %_local5094 = load i64, i64* %_i5085
  %_ptr5095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5093, i32 0, i32 1, i64 %_local5094
  %_elem5096 = load i64, i64* %_ptr5095
  %_local5097 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5075
  %_local5098 = load i64, i64* %_j5089
  %_ptr5099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5097, i32 0, i32 1, i64 %_local5098
  %_elem5100 = load i64, i64* %_ptr5099
  %_bop5101 = icmp sgt i64 %_elem5096, %_elem5100
  %_local5102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5103 = load i64, i64* %_i5085
  %_ptr5104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5102, i32 0, i32 1, i64 %_local5103
  %_elem5105 = load i64, i64* %_ptr5104
  %_local5106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5107 = load i64, i64* %_j5089
  %_ptr5108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5106, i32 0, i32 1, i64 %_local5107
  %_elem5109 = load i64, i64* %_ptr5108
  %_local5110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5075
  %_local5111 = load i64, i64* %_i5085
  %_ptr5112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5110, i32 0, i32 1, i64 %_local5111
  %_elem5113 = load i64, i64* %_ptr5112
  %_bop5114 = add i64 %_elem5109, %_elem5113
  %_bop5115 = icmp slt i64 %_elem5105, %_bop5114
  %_bop5116 = and i1 %_bop5101, %_bop5115
  br i1 %_bop5116, label %_if5129, label %_else5130
_if5129:
  %_local5117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5118 = load i64, i64* %_j5089
  %_ptr5119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5117, i32 0, i32 1, i64 %_local5118
  %_elem5120 = load i64, i64* %_ptr5119
  %_local5121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5075
  %_local5122 = load i64, i64* %_i5085
  %_ptr5123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5121, i32 0, i32 1, i64 %_local5122
  %_elem5124 = load i64, i64* %_ptr5123
  %_bop5125 = add i64 %_elem5120, %_elem5124
  %_local5126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5127 = load i64, i64* %_i5085
  %_ind_assign5128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5126, i32 0, i32 1, i64 %_local5127
  store i64 %_bop5125, i64* %_ind_assign5128
  br label %_fi5131
_else5130:
  br label %_fi5131
_fi5131:
  %_local5132 = load i64, i64* %_j5089
  %_bop5133 = add i64 %_local5132, 1
  store i64 %_bop5133, i64* %_j5089
  br label %_while5134
_elihw5136:
  %_local5137 = load i64, i64* %maxs
  %_local5138 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5139 = load i64, i64* %_i5085
  %_ptr5140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5138, i32 0, i32 1, i64 %_local5139
  %_elem5141 = load i64, i64* %_ptr5140
  %_bop5142 = icmp slt i64 %_local5137, %_elem5141
  br i1 %_bop5142, label %_if5147, label %_else5148
_if5147:
  %_local5143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5144 = load i64, i64* %_i5085
  %_ptr5145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5143, i32 0, i32 1, i64 %_local5144
  %_elem5146 = load i64, i64* %_ptr5145
  store i64 %_elem5146, i64* %maxs
  br label %_fi5149
_else5148:
  br label %_fi5149
_fi5149:
  %_local5150 = load i64, i64* %_i5085
  %_bop5151 = add i64 %_local5150, 1
  store i64 %_bop5151, i64* %_i5085
  br label %_while5152
_elihw5154:
  %_local5156 = load i64, i64* %maxs
  %_fun_return5155 = bitcast i64 %_local5156 to i64
  ret i64 %_fun_return5155
}

define i64 @program(i64 %_argc5056, { i64, [0 x i8*] }* %_argv5057) {
  %_argc5058 = alloca i64
  store i64 %_argc5056, i64* %_argc5058
  %_argv5059 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv5057, { i64, [0 x i8*] }** %_argv5059
  %_raw_array5060 = call i64* @oat_alloc_array(i64 7)
  %_array5061 = bitcast i64* %_raw_array5060 to { i64, [0 x i64] }*
  %_ind5062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5061, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5062
  %_ind5063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5061, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind5063
  %_ind5064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5061, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind5064
  %_ind5065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5061, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5065
  %_ind5066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5061, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind5066
  %_ind5067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5061, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind5067
  %_ind5068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5061, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind5068
  %array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5061, { i64, [0 x i64] }** %array
  %_local5069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_ret5070 = call i64 @_maxsum({ i64, [0 x i64] }* %_local5069, i64 7)
  %max_ans = alloca i64
  store i64 %_ret5070, i64* %max_ans
  %_local5072 = load i64, i64* %max_ans
  %_fun_return5071 = bitcast i64 %_local5072 to i64
  ret i64 %_fun_return5071
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
