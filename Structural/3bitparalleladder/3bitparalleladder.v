module paralleladder (a,b,cin,sum,cout);
    input [2:0]a,b;
    input cin;
    output [2:0]sum;
    output cout;
    wire l,m;
    fulladder f0(a[0],b[0],cin,sum[0],l);
    fulladder f1(a[1],b[1],l,sum[1],m);
    fulladder f2(a[2],b[2],m,sum[2],cout);    
endmodule

module fulladder (a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    wire l1,m1,n1;
    and a1 (l1,a,b);
    and a2 (m1,b,cin);
    and a3 (n1,a,cin);
    or o1 (cout,l1,m1,n1);
    xor x1 (sum,a,b,cin);
endmodule

