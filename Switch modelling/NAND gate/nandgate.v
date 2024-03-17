module nandgate (a,b,f);
    input a,b;
    output f;
    wire x;
    supply1 vdd;
    supply0 gnd;
    pmos p1(f,vdd,a);
    pmos p2(f,vdd,b);
    nmos n1(f,x,a);
    nmos n2(x,gnd,b);

endmodule