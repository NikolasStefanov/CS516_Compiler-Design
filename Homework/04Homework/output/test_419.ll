; generated from: hw4programs/run37.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc767, { i64, [0 x i8*] }* %_argv768) {
  %_argc769 = alloca i64
  store i64 %_argc767, i64* %_argc769
  %_argv770 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv768, { i64, [0 x i8*] }** %_argv770
  %_raw_array771 = call i64* @oat_alloc_array(i64 2)
  %_array772 = bitcast i64* %_raw_array771 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array773 = call i64* @oat_alloc_array(i64 2)
  %_array774 = bitcast i64* %_raw_array773 to { i64, [0 x i64] }*
  %_ind775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array774, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind775
  %_ind776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array774, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind776
  %_raw_array777 = call i64* @oat_alloc_array(i64 2)
  %_array778 = bitcast i64* %_raw_array777 to { i64, [0 x i64] }*
  %_ind779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array778, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind779
  %_ind780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array778, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind780
  %_ind781 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array772, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array774, { i64, [0 x i64] }** %_ind781
  %_ind782 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array772, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array778, { i64, [0 x i64] }** %_ind782
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array772, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local784 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_ptr785 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local784, i32 0, i32 1, i32 0
  %_elem786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr785
  %_ptr787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem786, i32 0, i32 1, i32 1
  %_elem788 = load i64, i64* %_ptr787
  %_fun_return783 = bitcast i64 %_elem788 to i64
  ret i64 %_fun_return783
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
