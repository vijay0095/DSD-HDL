module mux2x1(output out,input a,b,sel);
    wire w1,w2,selb;
    and G1(w1,a,sel);
    and G2(w2,selb,b);
    or G3(out,w1,w2);
    not G4(selb,sel);
endmodule

module mux4x1(output out,input [3:0]i, input [1:0]s);
    wire t1,t2;
    mux2x1 M1(t1,i[1],i[0],s[1]);
    mux2x1 M2(t2,i[3],i[2],s[1]);
    mux2x1 M3(out, t1,t2,s[0]);
endmodule

module mux8x1(output out, input [7:0]i,input [2:0]s);
    wire k1,k2;
    mux4x1 M4(k1,i[3:0],s[1:0]);
    mux4x1 M5(k2,i[7:4],s[1:0]);
    mux2x1 M6(out,k1,k2,s[2]);
endmodule