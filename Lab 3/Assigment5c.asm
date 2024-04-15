#Laboratory Exercise 3, Assigment 5c
.data                      # DECLARE VARIABLES 
A: .word 10, 20, 30, 40, 50
.text 
	la $s2, A #s2: dia chi mang A
	addi $s5, $zero, 0 # sum = 0 
	addi $s1, $zero, 0 # i = 0 
	addi $s3, $zero, 5 # n = 
	addi $s4, $zero, 1 # step = 
loop: 
	add  $t1, $s1, $s1 # $t1 = 2 * $s1 
	add $t1, $t1, $t1 # $t1 = 4 * $s1  
	add $t1, $t1, $s2 # $t1 store the address of A[i] 
	lw $t0, 0($t1)  # load value of A[i] in $t0 
	add $s5, $s5, $t0 # sum = sum + A[i] 
	slt $t2, $s5, $zero # $s5 = sum < 0 ? 1 : 0 
	bne $t2, $zero, endloop 
	add  $s1, $s1, $s4 # i = i + step 
	j loop   # goto loop 
endloop:
