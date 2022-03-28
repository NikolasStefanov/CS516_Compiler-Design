; generated from: hw5programs/compile_assign_struct.oat
target triple = "x86_64-apple-macosx10.13.0"
%Point = type { i64, i64 }

define i64 @program(i64 %_argc824, { i64, [0 x i8*] }* %_argv821) {
  %_argc825 = alloca i64
  %_argv822 = alloca { i64, [0 x i8*] }*
  %_p833 = alloca %Point*
  store i64 %_argc824, i64* %_argc825
  store { i64, [0 x i8*] }* %_argv821, { i64, [0 x i8*] }** %_argv822
  %_raw_struct827 = call i64* @oat_malloc(i64 16)
  %_struct828 = bitcast i64* %_raw_struct827 to %Point*
  %_ind829 = getelementptr %Point, %Point* %_struct828, i32 0, i32 0
  store i64 3, i64* %_ind829
  %_ind831 = getelementptr %Point, %Point* %_struct828, i32 0, i32 1
  store i64 4, i64* %_ind831
  store %Point* %_struct828, %Point** %_p833
  %_p835 = load %Point*, %Point** %_p833
  %_struct_field836 = getelementptr %Point, %Point* %_p835, i32 0, i32 0
  %_cast837 = bitcast i64 5 to i64*
  store i64* %_cast837, i64** %_struct_field836
  %_p839 = load %Point*, %Point** %_p833
  %_struct_field840 = getelementptr %Point, %Point* %_p839, i32 0, i32 1
  %_p841 = load %Point*, %Point** %_p833
  %_struct_field842 = getelementptr %Point, %Point* %_p841, i32 0, i32 0
  %_proj843 = load i64*, i64** %_struct_field842
  %_cast844 = bitcast i64* %_proj843 to i64
  %_p845 = load %Point*, %Point** %_p833
  %_struct_field846 = getelementptr %Point, %Point* %_p845, i32 0, i32 1
  %_proj847 = load i64*, i64** %_struct_field846
  %_cast848 = bitcast i64* %_proj847 to i64
  %_bop849 = add i64 %_cast844, %_cast848
  %_bop850 = add i64 %_bop849, 3
  %_cast851 = bitcast i64 %_bop850 to i64*
  store i64* %_cast851, i64** %_struct_field840
  %_p853 = load %Point*, %Point** %_p833
  %_struct_field854 = getelementptr %Point, %Point* %_p853, i32 0, i32 0
  %_p855 = load %Point*, %Point** %_p833
  %_struct_field856 = getelementptr %Point, %Point* %_p855, i32 0, i32 1
  %_proj857 = load i64*, i64** %_struct_field856
  %_cast858 = bitcast i64* %_proj857 to i64
  %_bop859 = add i64 %_cast858, 4
  %_cast860 = bitcast i64 %_bop859 to i64*
  store i64* %_cast860, i64** %_struct_field854
  %_p862 = load %Point*, %Point** %_p833
  %_struct_field863 = getelementptr %Point, %Point* %_p862, i32 0, i32 0
  %_proj864 = load i64*, i64** %_struct_field863
  %_cast865 = bitcast i64* %_proj864 to i64
  ret i64 %_cast865
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
