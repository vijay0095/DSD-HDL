
module jkff_test;
reg J,K, CLK;
wire Q, QBAR;

jkff_behavior dut(.q(Q), .qbar(QBAR), .j(J), .k(K), .clk(CLK)); 

$monitor("simtime = %g, CLK = %b, J = %b, K = %b, Q = %b, QBAR = %b", $time, CLK, J, K, Q, QBAR);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 J= 1; K= 0;
 #100; J= 0; K= 1; 
 #100; J= 0; K= 0; 
 #100; J= 1; K=1; 
end 
endmodule