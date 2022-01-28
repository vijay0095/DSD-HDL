module mux_4x1_um2x1(output y,input s1,s2,a,b,c,d);
wire w1,w2;
mux2_1_str M1(w1,a,b,s2);
mux2_1_str M2(.y(w2),.b(d),.a(c),.s(s2));
mux2_1_str M3(.y(y),.b(w1),.a(w2),.s(s1));
endmodule

module mux2_1_str(output y, input a,b,s);
wire w1,w2,w3;
not N1(w1,s);
and A1(w2,a,s);
and A2(w3,b,w1);
or O1(y,w2,w3);
endmodule
