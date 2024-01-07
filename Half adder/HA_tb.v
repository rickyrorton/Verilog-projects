`timescale 1ns/1ns
`include "halfadder.v"

module HA_tb;
reg A,B;
wire X,Y;

half_adder uut(A,B,X,Y);
initial begin
    $dumpfile("HA_tb.vcd");
    $dumpvars(0,HA_tb);

    A=0;
    B=0;
    #10;

    A=1;
    B=0;
    #10;

    A=0;
    B=1;
    #10;

    A=1;
    B=1;
    #10;

    $display("Test complete");

end
endmodule