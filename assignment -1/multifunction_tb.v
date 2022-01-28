`include "multifunction.v"

module tb_multifun ;
 reg X , Y , A , B ;
 wire F ;
 multifun instant(F,X,Y,A,B) ;
 initial
 begin
 $dumpfile("multifun.vcd");
 $dumpvars(0,tb_multifun);
 $monitor($time ,"X=%b , Y=%b ,A=%b ,B=%b,F=%b ",X,Y,A,B,F);
 #5 X=1 ; Y=1 ; A=0 ; B=0 ;
 #5 X=1 ; Y=0 ; A=1 ; B=0 ;
 #5 X=1 ; Y=1 ; A=1 ; B=0 ;
 #5 X=0 ; Y=0 ; A=0 ; B=0 ;
 #5 X=0 ; Y=0 ; A=1 ; B=1 ;
 #5 X=0 ; Y=1 ; A=1 ; B=1 ;
 #5 X=0; Y=1 ; A=0 ; B=0 ;
 end
endmodule