; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %_x1883, i64 %_x2884, i64 %_x3885, i64 %_x4886, i64 %_x5887, i64 %_x6888, i64 %_x7889, i64 %_x8890) {
  %_x1891 = alloca i64
  store i64 %_x1883, i64* %_x1891
  %_x2892 = alloca i64
  store i64 %_x2884, i64* %_x2892
  %_x3893 = alloca i64
  store i64 %_x3885, i64* %_x3893
  %_x4894 = alloca i64
  store i64 %_x4886, i64* %_x4894
  %_x5895 = alloca i64
  store i64 %_x5887, i64* %_x5895
  %_x6896 = alloca i64
  store i64 %_x6888, i64* %_x6896
  %_x7897 = alloca i64
  store i64 %_x7889, i64* %_x7897
  %_x8898 = alloca i64
  store i64 %_x8890, i64* %_x8898
  %_local900 = load i64, i64* %_x1891
  %_local901 = load i64, i64* %_x2892
  %_bop902 = add i64 %_local900, %_local901
  %_local903 = load i64, i64* %_x3893
  %_bop904 = add i64 %_bop902, %_local903
  %_local905 = load i64, i64* %_x4894
  %_bop906 = add i64 %_bop904, %_local905
  %_local907 = load i64, i64* %_x5895
  %_bop908 = add i64 %_bop906, %_local907
  %_local909 = load i64, i64* %_x6896
  %_bop910 = add i64 %_bop908, %_local909
  %_local911 = load i64, i64* %_x7897
  %_bop912 = add i64 %_bop910, %_local911
  %_local913 = load i64, i64* %_x8898
  %_bop914 = add i64 %_bop912, %_local913
  %_fun_return899 = bitcast i64 %_bop914 to i64
  ret i64 %_fun_return899
}

define i64 @program(i64 %_argc874, { i64, [0 x i8*] }* %_argv875) {
  %_argc876 = alloca i64
  store i64 %_argc874, i64* %_argc876
  %_argv877 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv875, { i64, [0 x i8*] }** %_argv877
  %_uop879 = mul i64 5, -1
  %_uop880 = mul i64 4, -1
  %_uop881 = mul i64 3, -1
  %_ret882 = call i64 @_f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop879, i64 %_uop880, i64 %_uop881)
  %_fun_return878 = bitcast i64 %_ret882 to i64
  ret i64 %_fun_return878
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
