`include "dec2x4.v"

module dec2x4_tb;
   
   reg [1:0]i;
   reg EN;
   wire [3:0]y;

   dec2x4 DUT(y,i,EN);

    initial begin
    $monitor($time,"i=%b,EN=%b,y=%b",i,EN,y);
    $dumpfile("dec2x4_tb.vcd");
    $dumpvars(0,dec2x4_tb);
    EN=1;i=2'b00;#10;
    EN=1;i=2'b01;#10;
    EN=1;i=2'b10;#10;
    EN=1;i=2'b11;#10;
    EN=0;i=2'b00;#10;
    EN=0;i=2'b01;#10;
    EN=0;i=2'b10;#10;
    EN=0;i=2'b11;#10;
   end
endmodule
   


