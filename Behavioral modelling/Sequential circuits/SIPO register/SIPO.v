module SIPO (d,clk,rst,q);
    input d,clk,rst;
    output reg [2:0]q;

    always @(negedge rst, posedge clk)
    if(!rst)
        q<=3'b000
    else
    begin //blocking statements are used so that it is not executed concurrently but instead sequentially
        q[2]<=d
        q[1]<=q[2]
        q[0]<=q[1]
    end
endmodule