`include "q_6.v"
module tb;
reg clk, reset;
reg [1:0]ctrl;
reg[7:0]d;
wire[7:0]q;

usr uut(.clk(clk),.reset(reset),.ctrl(ctrl),.d(d),.q(q));

always #5 clk=~clk;

initial begin
    clk=0; reset =0;
    #10 d=8'b11010011;
    ctrl=2'b11; //parallel load
    #10 ctrl= 2'b01;
    #10 ctrl =2'b10;
end
initial begin
    $monitor($time,"q=%b|d=%b|clk=%b|reset=%b|ctrl=%b",q,d,clk,reset,ctrl);
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
end
initial #100 $finish;

endmodule