; generated from: hw4programs/life.oat
target triple = "x86_64-apple-macosx10.13.0"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4775, i64 %_i4776, i64 %_j4777, i64 %_count4778) {
  %_board4779 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4775, { i64, [0 x { i64, [0 x i64] }*] }** %_board4779
  %_i4780 = alloca i64
  store i64 %_i4776, i64* %_i4780
  %_j4781 = alloca i64
  store i64 %_j4777, i64* %_j4781
  %_count4782 = alloca i64
  store i64 %_count4778, i64* %_count4782
  %_local4783 = load i64, i64* %_i4780
  %_bop4784 = icmp sge i64 %_local4783, 0
  %_local4785 = load i64, i64* %_j4781
  %_bop4786 = icmp sge i64 %_local4785, 0
  %_bop4787 = and i1 %_bop4784, %_bop4786
  %_local4788 = load i64, i64* %_i4780
  %_glob4789 = load i64, i64* @_len
  %_bop4790 = icmp slt i64 %_local4788, %_glob4789
  %_bop4791 = and i1 %_bop4787, %_bop4790
  %_local4792 = load i64, i64* %_j4781
  %_glob4793 = load i64, i64* @_len
  %_bop4794 = icmp slt i64 %_local4792, %_glob4793
  %_bop4795 = and i1 %_bop4791, %_bop4794
  br i1 %_bop4795, label %_if4808, label %_else4809
_if4808:
  %_local4797 = load i64, i64* %_count4782
  %_local4798 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4779
  %_local4799 = load i64, i64* %_i4780
  %_ptr4800 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4798, i32 0, i32 1, i64 %_local4799
  %_elem4801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4800
  %_local4802 = load i64, i64* %_j4781
  %_ptr4803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4801, i32 0, i32 1, i64 %_local4802
  %_elem4804 = load i64, i64* %_ptr4803
  %_bop4805 = add i64 %_local4797, %_elem4804
  %_fun_return4796 = bitcast i64 %_bop4805 to i64
  ret i64 %_fun_return4796
_else4809:
  %_local4807 = load i64, i64* %_count4782
  %_fun_return4806 = bitcast i64 %_local4807 to i64
  ret i64 %_fun_return4806
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board4684, i64 %_i4685, i64 %_j4686) {
  %_board4687 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4684, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_i4688 = alloca i64
  store i64 %_i4685, i64* %_i4688
  %_j4689 = alloca i64
  store i64 %_j4686, i64* %_j4689
  %_local4690 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4691 = load i64, i64* %_i4688
  %_ptr4692 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4690, i32 0, i32 1, i64 %_local4691
  %_elem4693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4692
  %_local4694 = load i64, i64* %_j4689
  %_ptr4695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4693, i32 0, i32 1, i64 %_local4694
  %_elem4696 = load i64, i64* %_ptr4695
  %alive = alloca i64
  store i64 %_elem4696, i64* %alive
  %count = alloca i64
  store i64 0, i64* %count
  %_local4697 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4698 = load i64, i64* %_i4688
  %_bop4699 = sub i64 %_local4698, 1
  %_local4700 = load i64, i64* %_j4689
  %_bop4701 = sub i64 %_local4700, 1
  %_local4702 = load i64, i64* %count
  %_ret4703 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4697, i64 %_bop4699, i64 %_bop4701, i64 %_local4702)
  store i64 %_ret4703, i64* %count
  %_local4704 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4705 = load i64, i64* %_i4688
  %_bop4706 = sub i64 %_local4705, 1
  %_local4707 = load i64, i64* %_j4689
  %_local4708 = load i64, i64* %count
  %_ret4709 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4704, i64 %_bop4706, i64 %_local4707, i64 %_local4708)
  store i64 %_ret4709, i64* %count
  %_local4710 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4711 = load i64, i64* %_i4688
  %_bop4712 = sub i64 %_local4711, 1
  %_local4713 = load i64, i64* %_j4689
  %_bop4714 = add i64 %_local4713, 1
  %_local4715 = load i64, i64* %count
  %_ret4716 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4710, i64 %_bop4712, i64 %_bop4714, i64 %_local4715)
  store i64 %_ret4716, i64* %count
  %_local4717 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4718 = load i64, i64* %_i4688
  %_local4719 = load i64, i64* %_j4689
  %_bop4720 = sub i64 %_local4719, 1
  %_local4721 = load i64, i64* %count
  %_ret4722 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4717, i64 %_local4718, i64 %_bop4720, i64 %_local4721)
  store i64 %_ret4722, i64* %count
  %_local4723 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4724 = load i64, i64* %_i4688
  %_local4725 = load i64, i64* %_j4689
  %_bop4726 = add i64 %_local4725, 1
  %_local4727 = load i64, i64* %count
  %_ret4728 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4723, i64 %_local4724, i64 %_bop4726, i64 %_local4727)
  store i64 %_ret4728, i64* %count
  %_local4729 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4730 = load i64, i64* %_i4688
  %_bop4731 = add i64 %_local4730, 1
  %_local4732 = load i64, i64* %_j4689
  %_bop4733 = sub i64 %_local4732, 1
  %_local4734 = load i64, i64* %count
  %_ret4735 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4729, i64 %_bop4731, i64 %_bop4733, i64 %_local4734)
  store i64 %_ret4735, i64* %count
  %_local4736 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4737 = load i64, i64* %_i4688
  %_bop4738 = add i64 %_local4737, 1
  %_local4739 = load i64, i64* %_j4689
  %_local4740 = load i64, i64* %count
  %_ret4741 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4736, i64 %_bop4738, i64 %_local4739, i64 %_local4740)
  store i64 %_ret4741, i64* %count
  %_local4742 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4687
  %_local4743 = load i64, i64* %_i4688
  %_bop4744 = add i64 %_local4743, 1
  %_local4745 = load i64, i64* %_j4689
  %_bop4746 = add i64 %_local4745, 1
  %_local4747 = load i64, i64* %count
  %_ret4748 = call i64 @_check({ i64, [0 x { i64, [0 x i64] }*] }* %_local4742, i64 %_bop4744, i64 %_bop4746, i64 %_local4747)
  store i64 %_ret4748, i64* %count
  %_local4749 = load i64, i64* %alive
  %_bop4750 = icmp eq i64 %_local4749, 1
  br i1 %_bop4750, label %_if4764, label %_else4765
_if4764:
  %_local4751 = load i64, i64* %count
  %_bop4752 = icmp slt i64 %_local4751, 2
  br i1 %_bop4752, label %_if4760, label %_else4761
_if4760:
  %_fun_return4753 = bitcast i64 0 to i64
  ret i64 %_fun_return4753
_else4761:
  %_local4754 = load i64, i64* %count
  %_bop4755 = icmp slt i64 %_local4754, 4
  br i1 %_bop4755, label %_if4757, label %_else4758
_if4757:
  %_fun_return4756 = bitcast i64 1 to i64
  ret i64 %_fun_return4756
_else4758:
  br label %_fi4759
_fi4759:
  br label %_fi4762
_fi4762:
  %_fun_return4763 = bitcast i64 0 to i64
  ret i64 %_fun_return4763
_else4765:
  br label %_fi4766
_fi4766:
  %_local4767 = load i64, i64* %count
  %_bop4768 = icmp eq i64 %_local4767, 3
  br i1 %_bop4768, label %_if4771, label %_else4772
_if4771:
  %_fun_return4769 = bitcast i64 1 to i64
  ret i64 %_fun_return4769
_else4772:
  %_fun_return4770 = bitcast i64 0 to i64
  ret i64 %_fun_return4770
_fi4773:
  %_fun_return4774 = bitcast i64 0 to i64
  ret i64 %_fun_return4774
}

define i64 @program(i64 %_argc4563, { i64, [0 x i8*] }* %_argv4564) {
  %_argc4565 = alloca i64
  store i64 %_argc4563, i64* %_argc4565
  %_argv4566 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_argv4564, { i64, [0 x i8*] }** %_argv4566
  %_raw_array4567 = call i64* @oat_alloc_array(i64 4)
  %_array4568 = bitcast i64* %_raw_array4567 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4569 = call i64* @oat_alloc_array(i64 4)
  %_array4570 = bitcast i64* %_raw_array4569 to { i64, [0 x i64] }*
  %_ind4571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4570, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4571
  %_ind4572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4570, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4572
  %_ind4573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4570, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4573
  %_ind4574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4570, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4574
  %_raw_array4575 = call i64* @oat_alloc_array(i64 4)
  %_array4576 = bitcast i64* %_raw_array4575 to { i64, [0 x i64] }*
  %_ind4577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4576, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4577
  %_ind4578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4576, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4578
  %_ind4579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4576, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4579
  %_ind4580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4576, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind4580
  %_raw_array4581 = call i64* @oat_alloc_array(i64 4)
  %_array4582 = bitcast i64* %_raw_array4581 to { i64, [0 x i64] }*
  %_ind4583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4582, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind4583
  %_ind4584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4582, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4584
  %_ind4585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4582, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4585
  %_ind4586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4582, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4586
  %_raw_array4587 = call i64* @oat_alloc_array(i64 4)
  %_array4588 = bitcast i64* %_raw_array4587 to { i64, [0 x i64] }*
  %_ind4589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4588, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4589
  %_ind4590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4588, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4590
  %_ind4591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4588, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4591
  %_ind4592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4588, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4592
  %_ind4593 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4568, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4570, { i64, [0 x i64] }** %_ind4593
  %_ind4594 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4568, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4576, { i64, [0 x i64] }** %_ind4594
  %_ind4595 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4568, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4582, { i64, [0 x i64] }** %_ind4595
  %_ind4596 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4568, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4588, { i64, [0 x i64] }** %_ind4596
  %board = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4568, { i64, [0 x { i64, [0 x i64] }*] }** %board
  %_raw_array4597 = call i64* @oat_alloc_array(i64 4)
  %_array4598 = bitcast i64* %_raw_array4597 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4599 = call i64* @oat_alloc_array(i64 4)
  %_array4600 = bitcast i64* %_raw_array4599 to { i64, [0 x i64] }*
  %_ind4601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4600, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4601
  %_ind4602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4600, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4602
  %_ind4603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4600, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4603
  %_ind4604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4600, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4604
  %_raw_array4605 = call i64* @oat_alloc_array(i64 4)
  %_array4606 = bitcast i64* %_raw_array4605 to { i64, [0 x i64] }*
  %_ind4607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4607
  %_ind4608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4608
  %_ind4609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4609
  %_ind4610 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4606, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4610
  %_raw_array4611 = call i64* @oat_alloc_array(i64 4)
  %_array4612 = bitcast i64* %_raw_array4611 to { i64, [0 x i64] }*
  %_ind4613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4612, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4613
  %_ind4614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4612, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4614
  %_ind4615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4612, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4615
  %_ind4616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4612, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4616
  %_raw_array4617 = call i64* @oat_alloc_array(i64 4)
  %_array4618 = bitcast i64* %_raw_array4617 to { i64, [0 x i64] }*
  %_ind4619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4619
  %_ind4620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4620
  %_ind4621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4621
  %_ind4622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4622
  %_ind4623 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4598, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4600, { i64, [0 x i64] }** %_ind4623
  %_ind4624 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4598, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4606, { i64, [0 x i64] }** %_ind4624
  %_ind4625 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4598, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4612, { i64, [0 x i64] }** %_ind4625
  %_ind4626 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4598, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4618, { i64, [0 x i64] }** %_ind4626
  %new_board = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4598, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_i4627 = alloca i64
  store i64 0, i64* %_i4627
  br label %_while4655
_while4655:
  %_local4628 = load i64, i64* %_i4627
  %_bop4629 = icmp slt i64 %_local4628, 4
  br i1 %_bop4629, label %_do4656, label %_elihw4657
_do4656:
  %_raw_array4630 = call i64* @oat_alloc_array(i64 4)
  %_array4631 = bitcast i64* %_raw_array4630 to { i64, [0 x i64] }*
  %_local4632 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_local4633 = load i64, i64* %_i4627
  %_ind_assign4634 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4632, i32 0, i32 1, i64 %_local4633
  store { i64, [0 x i64] }* %_array4631, { i64, [0 x i64] }** %_ind_assign4634
  %_j4635 = alloca i64
  store i64 0, i64* %_j4635
  br label %_while4650
_while4650:
  %_local4636 = load i64, i64* %_j4635
  %_bop4637 = icmp slt i64 %_local4636, 4
  br i1 %_bop4637, label %_do4651, label %_elihw4652
_do4651:
  %_local4638 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %board
  %_local4639 = load i64, i64* %_i4627
  %_local4640 = load i64, i64* %_j4635
  %_ret4641 = call i64 @_val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_local4638, i64 %_local4639, i64 %_local4640)
  %_local4642 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_local4643 = load i64, i64* %_i4627
  %_ptr4644 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4642, i32 0, i32 1, i64 %_local4643
  %_elem4645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4644
  %_local4646 = load i64, i64* %_j4635
  %_ind_assign4647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4645, i32 0, i32 1, i64 %_local4646
  store i64 %_ret4641, i64* %_ind_assign4647
  %_local4648 = load i64, i64* %_j4635
  %_bop4649 = add i64 %_local4648, 1
  store i64 %_bop4649, i64* %_j4635
  br label %_while4650
_elihw4652:
  %_local4653 = load i64, i64* %_i4627
  %_bop4654 = add i64 %_local4653, 1
  store i64 %_bop4654, i64* %_i4627
  br label %_while4655
_elihw4657:
  %_i4658 = alloca i64
  store i64 0, i64* %_i4658
  br label %_while4680
_while4680:
  %_local4659 = load i64, i64* %_i4658
  %_glob4660 = load i64, i64* @_len
  %_bop4661 = icmp slt i64 %_local4659, %_glob4660
  br i1 %_bop4661, label %_do4681, label %_elihw4682
_do4681:
  %_j4662 = alloca i64
  store i64 0, i64* %_j4662
  br label %_while4675
_while4675:
  %_local4663 = load i64, i64* %_j4662
  %_glob4664 = load i64, i64* @_len
  %_bop4665 = icmp slt i64 %_local4663, %_glob4664
  br i1 %_bop4665, label %_do4676, label %_elihw4677
_do4676:
  %_local4666 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_local4667 = load i64, i64* %_i4658
  %_ptr4668 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_local4666, i32 0, i32 1, i64 %_local4667
  %_elem4669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr4668
  %_local4670 = load i64, i64* %_j4662
  %_ptr4671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_elem4669, i32 0, i32 1, i64 %_local4670
  %_elem4672 = load i64, i64* %_ptr4671
  call void @print_int(i64 %_elem4672)
  %_local4673 = load i64, i64* %_j4662
  %_bop4674 = add i64 %_local4673, 1
  store i64 %_bop4674, i64* %_j4662
  br label %_while4675
_elihw4677:
  %_local4678 = load i64, i64* %_i4658
  %_bop4679 = add i64 %_local4678, 1
  store i64 %_bop4679, i64* %_i4658
  br label %_while4680
_elihw4682:
  %_fun_return4683 = bitcast i64 0 to i64
  ret i64 %_fun_return4683
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
