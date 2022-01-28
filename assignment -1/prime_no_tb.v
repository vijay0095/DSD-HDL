`include "prime_no.v"
module tb_prime ;
 reg A , B , C , D ;
 wire F ;
 prime instant(F,A,B,C,D) ;
 initial
 begin
 $dumpfile("prime.vcd");
 $dumpvars(0,tb_prime);
 $monitor($time ,"A=%b , B=%b ,C=%b ,D=%b,F=%b ",A,B,C,D,F);
 #5 A=0 ; B=0 ; C=0 ; D=0 ;
 #5 A=0 ; B=0 ; C=1 ; D=0 ;
 #5 A=0 ; B=1 ; C=1 ; D=0 ;
 #5 A=0 ; B=1 ; C=1 ; D=1 ;
 #5 A=1 ; B=1 ; C=1 ; D=1 ;
 #5 A=1 ; B=1 ; C=0 ; D=1 ;
 #5 A=1 ; B=0 ; C=1 ; D=0 ;
 #5 A=1 ; B=1 ; C=0 ; D=0 ;
 end
endmodule