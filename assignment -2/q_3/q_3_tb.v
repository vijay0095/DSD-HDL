`include "q_3.v"
module tb;
reg clk,reset,m;  //input
wire[3:0] count;  //output

ud uut(.clk(clk),.reset(reset),.count(count),.m(m));

always #5 clk=~clk;

initial begin
    clk=0; reset=0; m=0;
    #20 m=m+1'b1;
end

initial begin
    $monitor($time,"clk=%b|reset=%b|m=%b|count=%b", clk,m,reset,count);
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
end
initial #100 $finish;
endmodule