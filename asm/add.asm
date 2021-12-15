# Test Program to Add two numbers

# a * b
addi $a0, $zero, 0      # sim
addi $t0, $zero, 3    	# a
addi $t1, $zero, 4	    # b
                         
add $a0,$t0,$t1        #return the answer
addi $v0,$zero,1        #set syscall type to print int
SYSCALL                #print $a0
addi $v0,$zero,10       #set syscall type to exit 
SYSCALL                #exit
