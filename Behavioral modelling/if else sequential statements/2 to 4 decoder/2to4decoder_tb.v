`include "2to4decoder.v"
module decodertb; 
reg [2:0]a;
wire [3:0]y; 
decoder2to4 uut (a,y); 
initial begin 
    $monitor($time,"a=%b, y=%b", a,y); 
    #5 a=3'b100; 
    #5 a=3'b101; 
    #5 a=3'b110; 
    #5 a=3'b111; 
    #5 a=3'b000; 
    #5 a=3'b101; 
    #5 $finish; 
end 
endmodule 