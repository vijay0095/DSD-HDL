module mux_4x1_all_tb;
reg a,b,c,d;
reg s0,s1;
wire y1,y2,y3;
integer i;
integer j=0;
mux_4x1 DUT1(y1,a,b,c,d,s0,s1);
mux_4x1_str DUT2(y2,a,b,c,d,s0,s1);
mux_4x1_um2x1 DUT3(y3,a,b,c,d,s0,s1);
initial
begin
for(i=0;i<64;i++)
 begin
{a,b,c,d,s0,s1}=i;#10;

 if((y1==y2)&&(y1==y3))
 j=j+1;

 end
if(j==64)
$display("PASS");
else
$display("FAIL");
end
initial
begin
$monitor ($time," | a=%b | b=%b | c=%b | d=%b | s0=%b | s1=%b | y1=%b | y2=%b | y3=%b ",a,b,c,d,s0,s1,y1,y2,y3);
$dumpfile("mux_4x1-all.vcd");
$dumpvars(0,mux_4x1_all_tb);
#640 $finish;
end
endmodule