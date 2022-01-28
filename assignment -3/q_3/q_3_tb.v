`include "q_3.v"
module test;
    reg clk, L, R, H;
    wire [2:0] TL, TR;
	t_l tl1(.clk(clk), .L(L), .R(R), .H(H), .TL(TL), .TR(TR));
	initial begin
		clk = 1'b0;
		H = 1'b0;
		L = 1'b1; R = 1'b0;
		#60; L = 1'b0; R = 1'b1;
		#40; L = 1'b1; R = 1'b0;
		#60; L = 1'b0; R = 1'b1;
		#40; H=1;
	end
    always begin
        #10 clk = ~clk;
    end
initial
begin
	$monitor("At time %t,Left=(%0b), Right=(%0b)", $time,TL,TR);
	$dumpfile("test.vcd");
	$dumpvars(0,test);
	#340 $finish;
end
endmodule