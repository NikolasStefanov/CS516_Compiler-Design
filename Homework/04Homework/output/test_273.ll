; generated from: hw4programs/lcs.oat
target triple = "x86_64-apple-macosx10.13.0"
@_unused_global4921 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_unused_global4921 to { i64, [0 x i64] }*)

define i8* @lcs(i64 %_i4838, i64 %_j4839, i8* %_a4840, i8* %_b4841) {
  %_i4842 = alloca i64
  store i64 %_i4838, i64* %_i4842
  %_j4843 = alloca i64
  store i64 %_j4839, i64* %_j4843
  %_a4844 = alloca i8*
  store i8* %_a4840, i8** %_a4844
  %_b4845 = alloca i8*
  store i8* %_b4841, i8** %_b4845
  %_local4846 = load i64, i64* %_i4842
  %_bop4847 = icmp slt i64 %_local4846, 0
  %_local4848 = load i64, i64* %_j4843
  %_bop4849 = icmp slt i64 %_local4848, 0
  %_bop4850 = or i1 %_bop4847, %_bop4849
  br i1 %_bop4850, label %_if4855, label %_else4856
_if4855:
  %_raw_array4853 = call i64* @oat_alloc_array(i64 0)
  %_array4854 = bitcast i64* %_raw_array4853 to { i64, [0 x i64] }*
  %_strr_arr4852 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4854)
  %_fun_return4851 = bitcast i8* %_strr_arr4852 to i8*
  ret i8* %_fun_return4851
_else4856:
  br label %_fi4857
_fi4857:
  %_local4858 = load i8*, i8** %_a4844
  %_ret4859 = call { i64, [0 x i64] }* @array_of_string(i8* %_local4858)
  %a_chars = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret4859, { i64, [0 x i64] }** %a_chars
  %_local4860 = load i8*, i8** %_b4845
  %_ret4861 = call { i64, [0 x i64] }* @array_of_string(i8* %_local4860)
  %b_chars = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_ret4861, { i64, [0 x i64] }** %b_chars
  %_local4862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a_chars
  %_local4863 = load i64, i64* %_i4842
  %_ptr4864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4862, i32 0, i32 1, i64 %_local4863
  %_elem4865 = load i64, i64* %_ptr4864
  %last_char_a = alloca i64
  store i64 %_elem4865, i64* %last_char_a
  %_local4866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b_chars
  %_local4867 = load i64, i64* %_j4843
  %_ptr4868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4866, i32 0, i32 1, i64 %_local4867
  %_elem4869 = load i64, i64* %_ptr4868
  %last_char_b = alloca i64
  store i64 %_elem4869, i64* %last_char_b
  %_local4870 = load i64, i64* %last_char_a
  %_local4871 = load i64, i64* %last_char_b
  %_bop4872 = icmp eq i64 %_local4870, %_local4871
  br i1 %_bop4872, label %_if4892, label %_else4893
_if4892:
  %_local4873 = load i64, i64* %_i4842
  %_bop4874 = sub i64 %_local4873, 1
  %_local4875 = load i64, i64* %_j4843
  %_bop4876 = sub i64 %_local4875, 1
  %_local4877 = load i8*, i8** %_a4844
  %_local4878 = load i8*, i8** %_b4845
  %_ret4879 = call i8* @_lcs(i64 %_bop4874, i64 %_bop4876, i8* %_local4877, i8* %_local4878)
  %prev_lcs = alloca i8*
  store i8* %_ret4879, i8** %prev_lcs
  %_local4880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a_chars
  %_local4881 = load i64, i64* %_i4842
  %_ptr4882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_local4880, i32 0, i32 1, i64 %_local4881
  %_elem4883 = load i64, i64* %_ptr4882
  %_glob4884 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_buf
  %_ind_assign4885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_glob4884, i32 0, i32 1, i32 0
  store i64 %_elem4883, i64* %_ind_assign4885
  %_glob4886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @_buf
  %_ret4887 = call i8* @string_of_array({ i64, [0 x i64] }* %_glob4886)
  %next_char = alloca i8*
  store i8* %_ret4887, i8** %next_char
  %_local4889 = load i8*, i8** %prev_lcs
  %_local4890 = load i8*, i8** %next_char
  %_ret4891 = call i8* @string_cat(i8* %_local4889, i8* %_local4890)
  %_fun_return4888 = bitcast i8* %_ret4891 to i8*
  ret i8* %_fun_return4888
_else4893:
  br label %_fi4894
_fi4894:
  %_local4895 = load i64, i64* %_i4842
  %_local4896 = load i64, i64* %_j4843
  %_bop4897 = sub i64 %_local4896, 1
  %_local4898 = load i8*, i8** %_a4844
  %_local4899 = load i8*, i8** %_b4845
  %_ret4900 = call i8* @_lcs(i64 %_local4895, i64 %_bop4897, i8* %_local4898, i8* %_local4899)
  %left_lcs = alloca i8*
  store i8* %_ret4900, i8** %left_lcs
  %_local4901 = load i64, i64* %_i4842
  %_bop4902 = sub i64 %_local4901, 1
  %_local4903 = load i64, i64* %_j4843
  %_local4904 = load i8*, i8** %_a4844
  %_local4905 = load i8*, i8** %_b4845
  %_ret4906 = call i8* @_lcs(i64 %_bop4902, i64 %_local4903, i8* %_local4904, i8* %_local4905)
  %right_lcs = alloca i8*
  store i8* %_ret4906, i8** %right_lcs
  %_local4907 = load i8*, i8** %left_lcs
  %_ret4908 = call i64 @length_of_string(i8* %_local4907)
  %left_len = alloca i64
  store i64 %_ret4908, i64* %left_len
  %_local4909 = load i8*, i8** %right_lcs
  %_ret4910 = call i64 @length_of_string(i8* %_local4909)
  %right_len = alloca i64
  store i64 %_ret4910, i64* %right_len
  %_local4911 = load i64, i64* %left_len
  %_local4912 = load i64, i64* %right_len
  %_bop4913 = icmp slt i64 %_local4911, %_local4912
  br i1 %_bop4913, label %_if4918, label %_else4919
_if4918:
  %_local4915 = load i8*, i8** %right_lcs
  %_fun_return4914 = bitcast i8* %_local4915 to i8*
  ret i8* %_fun_return4914
_else4919:
  %_local4917 = load i8*, i8** %left_lcs
  %_fun_return4916 = bitcast i8* %_local4917 to i8*
  ret i8* %_fun_return4916
}

define i64 @program(i64 %_argc4811, { i64, [0 x i8*] }* %_argv4812) {
  %_argc4813 = alloca i64
  store i64 %_argc4811, i64* %_argc4813
  %_argv4814 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4812, { i64, [0 x i8*] }** %_argv4814
  %_raw_array4816 = call i64* @oat_alloc_array(i64 6)
  %_array4817 = bitcast i64* %_raw_array4816 to { i64, [0 x i64] }*
  %_ind4818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4817, i32 0, i32 1, i32 0
  store i64 84, i64* %_ind4818
  %_ind4819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4817, i32 0, i32 1, i32 1
  store i64 79, i64* %_ind4819
  %_ind4820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4817, i32 0, i32 1, i32 2
  store i64 77, i64* %_ind4820
  %_ind4821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4817, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4821
  %_ind4822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4817, i32 0, i32 1, i32 4
  store i64 84, i64* %_ind4822
  %_ind4823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4817, i32 0, i32 1, i32 5
  store i64 79, i64* %_ind4823
  %_strr_arr4815 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4817)
  %tomato = alloca i8*
  store i8* %_strr_arr4815, i8** %tomato
  %_raw_array4825 = call i64* @oat_alloc_array(i64 7)
  %_array4826 = bitcast i64* %_raw_array4825 to { i64, [0 x i64] }*
  %_ind4827 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4826, i32 0, i32 1, i32 0
  store i64 79, i64* %_ind4827
  %_ind4828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4826, i32 0, i32 1, i32 1
  store i64 82, i64* %_ind4828
  %_ind4829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4826, i32 0, i32 1, i32 2
  store i64 65, i64* %_ind4829
  %_ind4830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4826, i32 0, i32 1, i32 3
  store i64 84, i64* %_ind4830
  %_ind4831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4826, i32 0, i32 1, i32 4
  store i64 73, i64* %_ind4831
  %_ind4832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4826, i32 0, i32 1, i32 5
  store i64 78, i64* %_ind4832
  %_ind4833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4826, i32 0, i32 1, i32 6
  store i64 71, i64* %_ind4833
  %_strr_arr4824 = call i8* @string_of_array({ i64, [0 x i64] }* %_array4826)
  %orating = alloca i8*
  store i8* %_strr_arr4824, i8** %orating
  %_local4834 = load i8*, i8** %tomato
  %_local4835 = load i8*, i8** %orating
  %_ret4836 = call i8* @_lcs(i64 5, i64 6, i8* %_local4834, i8* %_local4835)
  call void @print_string(i8* %_ret4836)
  %_fun_return4837 = bitcast i64 0 to i64
  ret i64 %_fun_return4837
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
