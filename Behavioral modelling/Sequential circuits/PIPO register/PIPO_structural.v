module dflipflop (d,clk,rst,q);
    input d,clk,rst;
    output reg q;

    always @(negedge rst, posedge clk)//positive edge triggered, change posedge to negedge for negative edge triggered flip flop
    if(!rst)
    q=0;
    else
    q=d;
endmodule

module PIPO_structural (d,clk,rst,q);
    input [2:0]d;
    input clk,rst;
    output reg [2:0]q;

    dflipflop ff2 (d[2],clk,rst,q[2]);
    dflipflop ff1 (d[1],clk,rst,q[1]);
    dflipflop ff0 (d[0],clk,rst,q[0]);
endmodule