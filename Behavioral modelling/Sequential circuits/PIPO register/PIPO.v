module PIPO (
    d,clk,rst,q
);
    input [2:0]d;
    input clk,rst;
    output reg [2:0]q;

    always @(negedge rst, posedge clk)
    if(!rst)
        q=3'b00;
    else
        q=d;
endmodule