`timescale 1ns/1ns
`include "fulladder.v"

module FA_tb;
reg A,B,C;
wire X,Y;

Full_adder uut(A,B,C,X,Y);
initial begin
    $dumpfile("FA_tb.vcd");
    $dumpvars(0,FA_tb);

    A=0;
    B=0;
    C=0;
    #10;

    A=1;
    B=0;
    C=0;
    #10;

    A=0;
    B=1;
    C=0;
    #10;

    A=1;
    B=1;
    C=0;
    #10;

    A=0;
    B=0;
    C=1;
    #10;

    A=1;
    B=0;
    C=1;
    #10;

    A=0;
    B=1;
    C=1;
    #10;

    A=1;
    B=1;
    C=1;
    #10;

    $display("Test complete");

end
endmodule