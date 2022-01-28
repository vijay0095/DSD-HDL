module RCA #(parameter N=6) (output Cout ,output [N-1:0] Sum ,input [N-1:0] A,B, input Cin) ;
       wire [N:0] C ;
       assign C[0] = Cin ;
       genvar i ;
       generate for (i=0;i<N;i=i+1) 
                begin : RCA_loop
                  FA F(Sum[i],C[i+1],A[i],B[i],C[i]);
                end
       endgenerate
       assign Cout = C[N] ;
endmodule

module FA(S,Cout,A,B,Cin) ;
       input A,B,Cin ;
       output S , Cout ;
       assign S = A^B^Cin ;
       assign Cout = (A&B)+(B&Cin)+(Cin&A) ;
endmodule 