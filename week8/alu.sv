module alu#(parameter n=32)( input logic [3:0] aluopra,
input logic [n-1:0] rdata1,rdata2,data,
 output logic[n-1:0] aluout,
output logic zero); 
logic [3:0] x;
 assign x=aluopra; 
 always@(*)
begin 
case(x)
 
4'b0000://and
begin
aluout=rdata1&data;
end
4'b0001://or
begin
aluout=rdata1|data;
end
4'b0010://add
 
begin
aluout=rdata1+data;
end
 
4'b0110://subtration
 begin
aluout=rdata1-data; 
end

endcase 
if(aluout==0)
begin
 
zero=1;

end 

else
begin
zero=0;

end
 
end 

endmodule

