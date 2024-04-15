#Laboratory Exercise 5, Assignment 2
.data 
 	str1: .asciiz "The sum of " 
 	str2: .asciiz " and " 
 	str3: .asciiz " is " 
.text 
 	li  $s0, 6   # $s0 = 6
 	li  $s1, 13   # $s1 = 13
 	add  $s2, $s0, $s1 # $s2 = $s0 + $s1 = 6 + 13
 	ád
# Print string "str1" 
 	li  $v0, 4 
 	la  $a0, str1 
 	syscall 
# Print $s0 
 	li  $v0, 1 
 	move $a0, $s0 
 	syscall 
# Print string "str2" 
 	li  $v0, 4 
 	la  $a0, str2 
 	syscall 
# Print $s1 
 	li  $v0, 1 
 	move $a0, $s1 
 	syscall 
# Print string "str3" 
	li  $v0, 4 
	la  $a0, str3 
	syscall 
# Print $t0 
	li  $v0, 1 
	move $a0, $s2 
	syscall 
Exit: 
	li  $v0, 10 
	syscall