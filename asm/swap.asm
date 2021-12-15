# Example Program 2: Swap
# If a < b:
#	Print a | b, a & b
# Else: 
#	Print b, a (swap)

addi $t0, $zero, 9		# Element 1
addi $t1, $zero, 6		# Element 2
addi $t2, $zero, 0		# Temp Reg 1
addi $t3, $zero, 0		# Temp Reg 2
addi $t4, $zero, 0		# SLT holder
addi $t5, $zero, 0		# Temp Reg 3
addi $t6, $zero, 0		# Temp Reg 4

slt $t4, $t0, $t1
beq $t4, $zero, swap 		# if $t0 > $t1, swap
or $t5, $t0, $t1		# $t0 | $t1
and $t6, $t0, $t1		# $t0 & $t1
add $t0, $zero, $t5
add $t1, $zero, $t6
j printer

swap: 
    add $t2, $zero, $t0		# Copy 1->1
    add $t3, $zero, $t1		# Copy 2->2
    add $t0, $zero, $t3		# Copy 2->1
    add $t1, $zero, $t2		# Copy 1->2
    j printer
    
printer: 
    add $a0,$zero,$t0     	#return the 1st element
    addi $v0,$zero,1      	#set syscall type to print int
    SYSCALL               	#print $a0
    add $a0,$zero,$t1     	#return the 2nd element
    addi $v0,$zero,1      	#set syscall type to print int
    SYSCALL               	#print $a0
    addi $v0,$zero,10     	#set syscall type to exit 
    SYSCALL               	#exit

