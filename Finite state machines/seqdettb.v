`timescale 1ns/1ns
`include "seqdetector.v"

module seqdettb;
    reg clk,rst,In;
    wire [1:0]state;
    wire op;

    seqdet101overlapmealy UUT(clk,rst,In,state,op);
    initial begin
    $monitor("Current State = %b || Input = %b ||Output = %b",state,In,op);
    $dumpfile("mul.vcd");
        $dumpvars(0, seqdettb);
    end

// clock signal generation
initial begin
clk = 1'b0;
forever #5 clk = ~clk;
end

// input signals
initial begin

rst = 1'b0;
#15 rst = 1'b1; end
initial begin
#10 In = 1'b1;
#10 In = 1'b0;
#10 In = 1'b1;
#10 In = 1'b0;
#10 In = 1'b1;
#10 In = 1'b1;
#10 In = 1'b0;
#10 In = 1'b1;
#7  In = 1'b0;
#13 In = 1'b1;
#8  In = 1'b0;
#10 In = 1'b1;
#10 In = 1'b1;
#10 In = 1'b0;
#10 In = 1'b1;
#10 In = 1'b0;
#10 In = 1'b0;
#10 $finish();
end
endmodule