`include "q_4.v"
module tb;
reg Reset,clk;
wire [7:0]q;

jc uut(.clk(clk),.Reset(Reset),.q(q));

initial
begin
clk=0;
Reset = 0;

$monitor($time, "clk=%b|Reset=%b|q=%b",clk,Reset,q);
$dumpfile("tb.vcd");
$dumpvars(0,tb);
#6 Reset =1;
end

always #2 clk = ~clk;

initial #68 $finish;

endmodule