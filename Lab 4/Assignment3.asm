#Laboratory Exercise 4, Assignment 3a
.text
	addi $s1,$zero,-16
	slt $t0,$s1,$zero
	bne $t0,$zero,absoulute
	j load
absoulute:
	sub $s0,$zero,$s1
	j end
load:
	addi $s0,$s1,0
end: