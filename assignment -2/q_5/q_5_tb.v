`include "q_5.v"
module tb_updown_counter_mod13 ;
       reg clk , rst ,up ;
       wire [3:0] count ;
   updown_counter_mod13 DUT(count , clk , rst ,up);
   initial
      begin
         $dumpfile("example.vcd");
         $dumpvars(0,tb_updown_counter_mod13);
         $monitor($time ,"count=%d ,clk=%b ,rst=%b , up=%d ",count,clk,rst,up);
         up = 1 ;
         #200 up = 0 ;
         #50 up = 1 ;
        #100 $finish ;
      end
   initial
      begin
         clk = 0 ;
         #10 rst = 1 ;
         #10 rst = 0 ;
      end
   initial forever #5 clk = ~clk ;
endmodule