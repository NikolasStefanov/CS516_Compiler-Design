; generated from: hw4programs/easyrun2.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc129, { i64, [0 x i8*] }* %_argv130) {
  %_argc131 = alloca i64
  store i64 %_argc129, i64* %_argc131
  %_argv132 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv130, { i64, [0 x i8*] }** %_argv132
  %_bop134 = add i64 17, 18
  %_fun_return133 = bitcast i64 %_bop134 to i64
  ret i64 %_fun_return133
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
