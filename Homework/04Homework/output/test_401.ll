; generated from: hw4programs/path3.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global390 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_unused_global390 to { i64, [0 x i64] }*)

define i64 @program(i64 %_argc382, { i64, [0 x i8*] }* %_args383) {
  %_argc384 = alloca i64
  store i64 %_argc382, i64* %_argc384
  %_args385 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_args383, { i64, [0 x i8*] }** %_args385
  %_glob387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_arr
  %_ptr388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_glob387, i32 0, i32 1, i32 2
  %_elem389 = load i64, i64* %_ptr388
  %_fun_return386 = bitcast i64 %_elem389 to i64
  ret i64 %_fun_return386
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
