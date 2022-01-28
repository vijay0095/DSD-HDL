`include "4x2_encoder.v"

module encoder_4x2_tb;
reg i3,i2,i1,i0;
wire y1,y0;
encoder_4x2 DUT(y1,y0,i3,i2,i1,i0);
initial begin
 i3=0;i2=0;i1=0;i0=1;#10;
 i3=0;i2=0;i1=1;i0=0;#10;
 i3=0;i2=1;i1=0;i0=0;#10;
 i3=1;i2=0;i1=0;i0=0;#10;
end
initial
 begin
 $dumpfile("encoder_4x2_tb.vcd");
 $dumpvars(0,encoder_4x2_tb);
 
end
endmodule