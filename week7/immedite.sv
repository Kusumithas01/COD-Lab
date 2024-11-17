module immedite#(parameter n=32)( input logic[11:0] imm,
output logic[n-1:0] immfinal, output logic [n-1:0]imnew);
logic[11:0] im;
assign imnew={{19{imm[11]}},imm[11:0],1'b0}; assign im=imm[11];
always@(*) begin
if(im[11]==1)
 begin
 immfinal={{20{imm[11]}}, imm};
 end
 
else
begin 
immfinal={20'b0, imm};
end
end
endmodule
