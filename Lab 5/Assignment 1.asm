#Laboratory Exercise 5, Assignment 1 
.data 
	test: .asciiz "Nguyen Khac Hieu 20225839" 
.text 
	li  $v0, 4  	# $v0 = 4 
	la  $a0, test	 # Dia chi cua test duoc ghi vao $a0 
	syscall  	 # Loi goi dich vu he thong 


