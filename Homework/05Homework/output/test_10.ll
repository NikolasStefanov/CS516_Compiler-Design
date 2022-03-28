; generated from: hw5programs/compile_global_struct.oat
target triple = "x86_64-apple-macosx10.13.0"
%Color = type { i64, i64, i64 }

@white = global { i64, i64, i64 } { i64 255, i64 254, i64 253 }

define i64 @program(i64 %_argc894, { i64, [0 x i8*] }* %_argv891) {
  %_argc895 = alloca i64
  %_argv892 = alloca { i64, [0 x i8*] }*
  %_garr905 = alloca %Color*
  store i64 %_argc894, i64* %_argc895
  store { i64, [0 x i8*] }* %_argv891, { i64, [0 x i8*] }** %_argv892
  %_raw_struct897 = call i64* @oat_malloc(i64 24)
  %_struct898 = bitcast i64* %_raw_struct897 to %Color*
  %_ind899 = getelementptr %Color, %Color* %_struct898, i32 0, i32 0
  store i64 3, i64* %_ind899
  %_ind901 = getelementptr %Color, %Color* %_struct898, i32 0, i32 1
  store i64 5, i64* %_ind901
  %_ind903 = getelementptr %Color, %Color* %_struct898, i32 0, i32 2
  store i64 7, i64* %_ind903
  store %Color* %_struct898, %Color** %_garr905
  %_white907 = load %Color*, %Color** @white
  %_struct_field908 = getelementptr %Color, %Color* %_white907, i32 0, i32 2
  %_proj909 = load i64*, i64** %_struct_field908
  %_cast910 = bitcast i64* %_proj909 to i64
  %_bop911 = add i64 %_cast910, 1
  ret i64 %_bop911
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
