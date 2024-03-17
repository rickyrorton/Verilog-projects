`include "Dlatch.v"
module d_latch_tb;
    // Signals
    reg clk=1'b0;
    reg D;
    wire q;

    // Instantiate the D latch
    d_latch uut(
        .clk(clk),
        .D(D),
        .q(q)
    );

    // Clock generation
    always 
    #5 clk = ~clk;

    // Stimulus
    initial begin
        $dumpfile("d_latch_tb.vcd"); // Dump VCD file for waveform viewing
        $dumpvars(0, d_latch_tb); // Dump variables for waveform viewing

        // Test case 1: D = 0, hold for a while, then D = 1
        D = 0;
        #20; // Hold for a while
        D = 1;
        #20; // Hold for a while
        
        // Test case 2: D = 1, hold for a while, then D = 0
        D = 1;
        #20; // Hold for a while
        D = 0;
        #20; // Hold for a while
        
        // Add more test cases as needed
        
        $finish; // End the simulation
    end

endmodule
