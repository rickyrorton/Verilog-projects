`include "decoder2to4.v"

module decoder_tb;
    reg a;
    reg b;
    reg en;
    wire [0:3]z;

    decoder2to4 uut(a,b,en,z);
    initial
    begin
        $monitor($time,"a=%b,b=%b,en=%b,z[0]=%b,z[1]=%b,z[2]=%b,z[3]=%b",a,b,en,z[0],z[1],z[2],z[3]);
        #5
        a=0;
        b=1;
        en=0;

        #5
        a=0;
        b=0;
        en=1;

        #5
        a=0;
        b=1;
        en=1;

        #5
        a=1;
        b=0;
        en=1;

        #5
        a=1;
        b=1;
        en=1;

        #5 $finish;
    end
endmodule