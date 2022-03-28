; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @maxsum({ i64, [0 x i64] }* %_arr5195, i64 %_size5196) {
  %_arr5197 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr5195, { i64, [0 x i64] }** %_arr5197
  %_size5198 = alloca i64
  store i64 %_size5196, i64* %_size5198
  %_local5199 = load i64, i64* %_size5198
  %_raw_array5200 = call i64* @oat_alloc_array(i64 %_local5199)
  %_array5201 = bitcast i64* %_raw_array5200 to { i64, [0 x i64] }*
  %maxarr = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5201, { i64, [0 x i64] }** %maxarr
  %maxs = alloca i64
  store i64 0, i64* %maxs
  %_local5202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5197
  %_ptr5203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5202, i32 0, i32 1, i32 0
  %_elem5204 = load i64, i64* %_ptr5203
  %_local5205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_ind_assign5206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5205, i32 0, i32 1, i32 0
  store i64 %_elem5204, i64* %_ind_assign5206
  %_i5207 = alloca i64
  store i64 0, i64* %_i5207
  br label %_while5274
_while5274:
  %_local5208 = load i64, i64* %_i5207
  %_local5209 = load i64, i64* %_size5198
  %_bop5210 = icmp slt i64 %_local5208, %_local5209
  br i1 %_bop5210, label %_do5275, label %_elihw5276
_do5275:
  %_j5211 = alloca i64
  store i64 0, i64* %_j5211
  br label %_while5256
_while5256:
  %_local5212 = load i64, i64* %_j5211
  %_local5213 = load i64, i64* %_i5207
  %_bop5214 = icmp slt i64 %_local5212, %_local5213
  br i1 %_bop5214, label %_do5257, label %_elihw5258
_do5257:
  %_local5215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5197
  %_local5216 = load i64, i64* %_i5207
  %_ptr5217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5215, i32 0, i32 1, i64 %_local5216
  %_elem5218 = load i64, i64* %_ptr5217
  %_local5219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5197
  %_local5220 = load i64, i64* %_j5211
  %_ptr5221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5219, i32 0, i32 1, i64 %_local5220
  %_elem5222 = load i64, i64* %_ptr5221
  %_bop5223 = icmp sgt i64 %_elem5218, %_elem5222
  %_local5224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5225 = load i64, i64* %_i5207
  %_ptr5226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5224, i32 0, i32 1, i64 %_local5225
  %_elem5227 = load i64, i64* %_ptr5226
  %_local5228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5229 = load i64, i64* %_j5211
  %_ptr5230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5228, i32 0, i32 1, i64 %_local5229
  %_elem5231 = load i64, i64* %_ptr5230
  %_local5232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5197
  %_local5233 = load i64, i64* %_i5207
  %_ptr5234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5232, i32 0, i32 1, i64 %_local5233
  %_elem5235 = load i64, i64* %_ptr5234
  %_bop5236 = add i64 %_elem5231, %_elem5235
  %_bop5237 = icmp slt i64 %_elem5227, %_bop5236
  %_bop5238 = and i1 %_bop5223, %_bop5237
  br i1 %_bop5238, label %_if5251, label %_else5252
_if5251:
  %_local5239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5240 = load i64, i64* %_j5211
  %_ptr5241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5239, i32 0, i32 1, i64 %_local5240
  %_elem5242 = load i64, i64* %_ptr5241
  %_local5243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5197
  %_local5244 = load i64, i64* %_i5207
  %_ptr5245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5243, i32 0, i32 1, i64 %_local5244
  %_elem5246 = load i64, i64* %_ptr5245
  %_bop5247 = add i64 %_elem5242, %_elem5246
  %_local5248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5249 = load i64, i64* %_i5207
  %_ind_assign5250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5248, i32 0, i32 1, i64 %_local5249
  store i64 %_bop5247, i64* %_ind_assign5250
  br label %_fi5253
_else5252:
  br label %_fi5253
_fi5253:
  %_local5254 = load i64, i64* %_j5211
  %_bop5255 = add i64 %_local5254, 1
  store i64 %_bop5255, i64* %_j5211
  br label %_while5256
_elihw5258:
  %_local5259 = load i64, i64* %maxs
  %_local5260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5261 = load i64, i64* %_i5207
  %_ptr5262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5260, i32 0, i32 1, i64 %_local5261
  %_elem5263 = load i64, i64* %_ptr5262
  %_bop5264 = icmp slt i64 %_local5259, %_elem5263
  br i1 %_bop5264, label %_if5269, label %_else5270
_if5269:
  %_local5265 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_local5266 = load i64, i64* %_i5207
  %_ptr5267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local5265, i32 0, i32 1, i64 %_local5266
  %_elem5268 = load i64, i64* %_ptr5267
  store i64 %_elem5268, i64* %maxs
  br label %_fi5271
_else5270:
  br label %_fi5271
_fi5271:
  %_local5272 = load i64, i64* %_i5207
  %_bop5273 = add i64 %_local5272, 1
  store i64 %_bop5273, i64* %_i5207
  br label %_while5274
_elihw5276:
  %_local5278 = load i64, i64* %maxs
  %_fun_return5277 = bitcast i64 %_local5278 to i64
  ret i64 %_fun_return5277
}

define i64 @program(i64 %_argc5178, { i64, [0 x i8*] }* %_argv5179) {
  %_argc5180 = alloca i64
  store i64 %_argc5178, i64* %_argc5180
  %_argv5181 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv5179, { i64, [0 x i8*] }** %_argv5181
  %_raw_array5182 = call i64* @oat_alloc_array(i64 7)
  %_array5183 = bitcast i64* %_raw_array5182 to { i64, [0 x i64] }*
  %_ind5184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5183, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5184
  %_ind5185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5183, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind5185
  %_ind5186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5183, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind5186
  %_ind5187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5183, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5187
  %_ind5188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5183, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind5188
  %_ind5189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5183, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind5189
  %_ind5190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5183, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind5190
  %array = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5183, { i64, [0 x i64] }** %array
  %_local5191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_ret5192 = call i64 @_maxsum({ i64, [0 x i64] }* %_local5191, i64 7)
  %max_ans = alloca i64
  store i64 %_ret5192, i64* %max_ans
  %_local5194 = load i64, i64* %max_ans
  %_fun_return5193 = bitcast i64 %_local5194 to i64
  ret i64 %_fun_return5193
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
