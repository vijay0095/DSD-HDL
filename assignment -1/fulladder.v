module ha_str(s,c,a,b);
 input a,b;
 output s,c;
 and A1(c,a,b);
 xor A2(s,a,b);
endmodule
module fa_ha_str(s,c,a,b,cin);
 input a,b,cin;
 output s,c;
 wire s1,c1,c2;
 ha_str h1(s1,c1,a,b);
 ha_str h2(s,c2,s1,cin);
 or o1(c,c2,c1);
endmodule