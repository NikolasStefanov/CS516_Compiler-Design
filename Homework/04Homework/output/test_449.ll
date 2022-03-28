; generated from: hw4programs/run24.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc1822, { i64, [0 x i8*] }* %_argv1823) {
  %_argc1824 = alloca i64
  store i64 %_argc1822, i64* %_argc1824
  %_argv1825 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv1823, { i64, [0 x i8*] }** %_argv1825
  %_raw_array1826 = call i64* @oat_alloc_array(i64 0)
  %_array1827 = bitcast i64* %_raw_array1826 to { i64, [0 x i64] }*
  %a = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1827, { i64, [0 x i64] }** %a
  %_fun_return1828 = bitcast i64 0 to i64
  ret i64 %_fun_return1828
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
