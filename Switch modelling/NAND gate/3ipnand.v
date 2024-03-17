module nand3ip (a,b,c,f);
    input a,b,c;
    output f;
    wire x1,x2;
    supply1 vdd;
    supply0 gnd;
    pmos p1(f,vdd,a);
    pmos p2(f,vdd,b);
    pmos p3(f,vdd,c);
    nmos n1(f,x1,a);
    nmos n2(x1,x2,b);
    nmos n3(x2,gnd,c);

endmodule