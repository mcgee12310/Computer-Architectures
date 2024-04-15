#Laboratory Exercise 4, Assignment 5
.text
	addi $s0, $zero, 3 	#Dua so hang vao $s0
 	addi $s1, $zero, 16 	#Dua thua so vao $s1
 	addi $t0, $zero, 1 	#Cai dat $t0 co gia tri 1
loop: 
 	beq $s1, $t0, exit 	#Neu $s1 chi con gia tri la 1 thi ket thuc vong lap 
 	sll $s0, $s0, 1 	#Tang gia tri $s0 len 2 lan 
 	srl $s1, $s1, 1 	#Giam gia tri $s1 di 2 lan
 	j loop 			#Lap lai 
exit: 
 	add $t9, $zero, $s0	#Luu ket qua vao $t9 