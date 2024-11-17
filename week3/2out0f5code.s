.data
a:.byte 0x18
.text
la x9,a
lbu x11,0(x9)
andi x13,x11,0xE0
bne x13,x0,exit

addi x14,x0,5
andi x13,x11,0x01
beq x13,x0,next
addi x15,x15,01
back:
next:srli x11,x11,1
addi x14,x14,-1
bne x14,x0,back
addi x16,x0,2
bne x15,x16,exit
addi x20,x0,0x01
beq x0,x0,exit2












exit:addi x20,x0,2
exit2:
    nop

    





