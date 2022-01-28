module rca_fa4bit(output [3:0]s,inout [2:0]c,output cout,input [3:0]A,input
[3:0]B,input cin);
fulladder F1(s[0],c[0],A[0],B[0],cin);
fulladder F2(s[1],c[1],A[1],B[1],c[0]);
fulladder F3(s[2],c[2],A[2],B[2],c[1]);
fulladder F4(s[3],cout,A[3],B[3],c[2]);
endmodule
module fulladder(output s2,c2, input x,y,z);
wire s1,c1,c;
halfadder h1(s1,c1,x,y);
halfadder h2(s2,c,s1,z);
or g1(c2,c,c1);
endmodule
module halfadder(output s,c, input x,y);
xor g3(s,x,y);
and g2(c,x,y);
endmodule