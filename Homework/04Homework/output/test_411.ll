; generated from: hw4programs/run29.oat
target triple = "x86_64-apple-macosx10.13.0"
@b = global i1 1

define i64 @program(i64 %_argc594, { i64, [0 x i8*] }* %_argv595) {
  %_argc596 = alloca i64
  store i64 %_argc594, i64* %_argc596
  %_argv597 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv595, { i64, [0 x i8*] }** %_argv597
  %i = alloca i64
  store i64 0, i64* %i
  %_glob598 = load i1, i1* @_b
  br i1 %_glob598, label %_if599, label %_else600
_if599:
  store i64 1, i64* %i
  br label %_fi601
_else600:
  br label %_fi601
_fi601:
  %_local603 = load i64, i64* %i
  %_fun_return602 = bitcast i64 %_local603 to i64
  ret i64 %_fun_return602
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
