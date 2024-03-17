module dflipflop (d,clk,rst,q);
    input d,clk,rst;
    output reg q;

    always @(negedge rst, posedge clk)//positive edge triggered, change posedge to negedge for negative edge triggered flip flop
    if(!rst)
    q=0;
    else
    q=d;
    endmodule

module SISO_structural (d,clk,rst,q);
    input d,clk,rst;
    output reg q;
    wire w,x
    dflipflop ff2 (d,clk,rst,w);
    dflipflop ff1 (w,clk,rst,x);
    dflipflop ff0 (x,clk,rst,q);
endmodule