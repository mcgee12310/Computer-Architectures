#Laboratory Exercise 4, Assignment 2
.text 
	li $s0, 0x12345678 	#load 0x12345678 vào $s0
 	andi $t0,$s0,0xff000000	#Extract MSB of $s0
 	srl $t0,$t0,24 	
 	andi $t1,$s0,0xffffff00	#Clear LSB of $s0
 	ori $t2,$s0,0x000000ff	#Set LSB of $s0
 	andi $s0,$s0, 0		#Clear $s0