module RCA #(parameter N=6) (output Cout ,output [N-1:0] Sum ,input [N-1:0]
P,Q, input Cin) ;
 wire [N:0] C ;
 assign C[0] = Cin ;
 genvar i ;
 generate for (i=0;i<N;i=i+1)
 begin : RCA_loop
 FA F(Sum[i],C[i+1],P[i],Q[i],C[i]);
 end
 endgenerate
 assign Cout = C[N] ;
endmodule
module FA(S,Cout,P,Q,Cin) ;
 input P,Q,Cin ;
 output S , Cout ;
 assign S = P^Q^Cin ;
 assign Cout = (P&Q)+(Q&Cin)+(Cin&P) ;
endmodule
