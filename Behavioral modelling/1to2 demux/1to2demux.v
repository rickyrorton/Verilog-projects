module demux1to2 (i,s,y);
    input i,s;
    output reg [0:1]y;

    always @(i,s)
    case (s)
        1'b0:y[0]=i;
        1'b1:y[1]=i; 
        default:y=2'b00
    endcase
endmodule