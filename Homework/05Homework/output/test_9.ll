; generated from: hw5programs/compile_basic_struct.oat
target triple = "x86_64-apple-macosx10.13.0"
%Color = type { i64, i64, i64 }

define i64 @program(i64 %_argc869, { i64, [0 x i8*] }* %_argv866) {
  %_argc870 = alloca i64
  %_argv867 = alloca { i64, [0 x i8*] }*
  %_garr880 = alloca %Color*
  store i64 %_argc869, i64* %_argc870
  store { i64, [0 x i8*] }* %_argv866, { i64, [0 x i8*] }** %_argv867
  %_raw_struct872 = call i64* @oat_malloc(i64 24)
  %_struct873 = bitcast i64* %_raw_struct872 to %Color*
  %_ind874 = getelementptr %Color, %Color* %_struct873, i32 0, i32 0
  store i64 3, i64* %_ind874
  %_ind876 = getelementptr %Color, %Color* %_struct873, i32 0, i32 1
  store i64 4, i64* %_ind876
  %_ind878 = getelementptr %Color, %Color* %_struct873, i32 0, i32 2
  store i64 5, i64* %_ind878
  store %Color* %_struct873, %Color** %_garr880
  %_garr882 = load %Color*, %Color** %_garr880
  %_struct_field883 = getelementptr %Color, %Color* %_garr882, i32 0, i32 0
  %_proj884 = load i64*, i64** %_struct_field883
  %_cast885 = bitcast i64* %_proj884 to i64
  %_garr886 = load %Color*, %Color** %_garr880
  %_struct_field887 = getelementptr %Color, %Color* %_garr886, i32 0, i32 1
  %_proj888 = load i64*, i64** %_struct_field887
  %_cast889 = bitcast i64* %_proj888 to i64
  %_bop890 = add i64 %_cast885, %_cast889
  ret i64 %_bop890
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
