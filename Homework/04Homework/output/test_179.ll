; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc147, { i64, [0 x i8*] }* %_argv148) {
  %_argc149 = alloca i64
  store i64 %_argc147, i64* %_argc149
  %_argv150 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv148, { i64, [0 x i8*] }** %_argv150
  %_raw_array151 = call i64* @oat_alloc_array(i64 4)
  %_array152 = bitcast i64* %_raw_array151 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array153 = call i64* @oat_alloc_array(i64 1)
  %_array154 = bitcast i64* %_raw_array153 to { i64, [0 x i64] }*
  %_ind155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array154, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind155
  %_raw_array156 = call i64* @oat_alloc_array(i64 1)
  %_array157 = bitcast i64* %_raw_array156 to { i64, [0 x i64] }*
  %_ind158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array157, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind158
  %_raw_array159 = call i64* @oat_alloc_array(i64 1)
  %_array160 = bitcast i64* %_raw_array159 to { i64, [0 x i64] }*
  %_ind161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array160, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind161
  %_raw_array162 = call i64* @oat_alloc_array(i64 1)
  %_array163 = bitcast i64* %_raw_array162 to { i64, [0 x i64] }*
  %_ind164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array163, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind164
  %_ind165 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array152, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array154, { i64, [0 x i64] }** %_ind165
  %_ind166 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array152, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array157, { i64, [0 x i64] }** %_ind166
  %_ind167 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array152, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array160, { i64, [0 x i64] }** %_ind167
  %_ind168 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array152, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array163, { i64, [0 x i64] }** %_ind168
  %x = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array152, { i64, [0 x { i64, [0 x i64] }*] }** %x
  %ans = alloca i64
  store i64 0, i64* %ans
  %_i169 = alloca i64
  store i64 0, i64* %_i169
  br label %_while182
_while182:
  %_local170 = load i64, i64* %_i169
  %_bop171 = icmp slt i64 %_local170, 4
  br i1 %_bop171, label %_do183, label %_elihw184
_do183:
  %_local172 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %x
  %_local173 = load i64, i64* %_i169
  %_ptr174 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local172, i32 0, i32 1, i64 %_local173
  %_elem175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr174
  %_ptr176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem175, i32 0, i32 1, i32 0
  %_elem177 = load i64, i64* %_ptr176
  %_local178 = load i64, i64* %ans
  %_bop179 = sub i64 %_elem177, %_local178
  store i64 %_bop179, i64* %ans
  %_local180 = load i64, i64* %_i169
  %_bop181 = add i64 %_local180, 1
  store i64 %_bop181, i64* %_i169
  br label %_while182
_elihw184:
  %_uop185 = xor i64 5, -1
  %_bop186 = and i64 5, %_uop185
  %_bop187 = or i64 %_bop186, 0
  %_bop188 = icmp ne i64 %_bop187, 0
  br i1 %_bop188, label %_if194, label %_else195
_if194:
  %_local190 = load i64, i64* %ans
  %_fun_return189 = bitcast i64 %_local190 to i64
  ret i64 %_fun_return189
_else195:
  %_local192 = load i64, i64* %ans
  %_uop193 = mul i64 %_local192, -1
  %_fun_return191 = bitcast i64 %_uop193 to i64
  ret i64 %_fun_return191
_fi196:
  %_local198 = load i64, i64* %ans
  %_fun_return197 = bitcast i64 %_local198 to i64
  ret i64 %_fun_return197
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
