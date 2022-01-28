`include"mux4x2x1.v"
 
module mux4x2x1_str_tb;

   reg [3:0]i;
   reg [2:1]s;

   wire out;

   mux4x2x1_str DUT(out,i[3:0],s[2:1]);

     initial begin
     $dumpfile("mux4x2x1_str_tb.vcd");
     $dumpvars(0, mux4x2x1_str_tb);

     i=4'b1110;s=2'b00;#10;
     s=2'b01;#10;
     s=2'b10;#10;  
     s=2'b11;#10;
  
     end
endmodule