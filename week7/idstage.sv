module IDstagae#(parameter n=32)
( input logic reset,
input logic [n-1:0] instr,
input logic [n-1:0] wbackout, 
output logic [2:0]fun3,
output logic[n-1:0] rdata1,rdata2, 
output logic [6:0]fun7,
output logic [6:0] op,
output logic[n-1:0] immfinal,imnew); 
logic [11:0] imm;
logic [4:0] rd,rs1,rs2;
decoder d(.op(op),.instr(instr),.rd(rd),.rs1(rs1),.rs2(rs2),.imm(imm),.fun3(fun3),.fun7(fun7)); 
registerfile rf(.rd(rd),.rs1(rs1),.rs2(rs2),.wbackout(wbackout),.reset(reset),.rdata1(rdata1),.rdata2(rdata2)); 
signext sig(.imm(imm),.immfinal(immfinal),.imnew(imnew));
endmodule
