module mux_3to1 (
    input logic [1:0] sel,   
    input logic a,           
    input logic b,           
    input logic c,           
    output logic y           
);

    
    always_comb begin
        case(sel)
            2'b00: y = a;  //if s=00
            2'b01: y = b;  // If s=01
            2'b10: y = c;  // If s=10
            default: y = 1'bx; // default case (undefined)
        endcase
    end

endmodule
