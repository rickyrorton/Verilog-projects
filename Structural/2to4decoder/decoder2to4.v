module decoder2to4 (a,b,en,z);
    input a,b,en;
    output [0:3]z;
    wire abar,bbar;
    not n0 (abar,a);
    not n1(bbar,b);
    and a0(z[0],abar,bbar,en);
    and a1(z[1],abar,b,en);
    and a2(z[2],a,bbar,en);
    and a3(z[3],a,b,en);
endmodule