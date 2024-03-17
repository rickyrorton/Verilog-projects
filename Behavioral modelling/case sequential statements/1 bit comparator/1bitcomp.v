module comp1bit (a,y);
    input [1:0]a;
    output reg [2:0]y;

    always @(a)
        case (a)
            2'b00:3'b100;
            2'b01:3'b010;
            2'b10:3'b001;
            2'b11:3'b100;
            default:3'b000;
        endcase
    
endmodule