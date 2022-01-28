`include "q_2.v"

module tb_edgedet;
wire out;
reg in,clk,rst;

des_edgedet DUT(out,in,clk,rst);

initial
begin
clk=1'b1;
    forever #5 clk=~clk;
end

initial
begin
    rst=1'b1;in=1'b0;
    #18 rst=1'b0;in=1'b1;
    #31 in=1'b0;
    #34 $finish;
end

initial
begin   
$monitor("At time %t,clk=%b,in=%b,out=%b",$time,clk,in,out);
$dumpfile("tb_edgedet.vcd");
$dumpvars(0,tb_edgedet);

end
endmodule
