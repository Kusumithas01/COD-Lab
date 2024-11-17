module syncff (
    input logic clk,         // Clock input
    input logic reset,       // Synchronous reset input
    input logic d,           // Data input
    output logic q           // Output
);

    // Synchronous reset logic
    always_ff @(posedge clk) begin
        if (reset)           // If reset is high, set q to 0
            q <= 0;
        else
            q <= d;          // On rising edge of clk, transfer d to q
    end

endmodule
