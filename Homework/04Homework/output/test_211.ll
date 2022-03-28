; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc793, { i64, [0 x i8*] }* %_argv794) {
  %_argc795 = alloca i64
  store i64 %_argc793, i64* %_argc795
  %_argv796 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv794, { i64, [0 x i8*] }** %_argv796
  %_raw_array797 = call i64* @oat_alloc_array(i64 3)
  %_array798 = bitcast i64* %_raw_array797 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array799 = call i64* @oat_alloc_array(i64 1)
  %_array800 = bitcast i64* %_raw_array799 to { i64, [0 x i64] }*
  %_raw_array801 = call i64* @oat_alloc_array(i64 1)
  %_array802 = bitcast i64* %_raw_array801 to { i64, [0 x i64] }*
  %_raw_array803 = call i64* @oat_alloc_array(i64 1)
  %_array804 = bitcast i64* %_raw_array803 to { i64, [0 x i64] }*
  %_ind805 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array800, { i64, [0 x i64] }** %_ind805
  %_ind806 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array802, { i64, [0 x i64] }** %_ind806
  %_ind807 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array804, { i64, [0 x i64] }** %_ind807
  %a1 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array798, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_raw_array808 = call i64* @oat_alloc_array(i64 3)
  %_array809 = bitcast i64* %_raw_array808 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array810 = call i64* @oat_alloc_array(i64 1)
  %_array811 = bitcast i64* %_raw_array810 to { i64, [0 x i64] }*
  %_raw_array812 = call i64* @oat_alloc_array(i64 1)
  %_array813 = bitcast i64* %_raw_array812 to { i64, [0 x i64] }*
  %_raw_array814 = call i64* @oat_alloc_array(i64 1)
  %_array815 = bitcast i64* %_raw_array814 to { i64, [0 x i64] }*
  %_ind816 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array809, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array811, { i64, [0 x i64] }** %_ind816
  %_ind817 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array809, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array813, { i64, [0 x i64] }** %_ind817
  %_ind818 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array809, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array815, { i64, [0 x i64] }** %_ind818
  %a2 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array809, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_raw_array819 = call i64* @oat_alloc_array(i64 3)
  %_array820 = bitcast i64* %_raw_array819 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array821 = call i64* @oat_alloc_array(i64 1)
  %_array822 = bitcast i64* %_raw_array821 to { i64, [0 x i64] }*
  %_raw_array823 = call i64* @oat_alloc_array(i64 1)
  %_array824 = bitcast i64* %_raw_array823 to { i64, [0 x i64] }*
  %_raw_array825 = call i64* @oat_alloc_array(i64 1)
  %_array826 = bitcast i64* %_raw_array825 to { i64, [0 x i64] }*
  %_ind827 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array820, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array822, { i64, [0 x i64] }** %_ind827
  %_ind828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array820, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array824, { i64, [0 x i64] }** %_ind828
  %_ind829 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array820, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array826, { i64, [0 x i64] }** %_ind829
  %a3 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array820, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_raw_array830 = call i64* @oat_alloc_array(i64 3)
  %_array831 = bitcast i64* %_raw_array830 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array832 = call i64* @oat_alloc_array(i64 1)
  %_array833 = bitcast i64* %_raw_array832 to { i64, [0 x i64] }*
  %_raw_array834 = call i64* @oat_alloc_array(i64 1)
  %_array835 = bitcast i64* %_raw_array834 to { i64, [0 x i64] }*
  %_raw_array836 = call i64* @oat_alloc_array(i64 1)
  %_array837 = bitcast i64* %_raw_array836 to { i64, [0 x i64] }*
  %_ind838 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array831, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array833, { i64, [0 x i64] }** %_ind838
  %_ind839 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array831, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array835, { i64, [0 x i64] }** %_ind839
  %_ind840 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array831, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array837, { i64, [0 x i64] }** %_ind840
  %a4 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array831, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_raw_array841 = call i64* @oat_alloc_array(i64 3)
  %_array842 = bitcast i64* %_raw_array841 to { i64, [0 x i64] }*
  %_ind843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array842, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind843
  %_ind844 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array842, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind844
  %_ind845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array842, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind845
  %a5 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array842, { i64, [0 x i64] }** %a5
  %_local846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a5
  %_local847 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_ind_assign848 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local847, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_local846, { i64, [0 x i64] }** %_ind_assign848
  %_local849 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_ptr850 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local849, i32 0, i32 1, i32 0
  %_elem851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr850
  %_ind_assign852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem851, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind_assign852
  %_local853 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local853, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_local854 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local854, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_local855 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local855, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_local856 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local856, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_local857 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local857, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_local858 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local858, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_local860 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_ptr861 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local860, i32 0, i32 1, i32 0
  %_elem862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr861
  %_ptr863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem862, i32 0, i32 1, i32 0
  %_elem864 = load i64, i64* %_ptr863
  %_fun_return859 = bitcast i64 %_elem864 to i64
  ret i64 %_fun_return859
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
