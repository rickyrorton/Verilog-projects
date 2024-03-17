module d_latch (D,clk,q);
    input clk,D;
    output reg q;
    always @(clk,d)//add D to sensitivity list to make it edge sensitive
        if(clk==1)
            q=D;         
endmodule