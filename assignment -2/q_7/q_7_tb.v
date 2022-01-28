`include "q_7.v"
module tb_RCA_1 ;
       reg Cin ;
       reg [3:0] A,B ;
       wire [3:0] Sum ;
       wire Cout ;
   RCA #(.N(4)) DUT(Cout,Sum,A,B,Cin);
   initial
      begin
         $dumpfile("example.vcd");
         $dumpvars(0,tb_RCA_1);
         $monitor($time ,"Sum=%d ,Cout=%b ,A=%d, B=%d ,Cin=%b  ",Sum,Cout,A,B,Cin);
         #10 A=4'b1010 ; B=4'b0001 ; Cin=0 ;
         #10 A=4'b1111 ; B=4'b1111  ; Cin=0 ;
         #10 A=4'b1010 ; B=4'b0101 ; Cin=0 ;
         #10 $finish ;
      end
endmodule