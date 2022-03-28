; generated from: hw4programs/easyrun6.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc52, { i64, [0 x i8*] }* %_argv53) {
  %argc = alloca i64
  store i64 %_argc52, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv53, { i64, [0 x i8*] }** %argv
  %_uop54 = xor i1 1, 1
  %_uop55 = mul i64 4, -1
  %_bop56 = add i64 %_uop55, 5
  %_bop57 = icmp sgt i64 %_bop56, 0
  %_bop58 = mul i64 6, 4
  %_bop59 = icmp slt i64 %_bop58, 25
  %_bop60 = and i1 %_bop57, %_bop59
  %_bop61 = or i1 %_uop54, %_bop60
  br i1 %_bop61, label %_if62, label %_else63
_if62:
  ret i64 9
_else63:
  ret i64 4
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
