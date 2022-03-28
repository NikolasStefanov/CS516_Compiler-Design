; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_847 = alloca i64
  %_848 = alloca i64
  store i64 %x, i64* %_847
  store i64 %y, i64* %_848
  %_849 = load i64, i64* %_847
  %_850 = load i64, i64* %_848
  %_851 = icmp eq i64 %_849, %_850
  %_852 = icmp eq i1 1, %_851
  br i1 %_852, label %_then853, label %_else854
_then853:
  %_856 = load i64, i64* %_847
  ret i64 %_856
_else854:
  br label %_out855
_out855:
  %_857 = load i64, i64* %_847
  %_858 = icmp eq i64 %_857, 0
  %_859 = icmp eq i1 1, %_858
  br i1 %_859, label %_then860, label %_else861
_then860:
  %_863 = load i64, i64* %_848
  ret i64 %_863
_else861:
  br label %_out862
_out862:
  %_864 = load i64, i64* %_848
  %_865 = icmp eq i64 %_864, 0
  %_866 = icmp eq i1 1, %_865
  br i1 %_866, label %_then867, label %_else868
_then867:
  %_870 = load i64, i64* %_847
  ret i64 %_870
_else868:
  br label %_out869
_out869:
  %_871 = load i64, i64* %_847
  %_872 = xor i64 9223372036854775807, %_871
  %_873 = and i64 %_872, 1
  %_874 = icmp eq i64 %_873, 1
  %_875 = icmp eq i1 1, %_874
  br i1 %_875, label %_then876, label %_else877
_then876:
  %_879 = load i64, i64* %_848
  %_880 = and i64 %_879, 1
  %_881 = icmp eq i64 %_880, 1
  %_882 = icmp eq i1 1, %_881
  br i1 %_882, label %_then883, label %_else884
_then883:
  %_888 = load i64, i64* %_848
  %_886 = load i64, i64* %_847
  %_887 = lshr i64 %_886, 1
  %_889 = call i64 @binary_gcd(i64 %_887, i64 %_888)
  ret i64 %_889
_else884:
  %_892 = load i64, i64* %_848
  %_893 = lshr i64 %_892, 1
  %_890 = load i64, i64* %_847
  %_891 = lshr i64 %_890, 1
  %_894 = call i64 @binary_gcd(i64 %_891, i64 %_893)
  %_895 = shl i64 %_894, 1
  ret i64 %_895
_out885:
  br label %_out878
_else877:
  br label %_out878
_out878:
  %_896 = load i64, i64* %_848
  %_897 = xor i64 9223372036854775807, %_896
  %_898 = and i64 %_897, 1
  %_899 = icmp eq i64 %_898, 1
  %_900 = icmp eq i1 1, %_899
  br i1 %_900, label %_then901, label %_else902
_then901:
  %_905 = load i64, i64* %_848
  %_906 = lshr i64 %_905, 1
  %_904 = load i64, i64* %_847
  %_907 = call i64 @binary_gcd(i64 %_904, i64 %_906)
  ret i64 %_907
_else902:
  br label %_out903
_out903:
  %_908 = load i64, i64* %_847
  %_909 = load i64, i64* %_848
  %_910 = icmp sgt i64 %_908, %_909
  %_911 = icmp eq i1 1, %_910
  br i1 %_911, label %_then912, label %_else913
_then912:
  %_919 = load i64, i64* %_848
  %_915 = load i64, i64* %_847
  %_916 = load i64, i64* %_848
  %_917 = sub i64 %_915, %_916
  %_918 = lshr i64 %_917, 1
  %_920 = call i64 @binary_gcd(i64 %_918, i64 %_919)
  ret i64 %_920
_else913:
  br label %_out914
_out914:
  %_925 = load i64, i64* %_847
  %_921 = load i64, i64* %_848
  %_922 = load i64, i64* %_847
  %_923 = sub i64 %_921, %_922
  %_924 = lshr i64 %_923, 1
  %_926 = call i64 @binary_gcd(i64 %_924, i64 %_925)
  ret i64 %_926
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_842 = alloca i64
  %_843 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_842
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_843
  %x = alloca i64
  %y = alloca i64
  store i64 21, i64* %x
  store i64 15, i64* %y
  %_845 = load i64, i64* %y
  %_844 = load i64, i64* %x
  %_846 = call i64 @binary_gcd(i64 %_844, i64 %_845)
  ret i64 %_846
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
