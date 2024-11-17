module 2_1mux (
    input logic a,      
    input logic b,      
    input logic sel,   
    output logic y      
);

    always_comb begin
        if (sel) 
            y = b;    
        else 
            y = a;    
    end

endmodule
