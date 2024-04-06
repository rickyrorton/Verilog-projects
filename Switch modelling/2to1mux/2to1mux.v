module mux2to1 (a,b,s,y);
    input a,b,s;
    output y;
    wire sbar;
    not(sbar,s);
    cmos cmos_a(y,a,sbar)
    
endmodule