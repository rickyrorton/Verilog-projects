module mux2to1(a,b,s,y);
    input a,b,s;
    output reg y;

    always @(a,b,s)
    case(s)
        1'b0:y=a;
        1'b1:y=b;
        default:y=0
    endcase
endmodule