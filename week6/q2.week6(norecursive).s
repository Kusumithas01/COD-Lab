.text 
addi x10, x0, 5 
addi x11, x0, 1
addi x12, x0, 1
loop:
    mul x11, x11, x10
    mulhu x12, x11, x10
    addi x10, x10, -1
    bnez x10, loop