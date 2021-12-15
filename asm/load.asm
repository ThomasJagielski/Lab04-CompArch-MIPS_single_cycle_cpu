# Save Word
la $t0 len
lw $a0, 0($t0)
la $a1 fibs
li $t0 1
sw $t0, 0($a1)
li $t1 1
sw $t1, 4($a1)
li $t3 2

addi $v0,$zero,1      #set syscall type to print int
SYSCALL               #print $a0
addi $v0,$zero,10     #set syscall type to exit 
SYSCALL               #exit
.data
fibs: .word 0 : 100
len:  .word 20

