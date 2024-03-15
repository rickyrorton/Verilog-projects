`include "mux2to1.v"

module mux_tb;
    reg [0:1]a;
    reg s;
    wire z;

    mux2to1 uut(a,s,z);
    initial
    begin
        $monitor($time,"a[0]=%b,a[1]=%b,s=%b,z=%b",a[0],a[1],s,z);
        #5
        a=2'b01;
        s=0;
        #5
        a=2'b01;
        s=1;
        #5
        a=2'b10;
        s=0;
        #5
        a=2'b10;
        s=1;
        #5 $finish;
    end
endmodule