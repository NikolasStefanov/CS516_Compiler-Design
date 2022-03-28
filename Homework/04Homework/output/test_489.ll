; generated from: PaulKellyPirates.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @mod(i64 %_a101, i64 %_b102) {
  %_a103 = alloca i64
  store i64 %_a101, i64* %_a103
  %_b104 = alloca i64
  store i64 %_b102, i64* %_b104
  br label %_while110
_while110:
  %_local105 = load i64, i64* %_a103
  %_bop106 = icmp slt i64 %_local105, 0
  br i1 %_bop106, label %_do111, label %_elihw112
_do111:
  %_local107 = load i64, i64* %_a103
  %_local108 = load i64, i64* %_b104
  %_bop109 = add i64 %_local107, %_local108
  store i64 %_bop109, i64* %_a103
  br label %_while110
_elihw112:
  br label %_while119
_while119:
  %_local113 = load i64, i64* %_a103
  %_local114 = load i64, i64* %_b104
  %_bop115 = icmp sgt i64 %_local113, %_local114
  br i1 %_bop115, label %_do120, label %_elihw121
_do120:
  %_local116 = load i64, i64* %_a103
  %_local117 = load i64, i64* %_b104
  %_bop118 = sub i64 %_local116, %_local117
  store i64 %_bop118, i64* %_a103
  br label %_while119
_elihw121:
  %_local123 = load i64, i64* %_a103
  %_fun_return122 = bitcast i64 %_local123 to i64
  ret i64 %_fun_return122
}

define i64 @inverse(i64 %_x76, i64 %_modulo77) {
  %_x78 = alloca i64
  store i64 %_x76, i64* %_x78
  %_modulo79 = alloca i64
  store i64 %_modulo77, i64* %_modulo79
  %_i80 = alloca i64
  store i64 0, i64* %_i80
  br label %_while97
_while97:
  %_local81 = load i64, i64* %_i80
  %_local82 = load i64, i64* %_modulo79
  %_bop83 = icmp slt i64 %_local81, %_local82
  br i1 %_bop83, label %_do98, label %_elihw99
_do98:
  %_local84 = load i64, i64* %_i80
  %_local85 = load i64, i64* %_x78
  %_bop86 = mul i64 %_local84, %_local85
  %_local87 = load i64, i64* %_modulo79
  %_ret88 = call i64 @_mod(i64 %_bop86, i64 %_local87)
  %_bop89 = icmp eq i64 %_ret88, 1
  br i1 %_bop89, label %_if92, label %_else93
_if92:
  %_local91 = load i64, i64* %_i80
  %_fun_return90 = bitcast i64 %_local91 to i64
  ret i64 %_fun_return90
_else93:
  br label %_fi94
_fi94:
  %_local95 = load i64, i64* %_i80
  %_bop96 = add i64 %_local95, 1
  store i64 %_bop96, i64* %_i80
  br label %_while97
_elihw99:
  %_fun_return100 = bitcast i64 0 to i64
  ret i64 %_fun_return100
}

define i64 @program(i64 %_argc2, { i64, [0 x i8*] }* %_args3) {
  %_argc4 = alloca i64
  store i64 %_argc2, i64* %_argc4
  %_args5 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args3, { i64, [0 x i8*] }** %_args5
  %_raw_array6 = call i64* @oat_alloc_array(i64 3)
  %_array7 = bitcast i64* %_raw_array6 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array8 = call i64* @oat_alloc_array(i64 2)
  %_array9 = bitcast i64* %_raw_array8 to { i64, [0 x i64] }*
  %_ind10 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind10
  %_ind11 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind11
  %_raw_array12 = call i64* @oat_alloc_array(i64 2)
  %_array13 = bitcast i64* %_raw_array12 to { i64, [0 x i64] }*
  %_ind14 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array13, i32 0, i32 1, i32 0
  store i64 16, i64* %_ind14
  %_ind15 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array13, i32 0, i32 1, i32 1
  store i64 10, i64* %_ind15
  %_raw_array16 = call i64* @oat_alloc_array(i64 2)
  %_array17 = bitcast i64* %_raw_array16 to { i64, [0 x i64] }*
  %_ind18 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array17, i32 0, i32 1, i32 0
  store i64 15, i64* %_ind18
  %_ind19 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array17, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind19
  %_ind20 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array9, { i64, [0 x i64] }** %_ind20
  %_ind21 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array13, { i64, [0 x i64] }** %_ind21
  %_ind22 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array17, { i64, [0 x i64] }** %_ind22
  %pirates = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7, { i64, [0 x { i64, [0 x i64] }*] }** %pirates
  %sum = alloca i64
  store i64 0, i64* %sum
  %_i23 = alloca i64
  store i64 0, i64* %_i23
  br label %_while71
_while71:
  %_local24 = load i64, i64* %_i23
  %_bop25 = icmp slt i64 %_local24, 3
  br i1 %_bop25, label %_do72, label %_elihw73
_do72:
  %n = alloca i64
  store i64 1, i64* %n
  %_j26 = alloca i64
  store i64 0, i64* %_j26
  br label %_while45
_while45:
  %_local27 = load i64, i64* %_j26
  %_bop28 = icmp slt i64 %_local27, 3
  br i1 %_bop28, label %_do46, label %_elihw47
_do46:
  %_local29 = load i64, i64* %_j26
  %_local30 = load i64, i64* %_i23
  %_bop31 = icmp ne i64 %_local29, %_local30
  br i1 %_bop31, label %_if40, label %_else41
_if40:
  %_local32 = load i64, i64* %n
  %_local33 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %pirates
  %_local34 = load i64, i64* %_j26
  %_ptr35 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local33, i32 0, i32 1, i64 %_local34
  %_elem36 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr35
  %_ptr37 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem36, i32 0, i32 1, i32 0
  %_elem38 = load i64, i64* %_ptr37
  %_bop39 = mul i64 %_local32, %_elem38
  store i64 %_bop39, i64* %n
  br label %_fi42
_else41:
  br label %_fi42
_fi42:
  %_local43 = load i64, i64* %_j26
  %_bop44 = add i64 %_local43, 1
  store i64 %_bop44, i64* %_j26
  br label %_while45
_elihw47:
  %_local48 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %pirates
  %_local49 = load i64, i64* %_i23
  %_ptr50 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local48, i32 0, i32 1, i64 %_local49
  %_elem51 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr50
  %_ptr52 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem51, i32 0, i32 1, i32 1
  %_elem53 = load i64, i64* %_ptr52
  %b = alloca i64
  store i64 %_elem53, i64* %b
  %_local54 = load i64, i64* %n
  %_local55 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %pirates
  %_local56 = load i64, i64* %_i23
  %_ptr57 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local55, i32 0, i32 1, i64 %_local56
  %_elem58 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr57
  %_ptr59 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem58, i32 0, i32 1, i32 0
  %_elem60 = load i64, i64* %_ptr59
  %_ret61 = call i64 @_inverse(i64 %_local54, i64 %_elem60)
  %x = alloca i64
  store i64 %_ret61, i64* %x
  %_local62 = load i64, i64* %sum
  %_local63 = load i64, i64* %n
  %_local64 = load i64, i64* %b
  %_bop65 = mul i64 %_local63, %_local64
  %_local66 = load i64, i64* %x
  %_bop67 = mul i64 %_bop65, %_local66
  %_bop68 = add i64 %_local62, %_bop67
  store i64 %_bop68, i64* %sum
  %_local69 = load i64, i64* %_i23
  %_bop70 = add i64 %_local69, 1
  store i64 %_bop70, i64* %_i23
  br label %_while71
_elihw73:
  %_local75 = load i64, i64* %sum
  %_fun_return74 = bitcast i64 %_local75 to i64
  ret i64 %_fun_return74
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
