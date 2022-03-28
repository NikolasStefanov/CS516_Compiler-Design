; generated from: hw5programs/compile_return_struct.oat
target triple = "x86_64-apple-macosx10.13.0"
%Pair = type { i1, i1 }

define %Pair* @create_pair(i1 %_a895, i1 %_b892) {
  %_a896 = alloca i1
  %_b893 = alloca i1
  store i1 %_a895, i1* %_a896
  store i1 %_b892, i1* %_b893
  %_struct898 = alloca { i1, i1 }
  %_a899 = load i1, i1* %_a896
  %_ind900 = getelementptr { i1, i1 }, { i1, i1 }* %_struct898, i32 0, i32 0
  store i1 %_a899, i1* %_ind900
  %_b902 = load i1, i1* %_b893
  %_ind903 = getelementptr { i1, i1 }, { i1, i1 }* %_struct898, i32 0, i32 1
  store i1 %_b902, i1* %_ind903
  %_cast905 = bitcast { i1, i1 }* %_struct898 to %Pair*
  ret %Pair* %_cast905
}

define i64 @program(i64 %_argc874, { i64, [0 x i8*] }* %_argv871) {
  %_argc875 = alloca i64
  %_argv872 = alloca { i64, [0 x i8*] }*
  %_p878 = alloca %Pair*
  store i64 %_argc874, i64* %_argc875
  store { i64, [0 x i8*] }* %_argv871, { i64, [0 x i8*] }** %_argv872
  %_result877 = call %Pair* @create_pair(i1 1, i1 0)
  store %Pair* %_result877, %Pair** %_p878
  %_p880 = load %Pair*, %Pair** %_p878
  %_struct_field881 = getelementptr %Pair, %Pair* %_p880, i32 0, i32 0
  %_proj882 = load i1*, i1** %_struct_field881
  %_cast883 = bitcast i1* %_proj882 to i1
  %_p884 = load %Pair*, %Pair** %_p878
  %_struct_field885 = getelementptr %Pair, %Pair* %_p884, i32 0, i32 1
  %_proj886 = load i1*, i1** %_struct_field885
  %_cast887 = bitcast i1* %_proj886 to i1
  %_bop888 = and i1 %_cast883, %_cast887
  br i1 %_bop888, label %_then891, label %_else890
_then891:
  ret i64 1
_else890:
  ret i64 0
_merge889:
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
