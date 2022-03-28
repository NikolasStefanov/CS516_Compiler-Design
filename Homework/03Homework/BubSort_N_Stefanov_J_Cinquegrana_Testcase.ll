%array_type = type [5 x i64]

@test_arr = global %array_type [ i64 4, i64 2, i64 1, i64 3, i64 4 ]

@swaps = global i64 0

define void @swap(i64* %i, i64* %j) {
  %1 = load i64, i64* %i
  %2 = load i64, i64* %j
  store i64 %1, i64* %j
  store i64 %2, i64* %i
  %3 = load i64, i64* @swaps
  %4 = add i64 %3, 1
  store i64 %4, i64* @swaps
  ret void
}

define void @succ(i64* %arg) {
  %1 = load i64, i64* %arg
  %2 = add i64 %1, 1
  store i64 %2, i64* %arg
  ret void
}

define void @loop(%array_type* %arr, i64 %top) {
    %bot = alloca i64
    store i64 0, i64* %bot
    br label %start
  start:  ; The beginning of the function
    %bot_val = load i64, i64* %bot
    %attop = icmp eq i64 %top, %bot_val
    br i1 %attop, label %end, label %else

  else:
    ; Swap bot and bot+1
    %first = getelementptr %array_type, %array_type* %arr, i64 0, i64 %bot_val
    %s_index = add i64 %bot_val, 1
    %second = getelementptr %array_type, %array_type* %arr, i64 0, i64 %s_index
    %first_val = load i64, i64* %first
    %second_val = load i64, i64* %second
    %should_swap = icmp sgt i64 %first_val, %second_val
    br i1 %should_swap, label %do_swap, label %no_swap
  do_swap:
    call void @swap(i64* %first, i64* %second)                                          
    br label %no_swap
  no_swap:
    call void @succ(i64* %bot)
    br label %start

  end:
    ret void
}

define void @bub(%array_type* %arr) {
  call void @loop(%array_type* %arr, i64 4)
  call void @loop(%array_type* %arr, i64 3)
  call void @loop(%array_type* %arr, i64 2)
  call void @loop(%array_type* %arr, i64 1)
  ret void
}

; define void @print_arr(%array_type* %arr) {
;   %1 = getelementptr %array_type, %array_type* %arr, i64 0, i64 0
;   %2 = getelementptr %array_type, %array_type* %arr, i64 0, i64 1
;   %3 = getelementptr %array_type, %array_type* %arr, i64 0, i64 2
;   %4 = getelementptr %array_type, %array_type* %arr, i64 0, i64 3
;   %5 = getelementptr %array_type, %array_type* %arr, i64 0, i64 4
;   %6 = load i64, i64* %1
;   %7 = load i64, i64* %2
;   %8 = load i64, i64* %3
;   %9 = load i64, i64* %4
;   %10 = load i64, i64* %5
;   call void @print_num(i64 %6)
;   call void @print_num(i64 %7)
;   call void @print_num(i64 %8)
;   call void @print_num(i64 %9)
;   call void @print_num(i64 %10)
;   ret void
; }

define i64 @main(i64 %argc, i8** %arcv) {
  ; Takes size of array and array
  call void @bub(%array_type* @test_arr)  
  ;call void @print_arr(%array_type* @test_arr)  
  %1 = load i64, i64* @swaps
  ret i64 %1                                   
}

