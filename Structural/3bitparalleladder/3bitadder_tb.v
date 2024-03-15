`include "3bitparalleladder.v"

module paralleladdertb;
    reg [2:0]a,b;
    reg cin;
    wire [2:0]sum;
    wire cout;
    paralleladder uut(a,b,cin,sum,cout);
    initial begin
        
        #5
        a=3'b101;
        b=3'b101;
        cin=0;
        #5
        $monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
        $finish;
    end
endmodule