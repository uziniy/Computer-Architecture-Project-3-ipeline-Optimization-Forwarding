.text
.globl main

main:
    addi $2, $0, 0x2000         # $2 = base address
    nop
    nop
    nop

    addi $3, $0, 16             # $3 = array size
    nop
    nop
    nop

    add  $4, $0, $3             # $4 = i = array size
    nop
    nop
    nop

L1:
    srl  $4, $4, 1              # $4 = $4 / 2
    nop
    nop
    nop

    blez $4, done               # if i <= 0, go to done
    nop                         # branch delay slot
    nop
    nop

    add  $5, $4, $0             # $5 = j = i
    nop
    nop
    nop

L2:
    slt  $1, $5, $3             # if j < size
    nop
    nop
    nop

    beq  $1, $0, L1             # if not, go to next i
    nop                         # branch delay slot
    nop
    nop

    sll  $6, $5, 2              # offset = j * 4
    nop
    nop
    nop

    add  $6, $6, $2             # addr = base + offset
    nop
    nop
    nop

    lw   $7, 0($6)              # $7 = arr[j]
    nop
    nop
    nop

    add  $8, $5, $0             # $8 = k = j
    nop
    nop
    nop

L3:
    sub  $9, $8, $4             # $9 = k - i
    nop
    nop
    nop

    bltz $9, L4                 # if k - i < 0, exit inner loop
    nop                         # branch delay slot
    nop
    nop

    sll  $10, $9, 2             # offset = (k - i) * 4
    nop
    nop
    nop

    add  $10, $2, $10           # addr = base + offset
    nop
    nop
    nop

    lw   $11, 0($10)            # $11 = arr[k]
    nop
    nop
    nop

    # 수정된 부분: arr[j] < arr[k]이면 swap 수행 → 내림차순 정렬
    slt  $1, $7, $11            # if arr[j] < arr[k]
    nop
    nop
    nop

    beq  $1, $0, L4             # if not, skip swap
    nop                         # branch delay slot
    nop
    nop

    sw   $11, 0($6)             # arr[j] = arr[k]
    nop
    nop
    nop

    add  $6, $10, $0            # $6 = addr of k
    nop
    nop
    nop

    add  $8, $9, $0             # $8 = k = k - 1
    nop
    nop
    nop

    j    L3
    nop

L4:
    sw   $7, 0($6)              # arr[k] = original arr[j]
    nop
    nop
    nop

    addi $5, $5, 1              # j++
    nop
    nop
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
