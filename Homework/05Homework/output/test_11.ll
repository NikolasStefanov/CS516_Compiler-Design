; generated from: hw5programs/compile_return_struct.oat
target triple = "x86_64-apple-macosx10.13.0"
%Pair = type { i1, i1 }

define %Pair* @create_pair(i1 %_a936, i1 %_b933) {
  %_a937 = alloca i1
  %_b934 = alloca i1
  store i1 %_a936, i1* %_a937
  store i1 %_b933, i1* %_b934
  %_raw_struct939 = call i64* @oat_malloc(i64 16)
  %_struct940 = bitcast i64* %_raw_struct939 to %Pair*
  %_a941 = load i1, i1* %_a937
  %_ind942 = getelementptr %Pair, %Pair* %_struct940, i32 0, i32 0
  store i1 %_a941, i1* %_ind942
  %_b944 = load i1, i1* %_b934
  %_ind945 = getelementptr %Pair, %Pair* %_struct940, i32 0, i32 1
  store i1 %_b944, i1* %_ind945
  ret %Pair* %_struct940
}

define i64 @program(i64 %_argc915, { i64, [0 x i8*] }* %_argv912) {
  %_argc916 = alloca i64
  %_argv913 = alloca { i64, [0 x i8*] }*
  %_p919 = alloca %Pair*
  store i64 %_argc915, i64* %_argc916
  store { i64, [0 x i8*] }* %_argv912, { i64, [0 x i8*] }** %_argv913
  %_result918 = call %Pair* @create_pair(i1 1, i1 0)
  store %Pair* %_result918, %Pair** %_p919
  %_p921 = load %Pair*, %Pair** %_p919
  %_struct_field922 = getelementptr %Pair, %Pair* %_p921, i32 0, i32 0
  %_proj923 = load i1*, i1** %_struct_field922
  %_cast924 = bitcast i1* %_proj923 to i1
  %_p925 = load %Pair*, %Pair** %_p919
  %_struct_field926 = getelementptr %Pair, %Pair* %_p925, i32 0, i32 1
  %_proj927 = load i1*, i1** %_struct_field926
  %_cast928 = bitcast i1* %_proj927 to i1
  %_bop929 = and i1 %_cast924, %_cast928
  br i1 %_bop929, label %_then932, label %_else931
_then932:
  ret i64 1
_else931:
  ret i64 0
_merge930:
  ret i64 0
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
