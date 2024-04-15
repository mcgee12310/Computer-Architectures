#Laboratory Exercise 3, Assigment 6
.data                      # DECLARE VARIABLES 
A: .word 10, 20, 30, 50, -50
.text 
	la $s2, A #s2: dia chi mang A
	addi $s5, $zero, 0 # max = 0 
	addi $s1, $zero, 0 # i = 0 
	addi $s3, $zero, 5 # n = 
	addi $s4, $zero, 1 # step = 
loop: 
	slt $t2, $s1, $s3 # $t2 = i < n ? 1 : 0 
	beq $t2, $zero, endloop 
	add $t1, $s1, $s1 # $t1 = 2 * $s1 
	add $t1, $t1, $t1 # $t1 = 4 * $s1 
	add $t1, $t1, $s2 # $t1 store the address of A[i] 
	lw $t0, 0($t1)  # load value of A[i] in $t0 
	slt $t2, $t0, $zero
	bne $t2, $zero, absolute
	j compare
absolute:
	sub $t0, $zero, $t0
compare:
	slt $t2, $s5, $t0 # if max<A[i]
	bne $t2, $zero, swap
	j plus
swap:	
	add $s5, $t0, $zero
plus:
	add  $s1, $s1, $s4 # i = i + step 
	j loop   # goto loop 
endloop:
