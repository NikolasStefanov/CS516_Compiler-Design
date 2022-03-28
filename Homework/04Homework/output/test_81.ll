; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc88, { i64, [0 x i8*] }* %_argv89) {
  %argc = alloca i64
  store i64 %_argc88, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv89, { i64, [0 x i8*] }** %argv
  %_raw_array90 = call i64* @oat_alloc_array(i64 4)
  %_array91 = bitcast i64* %_raw_array90 to { i64, [0 x i64] }*
  %_ind92 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array91, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind92
  %_ind93 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array91, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind93
  %_ind94 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array91, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind94
  %_ind95 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array91, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind95
  %x = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array91, { i64, [0 x i64] }** %x
  %ans = alloca i64
  store i64 0, i64* %ans
  %i = alloca i64
  store i64 0, i64* %i
  br label %_while110
_while110:
  %_local96 = load i64, i64* %i
  %_bop97 = icmp slt i64 %_local96, 4
  br i1 %_bop97, label %_do111, label %_elihw112
_do111:
  %_local98 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local99 = load i64, i64* %i
  %_ptr100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local98, i32 0, i32 1, i64 %_local99
  %_elem101 = load i64, i64* %_ptr100
  %_local102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_local103 = load i64, i64* %i
  %_ptr104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local102, i32 0, i32 1, i64 %_local103
  %_elem105 = load i64, i64* %_ptr104
  %_uop106 = xor i64 %_elem105, -1
  %_bop107 = mul i64 %_elem101, %_uop106
  store i64 %_bop107, i64* %ans
  %_local108 = load i64, i64* %i
  %_bop109 = add i64 %_local108, 1
  store i64 %_bop109, i64* %i
  br label %_while110
_elihw112:
  %_local113 = load i64, i64* %ans
  ret i64 %_local113
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
