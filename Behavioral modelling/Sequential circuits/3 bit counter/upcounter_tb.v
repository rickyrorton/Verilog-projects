`include "3bitupcounter.v"
module upcountertb;
    reg rst,clk;
    wire [2:0]q;

    upcounter3bit uut(.rst(rst),.clk(clk),.q(q));

    initial 
    begin
        $monitor($time,"rst=%b,clk=%b,q=%b",rst,clk,q);
        rst=1'b0;
        repeat (40)
            #40 rst=~rst;
    end
    initial 
    begin
        clk=1'b0;
        repeat(100)
        #2 clk=~clk;    
    end
    initial
    #200 $finish;
endmodule