//`timescale 1ns/1ns  // Timescale directive
`include "clock generator.v"

module clockgen_tb;

    // Inputs
    wire clk;

    // Instantiate the module under test
    clockgen uut (
        .clk(clk)
    );

    // Initial begin block for testbench
    initial begin
        $dumpfile("clockgen_tb.vcd"); // Specify VCD file for waveform dumping
        $dumpvars(0, clockgen_tb); // Dump all variables

        // Initialize inputs

        // Wait for some time to allow the clock to oscillate
        #105; // 100 + 5 cycles

        // End simulation
        $finish;
    end

endmodule
