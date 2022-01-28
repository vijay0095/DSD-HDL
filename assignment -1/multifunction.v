module multifun(output F ,input X , Y , A , B) ;
 wire w1 , w2 , w3 , w4 , w5 ;
 and A1(w1,A,B,~X) ;
 and A2(w2,B,~X,Y);
 and A3(w3,A,~B,Y);
 and A4(w4,X,Y,~A);
 and A5(w5,~A,~B,X) ;
 or O1(F,w1,w2,w3,w4,w5);
endmodule
