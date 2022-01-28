`include "q_10.v"
module tb_Data_converter ;
       reg [15:0] datain ;
       reg rst , clk ;
       wire [7:0] dataout ;
Data_converter DUT(datain,rst,clk,dataout);
   initial
      begin
         $dumpfile("example.vcd");
         $dumpvars(0,tb_Data_converter);
         $monitor($time ,"rst=%b,clk=%b,datain=%b,dataout=%b",rst,clk,datain,dataout);
         datain = 16'h3524 ;
         #20 datain =16'h5E81 ;
         #20 datain =16'hD609 ;
         #20 datain =16'h5663 ;
         #20 datain =16'h7B0D ;
         #20 datain =16'h998D ;
         #20 $finish ;
      end
   initial
      begin
         clk = 0 ;
         rst = 1 ;
         #45 rst = 0 ;
      end
   initial forever #5 clk = ~clk ;
endmodule