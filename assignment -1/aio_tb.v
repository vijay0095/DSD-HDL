`include "aio.v"

module aio_str_tb;

reg [4:0]i;
wire out;
aio_str DUT(out,i[4:0]);

initial begin
    $dumpfile("aio_str_tb.vcd");
    $dumpvars(0, aio_str_tb);
    
    i=5'b10011;#10;
    i=5'b11001;#10;
end
endmodule