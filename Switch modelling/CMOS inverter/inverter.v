module inverter (a,f);
    input a;
    output f;
    supply1 vdd;
    supply0 gnd;
    pmos p1(f,vdd,a);
    nmos n1(f,gnd,a);
endmodule