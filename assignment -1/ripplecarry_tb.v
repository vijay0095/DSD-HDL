`include "ripplecarry.v"

module tb_rca_fa4bit;
reg [3:0]A;
reg [3:0]B;
reg cin;
wire [3:0]s;
wire [2:0]c;
rca_fa4bit DUT(s[3:0],c[2:0],cout,A[3:0],B[3:0],cin);
initial
begin
A=4'b1011;B=4'b1110;cin=1;#10;
A=4'b1010;B=4'b1010;cin=1;#10;
A=4'b0011;B=4'b0110;cin=1;#10;
A=4'b1001;B=4'b1111;cin=1;#10;
end
initial
begin
$monitor($time,"| A=%b | B=%b | cin=%b | s=%b | cout=%b",A,B,cin,s,cout);
$dumpfile("rca_fa4bit.vcd");
$dumpvars(0,tb_rca_fa4bit);
#40 $finish;
end
endmodule