#Laboratory Exercise 3, Assignment 4c
.data                      # DECLARE VARIABLES 
i :  .word    -1  	
j :  .word   -1 	
.text  
la    $t8, i           # Get the address of X in Data Segment 
la    $t9, j           # Get the address of Y in Data Segment 
lw    $s1, 0($t8)      # $t1 = i
lw    $s2, 0($t9)      # $t2 = j
add   $s1,$s1,$s2	# $s1 = i+j
start: 
	slt $t0,$zero,$s1  # 0<i+j 
	bne $t0,$zero,else # branch to else 
	addi $t1,$t1,1  #then part: x=x+1 
	addi $t3,$zero,1  # z=1 
	j endif   # skip �else� part 
else: 
	addi $t2,$t2,-1  # begin else part: y=y-1 
	add $t3,$t3,$t3  # z=2*z 
endif: 
