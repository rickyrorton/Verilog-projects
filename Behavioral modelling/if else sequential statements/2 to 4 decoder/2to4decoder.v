module decoder2to4(a,y);
    input [2:0]a;// [2:0] is 3 bits, using MSB as enable bit here
    output reg [3:0]y;

    always @(a)
        if (a==3'b100)
            y=4'b0001;
        else if (a==3'b101)
            y=4'b0010;
        else if (a==3'b110)
            y=4'b0100;
        else if (a==3'b111)
            y=4'b1000;
        else
            y=4'b0000;


endmodule