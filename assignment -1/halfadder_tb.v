`include "halfadder.v"

module halfadder_tb;
  reg a,b;
  wire s,c;

  halfadder DUT(s,c,a,b);

   initial begin
   $dumpfile("halfadder_tb.vcd");
   $dumpvars(0,halfadder_tb);
 
   a=0;b=0;#10;
   a=0;b=1;#10;
   a=1;b=0;#10;
   a=1;b=1;#10;

  end
endmodule