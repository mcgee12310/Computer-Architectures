.data 
	A: .word 47,57,85,137,-51,-205,90,65,425,-482
	Aend: .word 
.text 
	la  $a0, A 
	la  $a1, Aend 
	li  $s0, 0 # count = 0 (count la bien dem phan tu)  
	li  $s1, 0 # key = 0 
	li  $s2, 0 # j = 0  
	li  $s3, 1 # i = 1 
DemPhanTu: 
	beq   $a1, $a0, Loop # So sanh dia chi hien tai trong a1 voi dia chi co so cua mang A 
	addi  $a1, $a1, -4 # Dia chi a1 giam de den tung dia chi cua tung phan tu trong mang 
	addi  $s0, $s0, 1  # So luong phan tu tang th�m 1 
	j  DemPhanTu 
Loop: 
	beq  $s3, $s0, Exit # Neu i = So luong phan tu c� trong mang th� tho�t 
	sll  $t0, $s3, 2  # T�nh Offset cua dia chi A[i] 
	add  $s4, $a0, $t0 # T�nh dia chi cua A[i] 
	lw  $s1, 0($s4)  # Load gi� tri A[i] = key 
	addi  $s2, $s3, -1 # j = i - 1 
While:  
	slt  $t1, $s2, $zero # Neu j >= 0 th� t1 = 0  
  	sll  $t0, $s2, 2  # T�nh offset cua dia chi A[j] 
  	add  $s5, $a0, $t0 # T�nh dia chi cua A[j] 
  	lw  $t3, 0($s5)  # Load gi� tri A[j] = thanh ghi t3 
  	sle  $t4, $t3, $s1 # Neu key >= t3 th� t4 = 0 
  	add  $t1, $t1, $t4  
  	bne  $t1, $zero,  loop_continue # Neu t1 = 0 th� dung while 
  	addi  $s5, $s5, 4  # T�nh dia chi cua A[j+1] 
  	sw  $t3, 0($s5)  # Ghi gi� tri A[j] v�o A[j+1] 
  	addi  $s2, $s2, -1 # j = j - 1 
  	j  While    
loop_continue: 
  	addi  $s5, $s5, 4  # T�nh ??a ch? c?a A[j+1] 
  	sw  $s1, 0($s5)  # Ghi gi� tr? key v�o A[j+1] 
  	addi  $s3, $s3, 1  # i++ 
  	j  Loop 
Exit:  
	li $v0, 10 
 	syscall 