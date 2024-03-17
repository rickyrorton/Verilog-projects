module SISO (d,clk,rst,q);
    input d,clk,rst;
    output reg q;
    reg w,x;
    always @(negedge rst, posedge clk)
    if(!rst)
    begin
        w<=1'b0;
        x<=1'b0;
        q<=1'b0;
    end
    else
    begin
        w<=d;
        x<=w;
        q<=x;
    end

endmodule