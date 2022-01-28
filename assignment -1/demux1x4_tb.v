`include "demux1x4.v"

module demux1x4_tb;
  reg [1:0]s;
  reg i;
  wire [3:0]y;
  demux1x4 DUT(y,s,i);
 
    initial begin
    $dumpfile("demux1x4_tb.vcd");
    $dumpvars(0,demux1x4_tb);
    i=1;s=2'b00;#10;
    s=2'b01;#10;
    s=2'b10;#10;
    s=2'b11;#10;
    end
endmodule

