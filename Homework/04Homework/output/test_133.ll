; generated from: hw4programs/easyrun3.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_6 = alloca i64
  %_7 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_6
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_7
  %x = alloca i64
  %i = alloca i64
  store i64 0, i64* %x
  store i64 0, i64* %i
  br label %_while_cond8
_while_cond8:
  %_9 = load i64, i64* %i
  %_10 = icmp slt i64 %_9, 10
  %_11 = icmp eq i1 1, %_10
  br i1 %_11, label %_loop_body12, label %_loop_end22
_loop_body12:
  %_13 = load i64, i64* %x
  %_14 = load i64, i64* %i
  %_15 = add i64 %_13, %_14
  %_16 = load i64, i64* %i
  %_17 = mul i64 %_15, %_16
  store i64 %_17, i64* %x
  %_19 = load i64, i64* %i
  %_20 = add i64 %_19, 1
  store i64 %_20, i64* %i
  br label %_while_cond8
_loop_end22:
  %_23 = load i64, i64* %x
  ret i64 %_23
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
