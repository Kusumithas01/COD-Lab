module ayncff (
    input logic clk,         // Clock input
    input logic reset,       // Asynchronous reset input
    input logic d,           // Data input
    output logic q           // Output
);

    // Asynchronous reset and clocked behavior
    always_ff @(posedge clk or posedge reset) begin
        if (reset)           // When reset is high, asynchronously reset q
            q <= 0;          // Set q to 0 (or any other predefined value)
        else
            q <= d;          // Otherwise, on the rising edge of clk, transfer d to q
    end

endmodule
