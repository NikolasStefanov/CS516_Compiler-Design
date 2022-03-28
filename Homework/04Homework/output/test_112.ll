; generated from: hw4programs/run16.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc954, { i64, [0 x i8*] }* %_argv955) {
  %argc = alloca i64
  store i64 %_argc954, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv955, { i64, [0 x i8*] }** %argv
  %x = alloca i64
  store i64 10, i64* %x
  %_raw_array956 = call i64* @oat_alloc_array(i64 3)
  %_array957 = bitcast i64* %_raw_array956 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array958 = call i64* @oat_alloc_array(i64 3)
  %_array959 = bitcast i64* %_raw_array958 to { i64, [0 x i64] }*
  %_local960 = load i64, i64* %x
  %_bop961 = add i64 %_local960, 0
  %_bop962 = add i64 %_bop961, 0
  %_local963 = load i64, i64* %x
  %_bop964 = add i64 %_local963, 0
  %_bop965 = add i64 %_bop964, 1
  %_local966 = load i64, i64* %x
  %_bop967 = add i64 %_local966, 0
  %_bop968 = add i64 %_bop967, 2
  %_ind969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array959, i32 0, i32 1, i32 0
  store i64 %_bop962, i64* %_ind969
  %_ind970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array959, i32 0, i32 1, i32 1
  store i64 %_bop965, i64* %_ind970
  %_ind971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array959, i32 0, i32 1, i32 2
  store i64 %_bop968, i64* %_ind971
  %_raw_array972 = call i64* @oat_alloc_array(i64 3)
  %_array973 = bitcast i64* %_raw_array972 to { i64, [0 x i64] }*
  %_local974 = load i64, i64* %x
  %_bop975 = add i64 %_local974, 1
  %_bop976 = add i64 %_bop975, 0
  %_local977 = load i64, i64* %x
  %_bop978 = add i64 %_local977, 1
  %_bop979 = add i64 %_bop978, 1
  %_local980 = load i64, i64* %x
  %_bop981 = add i64 %_local980, 1
  %_bop982 = add i64 %_bop981, 2
  %_ind983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array973, i32 0, i32 1, i32 0
  store i64 %_bop976, i64* %_ind983
  %_ind984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array973, i32 0, i32 1, i32 1
  store i64 %_bop979, i64* %_ind984
  %_ind985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array973, i32 0, i32 1, i32 2
  store i64 %_bop982, i64* %_ind985
  %_raw_array986 = call i64* @oat_alloc_array(i64 3)
  %_array987 = bitcast i64* %_raw_array986 to { i64, [0 x i64] }*
  %_local988 = load i64, i64* %x
  %_bop989 = add i64 %_local988, 2
  %_bop990 = add i64 %_bop989, 0
  %_local991 = load i64, i64* %x
  %_bop992 = add i64 %_local991, 2
  %_bop993 = add i64 %_bop992, 1
  %_local994 = load i64, i64* %x
  %_bop995 = add i64 %_local994, 2
  %_bop996 = add i64 %_bop995, 2
  %_ind997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array987, i32 0, i32 1, i32 0
  store i64 %_bop990, i64* %_ind997
  %_ind998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array987, i32 0, i32 1, i32 1
  store i64 %_bop993, i64* %_ind998
  %_ind999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array987, i32 0, i32 1, i32 2
  store i64 %_bop996, i64* %_ind999
  %_ind1000 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array957, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array959, { i64, [0 x i64] }** %_ind1000
  %_ind1001 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array957, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array973, { i64, [0 x i64] }** %_ind1001
  %_ind1002 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array957, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array987, { i64, [0 x i64] }** %_ind1002
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array957, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_local1003 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %b = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local1003, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_local1004 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_ptr1005 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local1004, i32 0, i32 1, i32 2
  %_elem1006 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr1005
  %_ptr1007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem1006, i32 0, i32 1, i32 1
  %_elem1008 = load i64, i64* %_ptr1007
  ret i64 %_elem1008
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
