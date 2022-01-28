module jc(Reset, clk, q);
input Reset, clk;
output[7:0] q;
reg [7:0] q;
always @(negedge Reset or posedge clk)
if(!Reset)
q <= 0;
else
q <= {{~q[0]},{q[7:1]}};
endmodule