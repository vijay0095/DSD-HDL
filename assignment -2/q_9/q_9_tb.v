`include "q_9.v"
module tb_RCA_selfChecking ;
 reg Cin ;
 reg [3:0] P,Q ;
 wire [3:0] Sum ;
 wire Cout ;
 integer i , j ;
 reg out ;
 integer a = 1 ;
 RCA #(.N(4)) DUT(Cout,Sum,P,Q,Cin);

 initial
 begin
 $dumpfile("selfchecking4bitrca.vcd");
 $dumpvars(0,tb_RCA_selfChecking);
 $monitor($time ,"Sum=%d ,Cout=%b ,P=%d, Q=%d ,Cin=%b",Sum,Cout,P,Q,Cin);

 begin
 for(i=0;i<16;i=i+1)
 begin
 Cin=0 ;
 P[3:0] = i ;
 for(j=0;j<16;j=j+1)
 begin
 Q[3:0] = j ; #10 ;
if({Cout,Sum}!=P+Q)
 a = 0 ;
 end
 end
 end
 out = Printing_Status(a);
 end
function Printing_Status(input a);
 if(a == 1)
 $display("Test Cases for all are PASSED");
 else
 $display("Failed");
endfunction

endmodule