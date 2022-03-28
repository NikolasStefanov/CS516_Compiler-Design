; generated from: hw4programs/fibo.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @fibR(i64 %n) {
  %_820 = alloca i64
  store i64 %n, i64* %_820
  %_821 = load i64, i64* %_820
  %_822 = icmp eq i64 %_821, 0
  %_823 = icmp eq i1 1, %_822
  br i1 %_823, label %_then824, label %_else825
_then824:
  ret i64 0
_else825:
  br label %_out826
_out826:
  %_827 = load i64, i64* %_820
  %_828 = icmp eq i64 %_827, 1
  %_829 = icmp eq i1 1, %_828
  br i1 %_829, label %_then830, label %_else831
_then830:
  ret i64 1
_else831:
  br label %_out832
_out832:
  %_833 = load i64, i64* %_820
  %_834 = sub i64 %_833, 1
  %_835 = call i64 @fibR(i64 %_834)
  %_836 = load i64, i64* %_820
  %_837 = sub i64 %_836, 2
  %_838 = call i64 @fibR(i64 %_837)
  %_839 = add i64 %_835, %_838
  ret i64 %_839
}

define i64 @fibI(i64 %n) {
  %_785 = alloca i64
  store i64 %n, i64* %_785
  %a = alloca i64
  %b = alloca i64
  %old = alloca i64
  store i64 0, i64* %a
  store i64 1, i64* %b
  %_786 = load i64, i64* %_785
  %_787 = icmp eq i64 %_786, 0
  %_788 = icmp eq i1 1, %_787
  br i1 %_788, label %_then789, label %_else790
_then789:
  %_792 = load i64, i64* %a
  ret i64 %_792
_else790:
  br label %_out791
_out791:
  %_793 = load i64, i64* %_785
  %_794 = icmp eq i64 %_793, 1
  %_795 = icmp eq i1 1, %_794
  br i1 %_795, label %_then796, label %_else797
_then796:
  %_799 = load i64, i64* %b
  ret i64 %_799
_else797:
  br label %_out798
_out798:
  br label %_while_cond800
_while_cond800:
  %_801 = load i64, i64* %_785
  %_802 = sub i64 %_801, 2
  %_803 = icmp sgt i64 %_802, 0
  %_804 = icmp eq i1 1, %_803
  br i1 %_804, label %_loop_body805, label %_loop_end816
_loop_body805:
  %_806 = load i64, i64* %b
  store i64 %_806, i64* %old
  %_807 = load i64, i64* %b
  %_808 = load i64, i64* %a
  %_809 = add i64 %_807, %_808
  store i64 %_809, i64* %b
  %_811 = load i64, i64* %old
  store i64 %_811, i64* %a
  %_813 = load i64, i64* %_785
  %_814 = sub i64 %_813, 1
  store i64 %_814, i64* %_785
  br label %_while_cond800
_loop_end816:
  %_817 = load i64, i64* %a
  %_818 = load i64, i64* %b
  %_819 = add i64 %_817, %_818
  ret i64 %_819
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_772 = alloca i64
  %_773 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_772
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_773
  %val = alloca i64
  store i64 1, i64* %val
  %_774 = call i64 @fibR(i64 12)
  %_775 = icmp eq i64 %_774, 144
  %_776 = call i64 @fibI(i64 12)
  %_777 = icmp eq i64 %_776, 144
  %_778 = and i1 %_775, %_777
  %_779 = icmp eq i1 1, %_778
  br i1 %_779, label %_then780, label %_else781
_then780:
  store i64 0, i64* %val
  br label %_out782
_else781:
  br label %_out782
_out782:
  %_784 = load i64, i64* %val
  ret i64 %_784
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
