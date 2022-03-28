; generated from: hw4programs/insertion_sort.oat
target triple = "x86_64-apple-macosx10.13.0"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial5092, i64 %_len5093, i64 %_insertee5094) {
  %_partial5095 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_partial5092, { i64, [0 x i64] }** %_partial5095
  %_len5096 = alloca i64
  store i64 %_len5093, i64* %_len5096
  %_insertee5097 = alloca i64
  store i64 %_insertee5094, i64* %_insertee5097
  %_local5098 = load i64, i64* %_len5096
  %_bop5099 = add i64 %_local5098, 1
  %_raw_array5100 = call i64* @oat_alloc_array(i64 %_bop5099)
  %_array5101 = bitcast i64* %_raw_array5100 to { i64, [0 x i64] }*
  %inserted = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5101, { i64, [0 x i64] }** %inserted
  %_i5102 = alloca i64
  store i64 0, i64* %_i5102
  br label %_while5113
_while5113:
  %_local5103 = load i64, i64* %_i5102
  %_local5104 = load i64, i64* %_len5096
  %_bop5105 = add i64 %_local5104, 1
  %_bop5106 = icmp slt i64 %_local5103, %_bop5105
  br i1 %_bop5106, label %_do5114, label %_elihw5115
_do5114:
  %_uop5107 = mul i64 1, -1
  %_local5108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5109 = load i64, i64* %_i5102
  %_ind_assign5110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5108, i32 0, i32 1, i64 %_local5109
  store i64 %_uop5107, i64* %_ind_assign5110
  %_local5111 = load i64, i64* %_i5102
  %_bop5112 = add i64 %_local5111, 1
  store i64 %_bop5112, i64* %_i5102
  br label %_while5113
_elihw5115:
  %not_yet_inserted = alloca i1
  store i1 1, i1* %not_yet_inserted
  %_local5116 = load i64, i64* %_insertee5097
  %_local5117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5095
  %_ptr5118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5117, i32 0, i32 1, i32 0
  %_elem5119 = load i64, i64* %_ptr5118
  %_bop5120 = icmp slt i64 %_local5116, %_elem5119
  br i1 %_bop5120, label %_if5124, label %_else5125
_if5124:
  store i1 0, i1* %not_yet_inserted
  %_local5121 = load i64, i64* %_insertee5097
  %_local5122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_ind_assign5123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5122, i32 0, i32 1, i32 0
  store i64 %_local5121, i64* %_ind_assign5123
  br label %_fi5126
_else5125:
  br label %_fi5126
_fi5126:
  %_i5127 = alloca i64
  store i64 0, i64* %_i5127
  br label %_while5173
_while5173:
  %_local5128 = load i64, i64* %_i5127
  %_local5129 = load i64, i64* %_len5096
  %_bop5130 = icmp slt i64 %_local5128, %_local5129
  br i1 %_bop5130, label %_do5174, label %_elihw5175
_do5174:
  %_local5131 = load i1, i1* %not_yet_inserted
  br i1 %_local5131, label %_if5168, label %_else5169
_if5168:
  %_local5132 = load i64, i64* %_insertee5097
  %_local5133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5095
  %_local5134 = load i64, i64* %_i5127
  %_ptr5135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5133, i32 0, i32 1, i64 %_local5134
  %_elem5136 = load i64, i64* %_ptr5135
  %_bop5137 = icmp sgt i64 %_local5132, %_elem5136
  br i1 %_bop5137, label %_if5157, label %_else5158
_if5157:
  store i1 0, i1* %not_yet_inserted
  %_local5138 = load i64, i64* %_insertee5097
  %_local5139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5140 = load i64, i64* %_i5127
  %_bop5141 = add i64 %_local5140, 1
  %_ind_assign5142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5139, i32 0, i32 1, i64 %_bop5141
  store i64 %_local5138, i64* %_ind_assign5142
  %_local5143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5095
  %_local5144 = load i64, i64* %_i5127
  %_ptr5145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5143, i32 0, i32 1, i64 %_local5144
  %_elem5146 = load i64, i64* %_ptr5145
  %_local5147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5148 = load i64, i64* %_i5127
  %_ind_assign5149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5147, i32 0, i32 1, i64 %_local5148
  store i64 %_elem5146, i64* %_ind_assign5149
  br label %_fi5159
_else5158:
  %_local5150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5095
  %_local5151 = load i64, i64* %_i5127
  %_ptr5152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5150, i32 0, i32 1, i64 %_local5151
  %_elem5153 = load i64, i64* %_ptr5152
  %_local5154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5155 = load i64, i64* %_i5127
  %_ind_assign5156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5154, i32 0, i32 1, i64 %_local5155
  store i64 %_elem5153, i64* %_ind_assign5156
  br label %_fi5159
_fi5159:
  br label %_fi5170
_else5169:
  %_local5160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5095
  %_local5161 = load i64, i64* %_i5127
  %_ptr5162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5160, i32 0, i32 1, i64 %_local5161
  %_elem5163 = load i64, i64* %_ptr5162
  %_local5164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_local5165 = load i64, i64* %_i5127
  %_bop5166 = add i64 %_local5165, 1
  %_ind_assign5167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5164, i32 0, i32 1, i64 %_bop5166
  store i64 %_elem5163, i64* %_ind_assign5167
  br label %_fi5170
_fi5170:
  %_local5171 = load i64, i64* %_i5127
  %_bop5172 = add i64 %_local5171, 1
  store i64 %_bop5172, i64* %_i5127
  br label %_while5173
_elihw5175:
  %_local5177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_fun_return5176 = bitcast { i64, [0 x i64] }* %_local5177 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return5176
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted5062, i64 %_len5063) {
  %_unsorted5064 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_unsorted5062, { i64, [0 x i64] }** %_unsorted5064
  %_len5065 = alloca i64
  store i64 %_len5063, i64* %_len5065
  %_raw_array5066 = call i64* @oat_alloc_array(i64 1)
  %_array5067 = bitcast i64* %_raw_array5066 to { i64, [0 x i64] }*
  %_ind5068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5067, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5068
  %out = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5067, { i64, [0 x i64] }** %out
  %_local5069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5064
  %_ptr5070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5069, i32 0, i32 1, i32 0
  %_elem5071 = load i64, i64* %_ptr5070
  %_local5072 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_ind_assign5073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5072, i32 0, i32 1, i32 0
  store i64 %_elem5071, i64* %_ind_assign5073
  %_i5074 = alloca i64
  store i64 1, i64* %_i5074
  br label %_while5087
_while5087:
  %_local5075 = load i64, i64* %_i5074
  %_local5076 = load i64, i64* %_len5065
  %_bop5077 = icmp slt i64 %_local5075, %_local5076
  br i1 %_bop5077, label %_do5088, label %_elihw5089
_do5088:
  %_local5078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_local5079 = load i64, i64* %_i5074
  %_local5080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5064
  %_local5081 = load i64, i64* %_i5074
  %_ptr5082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5080, i32 0, i32 1, i64 %_local5081
  %_elem5083 = load i64, i64* %_ptr5082
  %_ret5084 = call { i64, [0 x i64] }* @_insert({ i64, [0 x i64] }* %_local5078, i64 %_local5079, i64 %_elem5083)
  store { i64, [0 x i64] }* %_ret5084, { i64, [0 x i64] }** %out
  %_local5085 = load i64, i64* %_i5074
  %_bop5086 = add i64 %_local5085, 1
  store i64 %_bop5086, i64* %_i5074
  br label %_while5087
_elihw5089:
  %_local5091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_fun_return5090 = bitcast { i64, [0 x i64] }* %_local5091 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_fun_return5090
}

define i64 @program(i64 %_argc5044, { i64, [0 x i8*] }* %_argv5045) {
  %_argc5046 = alloca i64
  store i64 %_argc5044, i64* %_argc5046
  %_argv5047 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv5045, { i64, [0 x i8*] }** %_argv5047
  %_raw_array5048 = call i64* @oat_alloc_array(i64 6)
  %_array5049 = bitcast i64* %_raw_array5048 to { i64, [0 x i64] }*
  %_ind5050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5049, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind5050
  %_ind5051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5049, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind5051
  %_ind5052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5049, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind5052
  %_ind5053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5049, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5053
  %_ind5054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5049, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind5054
  %_ind5055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5049, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind5055
  %array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5049, { i64, [0 x i64] }** %array
  %_local5056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_ret5057 = call { i64, [0 x i64] }* @_insort({ i64, [0 x i64] }* %_local5056, i64 6)
  %result = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret5057, { i64, [0 x i64] }** %result
  %_local5059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %result
  %_ptr5060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5059, i32 0, i32 1, i32 5
  %_elem5061 = load i64, i64* %_ptr5060
  %_fun_return5058 = bitcast i64 %_elem5061 to i64
  ret i64 %_fun_return5058
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
