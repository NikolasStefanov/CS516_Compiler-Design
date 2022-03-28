; generated from: hw4programs/life.oat
target triple = "x86_64-apple-macosx10.13.0"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4897, i64 %_i4898, i64 %_j4899, i64 %_count4900) {
  %_board4901 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4897, { i64, [0 x { i64, [0 x i64] }*] }** %_board4901
  %_i4902 = alloca i64
  store i64 %_i4898, i64* %_i4902
  %_j4903 = alloca i64
  store i64 %_j4899, i64* %_j4903
  %_count4904 = alloca i64
  store i64 %_count4900, i64* %_count4904
  %_local4905 = load i64, i64* %_i4902
  %_bop4906 = icmp sge i64 %_local4905, 0
  %_local4907 = load i64, i64* %_j4903
  %_bop4908 = icmp sge i64 %_local4907, 0
  %_bop4909 = and i1 %_bop4906, %_bop4908
  %_local4910 = load i64, i64* %_i4902
  %_glob4911 = load i64, i64* @_len
  %_bop4912 = icmp slt i64 %_local4910, %_glob4911
  %_bop4913 = and i1 %_bop4909, %_bop4912
  %_local4914 = load i64, i64* %_j4903
  %_glob4915 = load i64, i64* @_len
  %_bop4916 = icmp slt i64 %_local4914, %_glob4915
  %_bop4917 = and i1 %_bop4913, %_bop4916
  br i1 %_bop4917, label %_if4930, label %_else4931
_if4930:
  %_local4919 = load i64, i64* %_count4904
  %_local4920 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4901
  %_local4921 = load i64, i64* %_i4902
  %_ptr4922 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4920, i32 0, i32 1, i64 %_local4921
  %_elem4923 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4922
  %_local4924 = load i64, i64* %_j4903
  %_ptr4925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4923, i32 0, i32 1, i64 %_local4924
  %_elem4926 = load i64, i64* %_ptr4925
  %_bop4927 = add i64 %_local4919, %_elem4926
  %_fun_return4918 = bitcast i64 %_bop4927 to i64
  ret i64 %_fun_return4918
_else4931:
  %_local4929 = load i64, i64* %_count4904
  %_fun_return4928 = bitcast i64 %_local4929 to i64
  ret i64 %_fun_return4928
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board4806, i64 %_i4807, i64 %_j4808) {
  %_board4809 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4806, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_i4810 = alloca i64
  store i64 %_i4807, i64* %_i4810
  %_j4811 = alloca i64
  store i64 %_j4808, i64* %_j4811
  %_local4812 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4813 = load i64, i64* %_i4810
  %_ptr4814 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4812, i32 0, i32 1, i64 %_local4813
  %_elem4815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4814
  %_local4816 = load i64, i64* %_j4811
  %_ptr4817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4815, i32 0, i32 1, i64 %_local4816
  %_elem4818 = load i64, i64* %_ptr4817
  %alive = alloca i64
  store i64 %_elem4818, i64* %alive
  %count = alloca i64
  store i64 0, i64* %count
  %_local4819 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4820 = load i64, i64* %_i4810
  %_bop4821 = sub i64 %_local4820, 1
  %_local4822 = load i64, i64* %_j4811
  %_bop4823 = sub i64 %_local4822, 1
  %_local4824 = load i64, i64* %count
  %_ret4825 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4819, i64 %_bop4821, i64 %_bop4823, i64 %_local4824)
  store i64 %_ret4825, i64* %count
  %_local4826 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4827 = load i64, i64* %_i4810
  %_bop4828 = sub i64 %_local4827, 1
  %_local4829 = load i64, i64* %_j4811
  %_local4830 = load i64, i64* %count
  %_ret4831 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4826, i64 %_bop4828, i64 %_local4829, i64 %_local4830)
  store i64 %_ret4831, i64* %count
  %_local4832 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4833 = load i64, i64* %_i4810
  %_bop4834 = sub i64 %_local4833, 1
  %_local4835 = load i64, i64* %_j4811
  %_bop4836 = add i64 %_local4835, 1
  %_local4837 = load i64, i64* %count
  %_ret4838 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4832, i64 %_bop4834, i64 %_bop4836, i64 %_local4837)
  store i64 %_ret4838, i64* %count
  %_local4839 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4840 = load i64, i64* %_i4810
  %_local4841 = load i64, i64* %_j4811
  %_bop4842 = sub i64 %_local4841, 1
  %_local4843 = load i64, i64* %count
  %_ret4844 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4839, i64 %_local4840, i64 %_bop4842, i64 %_local4843)
  store i64 %_ret4844, i64* %count
  %_local4845 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4846 = load i64, i64* %_i4810
  %_local4847 = load i64, i64* %_j4811
  %_bop4848 = add i64 %_local4847, 1
  %_local4849 = load i64, i64* %count
  %_ret4850 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4845, i64 %_local4846, i64 %_bop4848, i64 %_local4849)
  store i64 %_ret4850, i64* %count
  %_local4851 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4852 = load i64, i64* %_i4810
  %_bop4853 = add i64 %_local4852, 1
  %_local4854 = load i64, i64* %_j4811
  %_bop4855 = sub i64 %_local4854, 1
  %_local4856 = load i64, i64* %count
  %_ret4857 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4851, i64 %_bop4853, i64 %_bop4855, i64 %_local4856)
  store i64 %_ret4857, i64* %count
  %_local4858 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4859 = load i64, i64* %_i4810
  %_bop4860 = add i64 %_local4859, 1
  %_local4861 = load i64, i64* %_j4811
  %_local4862 = load i64, i64* %count
  %_ret4863 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4858, i64 %_bop4860, i64 %_local4861, i64 %_local4862)
  store i64 %_ret4863, i64* %count
  %_local4864 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4809
  %_local4865 = load i64, i64* %_i4810
  %_bop4866 = add i64 %_local4865, 1
  %_local4867 = load i64, i64* %_j4811
  %_bop4868 = add i64 %_local4867, 1
  %_local4869 = load i64, i64* %count
  %_ret4870 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4864, i64 %_bop4866, i64 %_bop4868, i64 %_local4869)
  store i64 %_ret4870, i64* %count
  %_local4871 = load i64, i64* %alive
  %_bop4872 = icmp eq i64 %_local4871, 1
  br i1 %_bop4872, label %_if4886, label %_else4887
_if4886:
  %_local4873 = load i64, i64* %count
  %_bop4874 = icmp slt i64 %_local4873, 2
  br i1 %_bop4874, label %_if4882, label %_else4883
_if4882:
  %_fun_return4875 = bitcast i64 0 to i64
  ret i64 %_fun_return4875
_else4883:
  %_local4876 = load i64, i64* %count
  %_bop4877 = icmp slt i64 %_local4876, 4
  br i1 %_bop4877, label %_if4879, label %_else4880
_if4879:
  %_fun_return4878 = bitcast i64 1 to i64
  ret i64 %_fun_return4878
_else4880:
  br label %_fi4881
_fi4881:
  br label %_fi4884
_fi4884:
  %_fun_return4885 = bitcast i64 0 to i64
  ret i64 %_fun_return4885
_else4887:
  br label %_fi4888
_fi4888:
  %_local4889 = load i64, i64* %count
  %_bop4890 = icmp eq i64 %_local4889, 3
  br i1 %_bop4890, label %_if4893, label %_else4894
_if4893:
  %_fun_return4891 = bitcast i64 1 to i64
  ret i64 %_fun_return4891
_else4894:
  %_fun_return4892 = bitcast i64 0 to i64
  ret i64 %_fun_return4892
_fi4895:
  %_fun_return4896 = bitcast i64 0 to i64
  ret i64 %_fun_return4896
}

define i64 @program(i64 %_argc4685, { i64, [0 x i8*] }* %_argv4686) {
  %_argc4687 = alloca i64
  store i64 %_argc4685, i64* %_argc4687
  %_argv4688 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4686, { i64, [0 x i8*] }** %_argv4688
  %_raw_array4689 = call i64* @oat_alloc_array(i64 4)
  %_array4690 = bitcast i64* %_raw_array4689 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4691 = call i64* @oat_alloc_array(i64 4)
  %_array4692 = bitcast i64* %_raw_array4691 to { i64, [0 x i64] }*
  %_ind4693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4692, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4693
  %_ind4694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4692, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4694
  %_ind4695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4692, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4695
  %_ind4696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4692, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4696
  %_raw_array4697 = call i64* @oat_alloc_array(i64 4)
  %_array4698 = bitcast i64* %_raw_array4697 to { i64, [0 x i64] }*
  %_ind4699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4698, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4699
  %_ind4700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4698, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4700
  %_ind4701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4698, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4701
  %_ind4702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4698, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind4702
  %_raw_array4703 = call i64* @oat_alloc_array(i64 4)
  %_array4704 = bitcast i64* %_raw_array4703 to { i64, [0 x i64] }*
  %_ind4705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4704, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind4705
  %_ind4706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4704, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4706
  %_ind4707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4704, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4707
  %_ind4708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4704, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4708
  %_raw_array4709 = call i64* @oat_alloc_array(i64 4)
  %_array4710 = bitcast i64* %_raw_array4709 to { i64, [0 x i64] }*
  %_ind4711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4710, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4711
  %_ind4712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4710, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4712
  %_ind4713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4710, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4713
  %_ind4714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4710, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4714
  %_ind4715 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4690, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4692, { i64, [0 x i64] }** %_ind4715
  %_ind4716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4690, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4698, { i64, [0 x i64] }** %_ind4716
  %_ind4717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4690, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4704, { i64, [0 x i64] }** %_ind4717
  %_ind4718 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4690, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4710, { i64, [0 x i64] }** %_ind4718
  %board = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4690, { i64, [0 x { i64, [0 x i64] }*] }** %board
  %_raw_array4719 = call i64* @oat_alloc_array(i64 4)
  %_array4720 = bitcast i64* %_raw_array4719 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4721 = call i64* @oat_alloc_array(i64 4)
  %_array4722 = bitcast i64* %_raw_array4721 to { i64, [0 x i64] }*
  %_ind4723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4723
  %_ind4724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4724
  %_ind4725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4725
  %_ind4726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4722, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4726
  %_raw_array4727 = call i64* @oat_alloc_array(i64 4)
  %_array4728 = bitcast i64* %_raw_array4727 to { i64, [0 x i64] }*
  %_ind4729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4728, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4729
  %_ind4730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4728, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4730
  %_ind4731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4728, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4731
  %_ind4732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4728, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4732
  %_raw_array4733 = call i64* @oat_alloc_array(i64 4)
  %_array4734 = bitcast i64* %_raw_array4733 to { i64, [0 x i64] }*
  %_ind4735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4734, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4735
  %_ind4736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4734, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4736
  %_ind4737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4734, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4737
  %_ind4738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4734, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4738
  %_raw_array4739 = call i64* @oat_alloc_array(i64 4)
  %_array4740 = bitcast i64* %_raw_array4739 to { i64, [0 x i64] }*
  %_ind4741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4740, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4741
  %_ind4742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4740, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4742
  %_ind4743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4740, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4743
  %_ind4744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4740, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4744
  %_ind4745 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4720, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4722, { i64, [0 x i64] }** %_ind4745
  %_ind4746 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4720, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4728, { i64, [0 x i64] }** %_ind4746
  %_ind4747 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4720, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4734, { i64, [0 x i64] }** %_ind4747
  %_ind4748 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4720, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4740, { i64, [0 x i64] }** %_ind4748
  %new_board = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4720, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_i4749 = alloca i64
  store i64 0, i64* %_i4749
  br label %_while4777
_while4777:
  %_local4750 = load i64, i64* %_i4749
  %_bop4751 = icmp slt i64 %_local4750, 4
  br i1 %_bop4751, label %_do4778, label %_elihw4779
_do4778:
  %_raw_array4752 = call i64* @oat_alloc_array(i64 4)
  %_array4753 = bitcast i64* %_raw_array4752 to { i64, [0 x i64] }*
  %_local4754 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_local4755 = load i64, i64* %_i4749
  %_ind_assign4756 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4754, i32 0, i32 1, i64 %_local4755
  store { i64, [0 x i64] }* %_array4753, { i64, [0 x i64] }** %_ind_assign4756
  %_j4757 = alloca i64
  store i64 0, i64* %_j4757
  br label %_while4772
_while4772:
  %_local4758 = load i64, i64* %_j4757
  %_bop4759 = icmp slt i64 %_local4758, 4
  br i1 %_bop4759, label %_do4773, label %_elihw4774
_do4773:
  %_local4760 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %board
  %_local4761 = load i64, i64* %_i4749
  %_local4762 = load i64, i64* %_j4757
  %_ret4763 = call i64 @_val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_local4760, i64 %_local4761, i64 %_local4762)
  %_local4764 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_local4765 = load i64, i64* %_i4749
  %_ptr4766 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4764, i32 0, i32 1, i64 %_local4765
  %_elem4767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4766
  %_local4768 = load i64, i64* %_j4757
  %_ind_assign4769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4767, i32 0, i32 1, i64 %_local4768
  store i64 %_ret4763, i64* %_ind_assign4769
  %_local4770 = load i64, i64* %_j4757
  %_bop4771 = add i64 %_local4770, 1
  store i64 %_bop4771, i64* %_j4757
  br label %_while4772
_elihw4774:
  %_local4775 = load i64, i64* %_i4749
  %_bop4776 = add i64 %_local4775, 1
  store i64 %_bop4776, i64* %_i4749
  br label %_while4777
_elihw4779:
  %_i4780 = alloca i64
  store i64 0, i64* %_i4780
  br label %_while4802
_while4802:
  %_local4781 = load i64, i64* %_i4780
  %_glob4782 = load i64, i64* @_len
  %_bop4783 = icmp slt i64 %_local4781, %_glob4782
  br i1 %_bop4783, label %_do4803, label %_elihw4804
_do4803:
  %_j4784 = alloca i64
  store i64 0, i64* %_j4784
  br label %_while4797
_while4797:
  %_local4785 = load i64, i64* %_j4784
  %_glob4786 = load i64, i64* @_len
  %_bop4787 = icmp slt i64 %_local4785, %_glob4786
  br i1 %_bop4787, label %_do4798, label %_elihw4799
_do4798:
  %_local4788 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_local4789 = load i64, i64* %_i4780
  %_ptr4790 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4788, i32 0, i32 1, i64 %_local4789
  %_elem4791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4790
  %_local4792 = load i64, i64* %_j4784
  %_ptr4793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4791, i32 0, i32 1, i64 %_local4792
  %_elem4794 = load i64, i64* %_ptr4793
  call void @print_int(i64 %_elem4794)
  %_local4795 = load i64, i64* %_j4784
  %_bop4796 = add i64 %_local4795, 1
  store i64 %_bop4796, i64* %_j4784
  br label %_while4797
_elihw4799:
  %_local4800 = load i64, i64* %_i4780
  %_bop4801 = add i64 %_local4800, 1
  store i64 %_bop4801, i64* %_i4780
  br label %_while4802
_elihw4804:
  %_fun_return4805 = bitcast i64 0 to i64
  ret i64 %_fun_return4805
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
