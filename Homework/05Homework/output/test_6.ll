; generated from: hw5programs/compile_global_struct.oat
target triple = "x86_64-apple-macosx10.13.0"
%Color = type { i64, i64, i64 }

@white = global { i64, i64, i64 } { i64 255, i64 254, i64 253 }

define i64 @program(i64 %_argc854, { i64, [0 x i8*] }* %_argv851) {
  %_argc855 = alloca i64
  %_argv852 = alloca { i64, [0 x i8*] }*
  %_garr864 = alloca { i64, i64, i64 }*
  store i64 %_argc854, i64* %_argc855
  store { i64, [0 x i8*] }* %_argv851, { i64, [0 x i8*] }** %_argv852
  %_struct857 = alloca { i64, i64, i64 }
  %_ind858 = getelementptr { i64, i64, i64 }, { i64, i64, i64 }* %_struct857, i32 0, i32 0
  store i64 3, i64* %_ind858
  %_ind860 = getelementptr { i64, i64, i64 }, { i64, i64, i64 }* %_struct857, i32 0, i32 1
  store i64 5, i64* %_ind860
  %_ind862 = getelementptr { i64, i64, i64 }, { i64, i64, i64 }* %_struct857, i32 0, i32 2
  store i64 7, i64* %_ind862
  store { i64, i64, i64 }* %_struct857, { i64, i64, i64 }** %_garr864
  %_white866 = load %Color*, %Color** @white
  %_struct_field867 = getelementptr %Color, %Color* %_white866, i32 0, i32 2
  %_proj868 = load i64*, i64** %_struct_field867
  %_cast869 = bitcast i64* %_proj868 to i64
  %_bop870 = add i64 %_cast869, 1
  ret i64 %_bop870
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
