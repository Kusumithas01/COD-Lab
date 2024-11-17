module register#(parameter n=32)( 
input logic[4:0]rd,rs1,rs2,
input logic [n-1:0] wbackout, 
input logic reset,
output logic[4:0] rdata1,rdata2); 
logic rw;
logic [n-1:0]rf[n-1:0];
assign rdata1=reset?0:rf[rs1]; 
assign rdata2=reset?0:rf[rs2];

always@(rw) begin 
rf[rd]=wbackout;
end

endmodule
