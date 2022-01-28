`include "c_mux4x1_a.v"
`include "mux4x1_a.v"
`include "mux4x2x1_a.v"

module tb_mux4x1all;
reg [3:0]A;
reg s0,s1;
wire Y1,Y2,Y3;
integer i;
integer j=0;
mux4_1_conditional_data DUT1(Y1,A[3:0],s0,s1);
mux4x1_str DUT2(Y2,A[3:0],s0,s1);
mux4x2x1_str DUT3(Y3,A[3:0],s0,s1);
initial
begin
for(i=0;i<64;i++)
 begin
{A[3],A[2],A[1],A[0],s0,s1}=i;#10;

 if((Y1==Y2)&&(Y1==Y3))
 j=j+1;

 end
if(j==64)
$display("PASS");
else
$display("FAIL");
end
initial
begin
$monitor ($time," | A0=%b | A1=%b | A2=%b | A3=%b | s0=%b | s1=%b |Y1=%b | Y2=%b | Y3=%b ",A[0],A[1],A[2],A[3],s0,s1,Y1,Y2,Y3);
$dumpfile("tb_mux4x1all.vcd");
$dumpvars(0,tb_mux4x1all);
#640 $finish;
end
endmodule