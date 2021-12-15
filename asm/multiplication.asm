# Example Program 1: Multiplication

# a * b
addi $a0, $zero, 2        # b
addi $t0, $zero, 2        # a
addi $t1, $zero, 0	  # Sum
addi $t2, $zero, 0	  # counter
                         
loop:
    beq $t2,$a0,breakloop # if (counter == b) goto breakloop;
    add $t1,$t1,$t0       # Sum = Sum + a
    addi $t2,$t2,1        # counter++
    j loop                #restart loop
    
breakloop:
    add $a0,$zero,$t1    #return the answer
    addi $v0,$zero,1      #set syscall type to print int
    SYSCALL               #print $a0
    addi $v0,$zero,10     #set syscall type to exit 
    SYSCALL               #exit
