module logic_circuit(X,N,F);
 input [3:0] X , N ;
 output [3:0] F ;
 wire [3:0] r1,r2,r3,r4 ,notX ;
 wire w1,w2 ;
 ADDER4 A1(X,N,r1,w1);
 ADDER4 A2(X,(~N)+4'b0001,r2,w2);
 AND4 A3(~{4{X[0]}},r1,r3);
 AND4 A4({4{X[0]}},r2,r4);
 OR4 A5(r3,r4,F);
endmodule
module OR4(C,D,F);
 input [3:0] C , D ;
 output [3:0] F ;
 or a1(F[0],C[0],D[0]) ;
 or a2(F[1],C[1],D[1]) ;
 or a3(F[2],C[2],D[2]) ;
 or a4(F[3],C[3],D[3]) ;
endmodule
module AND4(C,D,F);
 input [3:0] C , D ;
 output [3:0] F ;
 and b1(F[0],C[0],D[0]) ;
 and b2(F[1],C[1],D[1]) ;
 and b3(F[2],C[2],D[2]) ;
 and b4(F[3],C[3],D[3]) ;
endmodule
module ADDER4(X, N , Sum, Co);
input [3:0] X, N;
output [3:0] Sum;
output Co;
wire w1, w2, w3;
fulladder FA1(X[0], N[0], 1'b0, Sum[0], w1);
fulladder FA2(X[1], N[1], w1, Sum[1], w2);
fulladder FA3(X[2], N[2], w2, Sum[2], w3);
fulladder FA4(X[3], N[3], w3, Sum[3], Co);
endmodule
module fulladder(X, Y, Ci, Sum, Co);
 input X, Y, Ci;
 output Sum, Co;
 wire w1,w2,w3;
 xor X1(w1, X, Y);
 xor X2(Sum, w1, Ci);
 and X3(w2, w1, Ci);
 and X4(w3, X, Y);
 or X5(Co, w2, w3);
endmodule
