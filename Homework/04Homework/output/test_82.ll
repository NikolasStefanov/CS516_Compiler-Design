; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc114, { i64, [0 x i8*] }* %_argv115) {
  %argc = alloca i64
  store i64 %_argc114, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv115, { i64, [0 x i8*] }** %argv
  %_raw_array116 = call i64* @oat_alloc_array(i64 4)
  %_array117 = bitcast i64* %_raw_array116 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array118 = call i64* @oat_alloc_array(i64 1)
  %_array119 = bitcast i64* %_raw_array118 to { i64, [0 x i64] }*
  %_ind120 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array119, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind120
  %_raw_array121 = call i64* @oat_alloc_array(i64 1)
  %_array122 = bitcast i64* %_raw_array121 to { i64, [0 x i64] }*
  %_ind123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array122, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind123
  %_raw_array124 = call i64* @oat_alloc_array(i64 1)
  %_array125 = bitcast i64* %_raw_array124 to { i64, [0 x i64] }*
  %_ind126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array125, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind126
  %_raw_array127 = call i64* @oat_alloc_array(i64 1)
  %_array128 = bitcast i64* %_raw_array127 to { i64, [0 x i64] }*
  %_ind129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array128, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind129
  %_ind130 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array117, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array119, { i64, [0 x i64] }** %_ind130
  %_ind131 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array117, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array122, { i64, [0 x i64] }** %_ind131
  %_ind132 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array117, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array125, { i64, [0 x i64] }** %_ind132
  %_ind133 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array117, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array128, { i64, [0 x i64] }** %_ind133
  %x = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array117, { i64, [0 x { i64, [0 x i64] }*] }** %x
  %ans = alloca i64
  store i64 0, i64* %ans
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while146
_while146:
  %_local134 = load i64, i64* %i
  %_bop135 = icmp slt i64 %_local134, 4
  br i1 %_bop135, label %_do147, label %_elihw148
_do147:
  %_local136 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %x
  %_local137 = load i64, i64* %i
  %_ptr138 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local136, i32 0, i32 1, i64 %_local137
  %_elem139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr138
  %_ptr140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem139, i32 0, i32 1, i32 0
  %_elem141 = load i64, i64* %_ptr140
  %_local142 = load i64, i64* %ans
  %_bop143 = sub i64 %_elem141, %_local142
  store i64 %_bop143, i64* %ans
  %_local144 = load i64, i64* %i
  %_bop145 = add i64 %_local144, 1
  store i64 %_bop145, i64* %i
  br label %_while146
_elihw148:
  %_uop149 = xor i64 5, -1
  %_bop150 = and i64 5, %_uop149
  %_bop151 = or i64 %_bop150, 0
  %_bop152 = icmp ne i64 %_bop151, 0
  br i1 %_bop152, label %_if156, label %_else157
_if156:
  %_local153 = load i64, i64* %ans
  ret i64 %_local153
_else157:
  %_local154 = load i64, i64* %ans
  %_uop155 = mul i64 %_local154, -1
  ret i64 %_uop155
_fi158:
  %_local159 = load i64, i64* %ans
  ret i64 %_local159
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
