module prime(output F ,input A , B , C , D) ;
 wire w1 , w2 , w3 , w4 ;
 and A1(w1,~A,~B,C) ;
 and A2(w2,~A,B,D);
 and A3(w3,B,~C,D);
 and A4(w4,~B,C,D);
 or O1(F,w1,w2,w3,w4);
endmodule