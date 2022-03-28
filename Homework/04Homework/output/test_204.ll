; generated from: hw4programs/run35.oat
target triple = "x86_64-apple-macosx10.13.0"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc579, { i64, [0 x i8*] }* %_argv580) {
  %_argc581 = alloca i64
  store i64 %_argc579, i64* %_argc581
  %_argv582 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv580, { i64, [0 x i8*] }** %_argv582
  %_raw_array583 = call i64* @oat_alloc_array(i64 3)
  %_array584 = bitcast i64* %_raw_array583 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array585 = call i64* @oat_alloc_array(i64 4)
  %_array586 = bitcast i64* %_raw_array585 to { i64, [0 x i64] }*
  %_ind587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array586, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind587
  %_ind588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array586, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind588
  %_ind589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array586, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind589
  %_ind590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array586, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind590
  %_raw_array591 = call i64* @oat_alloc_array(i64 4)
  %_array592 = bitcast i64* %_raw_array591 to { i64, [0 x i64] }*
  %_ind593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind593
  %_ind594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind594
  %_ind595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind595
  %_ind596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind596
  %_raw_array597 = call i64* @oat_alloc_array(i64 4)
  %_array598 = bitcast i64* %_raw_array597 to { i64, [0 x i64] }*
  %_ind599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array598, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind599
  %_ind600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array598, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind600
  %_ind601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array598, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind601
  %_ind602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array598, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind602
  %_ind603 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array584, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array586, { i64, [0 x i64] }** %_ind603
  %_ind604 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array584, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array592, { i64, [0 x i64] }** %_ind604
  %_ind605 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array584, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array598, { i64, [0 x i64] }** %_ind605
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array584, { i64, [0 x { i64, [0 x i64] }*] }** @_a
  %s = alloca i64
  store i64 0, i64* %s
  %_i606 = alloca i64
  store i64 0, i64* %_i606
  br label %_while628
_while628:
  %_local607 = load i64, i64* %_i606
  %_bop608 = icmp slt i64 %_local607, 3
  br i1 %_bop608, label %_do629, label %_elihw630
_do629:
  %_j609 = alloca i64
  store i64 0, i64* %_j609
  br label %_while623
_while623:
  %_local610 = load i64, i64* %_j609
  %_bop611 = icmp slt i64 %_local610, 4
  br i1 %_bop611, label %_do624, label %_elihw625
_do624:
  %_local612 = load i64, i64* %s
  %_glob613 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @_a
  %_local614 = load i64, i64* %_i606
  %_ptr615 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_glob613, i32 0, i32 1, i64 %_local614
  %_elem616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr615
  %_local617 = load i64, i64* %_j609
  %_ptr618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem616, i32 0, i32 1, i64 %_local617
  %_elem619 = load i64, i64* %_ptr618
  %_bop620 = add i64 %_local612, %_elem619
  store i64 %_bop620, i64* %s
  %_local621 = load i64, i64* %_j609
  %_bop622 = add i64 %_local621, 1
  store i64 %_bop622, i64* %_j609
  br label %_while623
_elihw625:
  %_local626 = load i64, i64* %_i606
  %_bop627 = add i64 %_local626, 1
  store i64 %_bop627, i64* %_i606
  br label %_while628
_elihw630:
  %_local632 = load i64, i64* %s
  %_fun_return631 = bitcast i64 %_local632 to i64
  ret i64 %_fun_return631
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
