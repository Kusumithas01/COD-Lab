module iftop#(parameter n=32)
( input logic [n-1:0] pc_imm,
input logic s,clk,reset, 
output logic [n-1:0] instr,
output logic [n-1:0] pc_4, 
output logic [n-1:0] y);
logic [n-1:0] x;
// const bit z=4;
mux m1(.a(pc_4),.b(pc_imm),.s(s),.y(x));
pc pc1(.pc_next(x),.clk(clk),.reset(reset),.pc(y));
memory mem2(.addr(y),.reset(reset),.instr(instr)); 
halfadder ha1(.a(y),.b(4),.sum(pc_4));
endmodule
