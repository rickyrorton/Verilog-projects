module binarytogray (B,G);
    input [3:0]B;
    output reg [3:0]G;

    always @(B) 
    begin
    G[0]=B[1] ^ B[0];
    G[1]=B[2] ^ B[1];
    G[2]=B[3] ^ B[2];
    G[3]=B[3];
    end
endmodule