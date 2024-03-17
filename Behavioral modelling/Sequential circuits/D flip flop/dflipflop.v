module dflipflop (d,clk,rst,q);
    input d,clk,rst;
    output reg q;

    always @(negedge rst, posedge clk)//positive edge triggered, change posedge to negedge for negative edge triggered flip flop
    if(!rst)
    q=0;
    else
    q=d;
endmodule