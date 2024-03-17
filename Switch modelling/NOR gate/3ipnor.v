module nandgate (a,b,c,f);
    input a,b,c;
    output f;
    wire x1,x2;
    supply1 vdd;
    supply0 gnd;
    pmos p1(x1,vdd,a);
    pmos p2(x2,x1,b);
    pmos p3(x2,f,c);
    nmos n1(f,gnd,a);
    nmos n2(f,gnd,b);
    nmos n3(f,gnd,c);

endmodule