; generated from: hw4programs/run42.oat
target triple = "x86_64-apple-macosx10.13.0"
define i64 @program(i64 %_argc464, { i64, [0 x i8*] }* %_argv465) {
  %argc = alloca i64
  store i64 %_argc464, i64* %argc
  %argv = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv465, { i64, [0 x i8*] }** %argv
  %_raw_array466 = call i64* @oat_alloc_array(i64 3)
  %_array467 = bitcast i64* %_raw_array466 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_newarr468 = bitcast i64 1 to i64
  %_newarr469 = bitcast i64 1 to i64
  %_newarr470 = bitcast i64 1 to i64
  %_ind471 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array467, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_newarr468, { i64, [0 x i64] }** %_ind471
  %_ind472 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array467, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_newarr469, { i64, [0 x i64] }** %_ind472
  %_ind473 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array467, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_newarr470, { i64, [0 x i64] }** %_ind473
  %a1 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array467, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_raw_array474 = call i64* @oat_alloc_array(i64 3)
  %_array475 = bitcast i64* %_raw_array474 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_newarr476 = bitcast i64 1 to i64
  %_newarr477 = bitcast i64 1 to i64
  %_newarr478 = bitcast i64 1 to i64
  %_ind479 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array475, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_newarr476, { i64, [0 x i64] }** %_ind479
  %_ind480 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array475, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_newarr477, { i64, [0 x i64] }** %_ind480
  %_ind481 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array475, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_newarr478, { i64, [0 x i64] }** %_ind481
  %a2 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array475, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_raw_array482 = call i64* @oat_alloc_array(i64 3)
  %_array483 = bitcast i64* %_raw_array482 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_newarr484 = bitcast i64 1 to i64
  %_newarr485 = bitcast i64 1 to i64
  %_newarr486 = bitcast i64 1 to i64
  %_ind487 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array483, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_newarr484, { i64, [0 x i64] }** %_ind487
  %_ind488 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array483, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_newarr485, { i64, [0 x i64] }** %_ind488
  %_ind489 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array483, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_newarr486, { i64, [0 x i64] }** %_ind489
  %a3 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array483, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_raw_array490 = call i64* @oat_alloc_array(i64 3)
  %_array491 = bitcast i64* %_raw_array490 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_newarr492 = bitcast i64 1 to i64
  %_newarr493 = bitcast i64 1 to i64
  %_newarr494 = bitcast i64 1 to i64
  %_ind495 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array491, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_newarr492, { i64, [0 x i64] }** %_ind495
  %_ind496 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array491, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_newarr493, { i64, [0 x i64] }** %_ind496
  %_ind497 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array491, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_newarr494, { i64, [0 x i64] }** %_ind497
  %a4 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array491, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_raw_array498 = call i64* @oat_alloc_array(i64 3)
  %_array499 = bitcast i64* %_raw_array498 to { i64, [0 x i64] }*
  %_ind500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array499, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind500
  %_ind501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array499, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind501
  %_ind502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array499, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind502
  %a5 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array499, { i64, [0 x i64] }** %a5
  %_local504 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_ind_assign505 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local504, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* 0, { i64, [0 x i64] }** %_local504
  %_local506 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_ptr507 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local506, i32 0, i32 1, i32 0
  %_elem508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr507
  %_ind_assign509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem508, i32 0, i32 1, i32 0
  store i64 0, i64* %_elem508
  %_local510 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local510, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_local511 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local511, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_local512 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local512, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_local513 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local513, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_local514 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local514, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_local515 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_local515, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_local516 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_ptr517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local516, i32 0, i32 1, i32 0
  %_elem518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr517
  %_ptr519 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem518, i32 0, i32 1, i32 0
  %_elem520 = load i64, i64* %_ptr519
  ret i64 %_elem520
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
