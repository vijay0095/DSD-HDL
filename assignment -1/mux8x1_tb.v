`include "mux8x1.v"

module mux8x1_tb;

   reg [7:0]i;
   reg [2:0]s;
   wire out;
   mux8x1 DUT(out,i[7:0],s[2:0]);

    initial begin
    $dumpfile("mux8x1_tb.vcd");
    $dumpvars(0, mux8x1_tb);
    i=8'b11010111;s=3'b000;#10;
    s=3'b001;#10;
    s=3'b010;#10;
    s=3'b011;#10;
    s=3'b100;#10;
    s=3'b101;#10;
    s=3'b110;#10;
    s=3'b111;#10;
   end
endmodule   