.text # Recursion 
addi x11, x0, 6 
addi x4, sp, 0 
addi x20, x0, 1
addi x21, x0, 1
factorialn: #store in stack factorial(n)
    sw x11, 0(sp)
    addi sp, sp, 4
    addi x11, x11, -1
    beq x11, x20, factorial1 
    j factorialn
factorial1:
    sw x11, 0(sp)
    addi sp, sp, 4
main: 
    addi sp, sp, -4 #stack ponit
    lw x11, 0(sp)
    mul x20, x20, x11
    mulhu x21, x20, x11
    addi x11, x11, -1
    bne sp, x4, main #stack is empty