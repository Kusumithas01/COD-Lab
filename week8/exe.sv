module exe#(parameter n=32)(
input logic [n-1:0]rdata1,rdata2,immfinal, 
input logic [3:0]aluopra,
input logic alusour,branch, output logic [n-1:0]aluout, 
output logic sele);
logic[n-1:0] data; 
logic zero;
alumux am(.rdata2(rdata2),.immfinal(immfinal),.alusour(alusour),.data(data)); 
aluand aa(.branch(branch),.zero(zero),.s(sele));
alu a(.aluopra(aluopra),.data(data),.zero(zero),.rdata1(rdata1),.aluout(aluout)); 
endmodule
