module nandgate (a,b,f);
    input a,b;
    output f;
    wire x;
    supply1 vdd;
    supply0 gnd;
    pmos p1(x,vdd,a);
    pmos p2(f,x,b);
    nmos n1(f,gnd,a);
    nmos n2(f,gnd,b);

endmodule