module tflipflop (t,clk,rst,q);
    input t,clk,rst;
    output reg q;

    always @(negedge rst,posedge clk)
        if (!rst)
            q=0
        else if(t==0)
            q=q
        else if(t==1)
            q=!q
        
endmodule