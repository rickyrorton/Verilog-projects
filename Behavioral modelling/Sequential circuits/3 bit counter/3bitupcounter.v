module upcounter3bit (clk,rst,q);
    input clk,rst;
    output reg [2:0]q;

    always @(negedge rst, posedge clk)
    if (!rst)
    q=3'b000;
    else
    q= q + 3'b001;
endmodule