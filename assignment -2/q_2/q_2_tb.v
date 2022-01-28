`include "q_2.v"
module tb;
reg clk,i;
reg [7:0]temp;
wire [7:0]q;

sr uut(.clk(clk),.i(i),.q(q));

always #5 clk = ~clk;

initial begin
    clk=0;
    temp =8'b11011011;
    i=0;
    #2 i=i+1'b1;
end

initial begin
    $monitor($time,"clk=%b|i=%b|temp=%b|q=%b",clk,i,temp,q);
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
end
initial #100 $finish;
endmodule