module graytobinary (G,B);
    input [3:0]G;
    output reg [3:0]B;

    always @(G) 
    begin
    B[0]=G[3] ^ G[2] ^ G[1] ^ G[0];
    B[1]=G[3] ^ G[2] ^ G[1];
    B[2]=G[3] ^ G[2];
    B[3]=G[3];
    end
endmodule