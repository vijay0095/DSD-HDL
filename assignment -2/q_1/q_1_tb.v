`include "q_1.v"
module jkff_tb;
reg j,k,clk,clr;  //input
wire q,qbar;     //output

jkff uut(.q(q),.qbar(qbar),.j(j),.k(k),.clk(clk),.clr(clr));

initial begin
    j=0; k=0; clk=0; clr=1;
end
always #1 clk=~clk;
always #2 {j,k}={j,k}+1'b1;
initial #10 clr = 1'b0;

initial begin
    $monitor($time,"q=%b|qbar=%b|j=%b|k=%b|clk=%b|clr=%b",q,qbar,j,k,clk,clr);
    $dumpfile("jkff_tb.vcd");
    $dumpvars(0,jkff_tb);
end
initial #100 $finish;
endmodule
