`include "q_1.v"

module tb_moore;
wire y;
reg in,rst,clk;

des_moore DUT(y,in,rst,clk);

initial
begin
    clk=1'b0;
    forever #5 clk=~clk;
end

initial
begin
    rst=1'b1;
    #10 rst=1'b0;
    #10 in=1'b1;
    #10 in=1'b0;
    #10 in=1'b0;
    #10 in=1'b1;
    #10 in=1'b0;
    #10 in=1'b0;
    #10 in=1'b1;
    #10 in=1'b1;
    #10 in=1'b1;
    #10 $finish;
end

initial
begin
$monitor("At time %t,clk=%b,in=%b,y=%b",$time,clk,in,y);
$dumpfile("tb_moore.vcd");
$dumpvars(0,tb_moore);

end
endmodule