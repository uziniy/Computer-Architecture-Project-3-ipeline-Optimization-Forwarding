    .text
    .globl main

main:
    addi $2, $0, 0x2000
    addi $3, $0, 16
    nop
    nop
    add  $4, $0, $3

L1:
    srl  $4, $4, 1
    nop
    nop
    blez $4, done
    nop
    add  $5, $4, $0

L2:
    slt  $1, $5, $3
    nop
    nop
    beq  $1, $0, L1
    nop
    sll  $6, $5, 2
    nop
    nop
    add  $6, $6, $2
    nop
    nop
    lw   $7, 0($6)
    nop
    nop
    add  $8, $5, $0

L3:
    sub  $9, $8, $4
    nop
    nop
    bltz $9, L4
    nop
    sll  $10, $9, 2
    nop
    nop
    add  $10, $2, $10
    nop
    nop
    lw   $11, 0($10)
    nop
    nop
    slt  $1, $7, $11
    nop
    nop
    beq  $1, $0, L4
    nop
    sw   $11, 0($6)
    nop
    add  $6, $10, $0
    nop
    add  $8, $9, $0
    nop
    j    L3
    nop

L4:
    sw   $7, 0($6)
    nop
    addi $5, $5, 1
    nop
    j    L2
    nop

done:
    break

.data
LC0:
    .word   31028
    .word   16610
    .word   12937
    .word   7525
    .word   25005
    .word   17956
    .word   23964
    .word   13951
    .word   3084
    .word   23696
    .word   3881
    .word   11872
    .word   24903
    .word   16843
    .word   25957
    .word   25086