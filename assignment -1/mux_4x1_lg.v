module mux_4x1_str(y,s1,s2,a,b,c,d);

input a,b,c,d,s1,s2;
output y;
wire [6:1]w;

not(w1,s1);
not(w2,s2);
and a1(w3,w1,w2,a);
and a2(w4,w1,s2,b);
and a3(w5,s1,w2,c);
and a4(w6,s1,s2,d);
or(y,w3,w4,w5,w6);
    
endmodule