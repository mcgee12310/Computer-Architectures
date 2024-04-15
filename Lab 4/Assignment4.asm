#Laboratory Exercise 4, Assignment 4
.text 
start: 
	li $t0,0		#Ket qua $t0 = 0 neu khong tran so 
	li $s1, 2147483647
	li $s2, 3 
	addu $s3, $s1, $s2 	# s3 = s1 + s2 
	xor $t1, $s1, $s2 	#Kiem tra xem $s1 va $s2 co cung dau khong 
	bltz $t1, EXIT 		#Neu $t1 < 0, exit 
	xor $t2, $s3, $s1 	#Kiem tra xem $s1 va $s3 co cung dau khong 
	bgtz $t2, EXIT 		#Neu $t2 > 0, exit 
	j OVERFLOW 
OVERFLOW: 
	li $t0,1 		#Neu tran so, ket qua $t0 = 1 
EXIT: