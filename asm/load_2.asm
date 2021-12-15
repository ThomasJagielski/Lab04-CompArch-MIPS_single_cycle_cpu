addi $s0, $zero, 1000
addi $s1, $s0, 0
addi $s2, $s0, 4
addi $s3, $s0, 8
addi $s4, $s0, 12

lw $t0, 8($s4)
lw $t1, 8($s1)
add $t0, $t0, $t1
sw $t0, 12($s4)