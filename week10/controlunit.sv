module controlunit(
input logic [6:0] op, 

output logic	memreg,
output logic	alusour, 
output logic	memread, 
output logic	memwrite, 
output logic	branch,
output logic [1:0] aluo
);

always_comb begin memreg = 0;
alusour = 0;
memread = 0;
memwrite = 0;
branch = 0;
 
aluo	= 2'b00;

case (op)
7'b0110011:
begin	// R-type instructions 
memreg = 1;
aluo	= 2'b10; 
end
7'b0010011: 
begin	// I-type instructions 
memreg = 1;
alusour = 1; 
aluo = 2'b00;
end
7'b0000011: 
begin	// Load instructions 
memreg = 1;
memread = 1;
alusour = 1; 
end
7'b0100011: 
begin	// Store instructions 
memwrite = 1;
alusour = 1; 
end
7'b1100011: 
begin	// Branch instructions 
branch = 1;
aluo = 2'b01; 

end
default: begin 
end
endcase 
end

endmodule
