`include "function.v"

module tb_logic_circuit ;
 reg [3:0] X , N ;
 wire [3:0] F ;
logic_circuit inst(X,N,F);
initial
 begin
 $dumpfile("waveform.vcd");
 $dumpvars(0,tb_logic_circuit) ;
 $monitor($time ,"X=%4b , N=%4b ,F=%4b ",X,N,F);
 #5 X=4'b1111 ; N=4'b0111 ;
 #5 X=4'b1000 ; N=4'b0111 ;
 #5 X=4'b1111 ; N=4'b0101 ;
 #5 X=4'b1110 ; N=4'b0001 ;
 #5 X=4'b0010 ; N=4'b0111 ;
 #5 X=4'b0111 ; N=4'b0001 ;
 #10
 $finish ;
 end
endmodule
