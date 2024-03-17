module clockgen (clk);
    output reg clk;

    initial
    clk=1'b0;

    always 
    #10 clk= ~clk;

    initial
    #100 $finish;
endmodule