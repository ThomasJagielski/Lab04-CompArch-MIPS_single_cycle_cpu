# Test Program to Add two numbers

# a * b
addi $a0, $zero, 0      # sim
addi $t0, $zero, 4    	# a
addi $t1, $zero, 4	    # b
addi $t3, $zero, 8	    # b
jal change

addi $v0,$zero,1        #set syscall type to print int
SYSCALL                #print $a0
addi $v0,$zero,10       #set syscall type to exit 
SYSCALL                #exit

change:
addi $t0, $zero, 1    	# a
addi $t1, $zero, 1	    # b           
add $a0,$t0,$t1        #return the answer
jr $ra