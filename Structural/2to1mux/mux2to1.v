module mux2to1 (a,s,z);
    input [0:1]a;
    input s;
    output z;
    wire sbar,t1,t2;
    not g1 (sbar,s);
    and g2 (t1,a[0],sbar);
    and g3 (t2,a[1],s);
    or g4 (z,t1,t2);    
endmodule