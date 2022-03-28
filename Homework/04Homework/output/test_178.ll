; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc117, { i64, [0 x i8*] }* %_argv118) {
  %_argc119 = alloca i64
  store i64 %_argc117, i64* %_argc119
  %_argv120 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv118, { i64, [0 x i8*] }** %_argv120
  %_raw_array121 = call i64* @oat_alloc_array(i64 4)
  %_array122 = bitcast i64* %_raw_array121 to { i64, [0 x i64] }*
  %_ind123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array122, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind123
  %_ind124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array122, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind124
  %_ind125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array122, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind125
  %_ind126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array122, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind126
  %x = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array122, { i64, [0 x i64] }** %x
  %ans = alloca i64
  store i64 0, i64* %ans
  %_i127 = alloca i64
  store i64 0, i64* %_i127
  br label %_while142
_while142:
  %_local128 = load i64, i64* %_i127
  %_bop129 = icmp slt i64 %_local128, 4
  br i1 %_bop129, label %_do143, label %_elihw144
_do143:
  %_local130 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local131 = load i64, i64* %_i127
  %_ptr132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local130, i32 0, i32 1, i64 %_local131
  %_elem133 = load i64, i64* %_ptr132
  %_local134 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local135 = load i64, i64* %_i127
  %_ptr136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local134, i32 0, i32 1, i64 %_local135
  %_elem137 = load i64, i64* %_ptr136
  %_uop138 = xor i64 %_elem137, -1
  %_bop139 = mul i64 %_elem133, %_uop138
  store i64 %_bop139, i64* %ans
  %_local140 = load i64, i64* %_i127
  %_bop141 = add i64 %_local140, 1
  store i64 %_bop141, i64* %_i127
  br label %_while142
_elihw144:
  %_local146 = load i64, i64* %ans
  %_fun_return145 = bitcast i64 %_local146 to i64
  ret i64 %_fun_return145
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
