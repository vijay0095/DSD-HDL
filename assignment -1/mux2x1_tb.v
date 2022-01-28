`include "mux2x1.v"

module tb_mux2_1_conditional_data;
reg a,b,sel;
wire out;
mux2_1_conditional_data DUT(out,a,b,sel);
initial
begin
a=0;b=0;sel=0;
#10 a=0;b=0;sel=1;
#10 a=0;b=1;sel=0;
#10 a=0;b=1;sel=1;
#10 a=1;b=0;sel=0;
#10 a=1;b=0;sel=1;
#10 a=1;b=1;sel=0;
#10 a=1;b=1;sel=1;
end
initial begin
$monitor("At time %t, a =(%0d), b =(%0d), sel=(%0d),out=(%0d)",
 $time,a,b,sel,out);
$dumpfile("tb_mux2_1_conditional_data.vcd");
$dumpvars(0,tb_mux2_1_conditional_data);
end
endmodule