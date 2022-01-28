`include "encoder4x2.v"

module tb_d_encod_4x2;
reg [3:0]bin;
reg enable;
wire [1:0]bout;
d_encod_4x2 DUT(bout[1:0],bin[3:0],enable);
initial
begin
bin=4'b1000;enable=0;#10;
bin=4'b1000;enable=1;#10;
bin=4'b0100;enable=0;#10;
bin=4'b0100;enable=1;#10;
bin=4'b0010;enable=0;#10;
bin=4'b0010;enable=1;#10;
bin=4'b0001;enable=0;#10;
bin=4'b0001;enable=1;#10;
end
initial
begin

$dumpfile("4d_4x2encoder.vcd");
$dumpvars(0,tb_d_encod_4x2);
#80 $finish;
end
endmodule