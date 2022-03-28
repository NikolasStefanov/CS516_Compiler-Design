; generated from: hw4programs/run41.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @f(i64 %_x1761, i64 %_x2762, i64 %_x3763, i64 %_x4764, i64 %_x5765, i64 %_x6766, i64 %_x7767, i64 %_x8768) {
  %_x1769 = alloca i64
  store i64 %_x1761, i64* %_x1769
  %_x2770 = alloca i64
  store i64 %_x2762, i64* %_x2770
  %_x3771 = alloca i64
  store i64 %_x3763, i64* %_x3771
  %_x4772 = alloca i64
  store i64 %_x4764, i64* %_x4772
  %_x5773 = alloca i64
  store i64 %_x5765, i64* %_x5773
  %_x6774 = alloca i64
  store i64 %_x6766, i64* %_x6774
  %_x7775 = alloca i64
  store i64 %_x7767, i64* %_x7775
  %_x8776 = alloca i64
  store i64 %_x8768, i64* %_x8776
  %_local778 = load i64, i64* %_x1769
  %_local779 = load i64, i64* %_x2770
  %_bop780 = add i64 %_local778, %_local779
  %_local781 = load i64, i64* %_x3771
  %_bop782 = add i64 %_bop780, %_local781
  %_local783 = load i64, i64* %_x4772
  %_bop784 = add i64 %_bop782, %_local783
  %_local785 = load i64, i64* %_x5773
  %_bop786 = add i64 %_bop784, %_local785
  %_local787 = load i64, i64* %_x6774
  %_bop788 = add i64 %_bop786, %_local787
  %_local789 = load i64, i64* %_x7775
  %_bop790 = add i64 %_bop788, %_local789
  %_local791 = load i64, i64* %_x8776
  %_bop792 = add i64 %_bop790, %_local791
  %_fun_return777 = bitcast i64 %_bop792 to i64
  ret i64 %_fun_return777
}

define i64 @program(i64 %_argc752, { i64, [0 x i8*] }* %_argv753) {
  %_argc754 = alloca i64
  store i64 %_argc752, i64* %_argc754
  %_argv755 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv753, { i64, [0 x i8*] }** %_argv755
  %_uop757 = mul i64 5, -1
  %_uop758 = mul i64 4, -1
  %_uop759 = mul i64 3, -1
  %_ret760 = call i64 @_f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop757, i64 %_uop758, i64 %_uop759)
  %_fun_return756 = bitcast i64 %_ret760 to i64
  ret i64 %_fun_return756
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
