module decoderfinal#(parameter n=32)(instr,rd,rs1,rs2,imm,fun3,fun7,op); input logic [n-1:0] instr;
output logic [4:0] rd,rs1,rs2; output logic [11:0] imm; output logic [2:0]fun3;
output logic [6:0]fun7; output logic[6:0] op; assign op=instr[6:0]; always@(*)
begin case(op)
7'b0110011://R-type 
begin
rd=instr[11:7];
rs1=instr[19:15]; 
rs2=instr[24:20]; 
fun3=instr[14:12]; 
fun7=instr[31:25];
end 
7'b0010011://I-type 
begin
rd=instr[11:7];
rs1=instr[19:15];
imm=instr[31:25]; 
fun3=instr[14:12];
end



7'b0100011://S-type
begin
rd=instr[11:7];
rs1=instr[19:15]; 
rs2=instr[24:20];
fun3=instr[14:12]; 
imm=instr[11:5];
 

end
 
7'b1100011://B-type
begin

imm={instr[31],instr[7],instr[30:25],instr[11:6]}; 
rs1=instr[19:15];
rs2=instr[24:20]; 
fun3=instr[14:12];
 
end



7'b0000011://L-type
begin
rd=instr[11:7];
rs1=instr[19:15];
imm=instr[31:25]; fun3=instr[14:12];
end
endcase
end
endmodule
