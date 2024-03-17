module jkflipflop (j,k,clk,rst,q);
    input j,k,clk,rst;
    output reg q;

    always @(negedge rst,posedge clk)
        if (!rst)
            q=0
        else if(j==0 & k==0)
            q=q
        else if(j==0 & k==1)
            q=0
        else if(j==1 & k==0)
            q=1
        else if(j==1 & k==1)
            q=!q
        
endmodule