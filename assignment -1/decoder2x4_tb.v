`include "decoder2x4.v"

module tb_c_dec_2x4;
reg a0,a1,enable;
wire [3:0]X;
c_dec_2x4 DUT(X[3:0],a0,a1,enable);
initial
begin
a0=0;a1=0;enable=0; #10;
a0=0;a1=0;enable=1; #10;
a0=0;a1=1;enable=0; #10;
a0=0;a1=1;enable=1; #10;
a0=1;a1=0;enable=0; #10;
a0=1;a1=0;enable=1; #10;
a0=1;a1=1;enable=0; #10;
a0=1;a1=1;enable=1; #10;
end
initial
begin
$dumpfile("4cdec2x4.vcd");
$dumpvars(0,tb_c_dec_2x4);
#80 $finish;
end
endmodule
