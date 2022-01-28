`include "c_mux4x1.v"
module tb_mux4_1_conditional_data;
reg d0,d1,d2,d3,sela,selc;
wire zout;
mux4_1_conditional_data DUT(zout,d0,d1,d2,d3,sela,selc);

initial
 begin
 d0=0;d1=0;d2=0;d3=0;sela=0;selc=0;
#10 d0=0;d1=0;d2=0;d3=0;sela=1;selc=1;
#10 d0=0;d1=0;d2=0;d3=1;sela=0;selc=1;
#10 d0=0;d1=0;d2=0;d3=0;sela=1;selc=1;
#10 d0=1;d1=1;d2=1;d3=1;sela=1;selc=0;
#10 d0=1;d1=0;d2=0;d3=0;sela=0;selc=0;
#10 d0=1;d1=1;d2=1;d3=1;sela=1;selc=1;
#10 d0=1;d1=1;d2=0;d3=0;sela=1;selc=0;
#10 d0=1;d1=1;d2=1;d3=1;sela=1;selc=1;
end
initial
 begin
 $dumpfile("tb_mux4_1_conditional_data.vcd");
 $dumpvars(0,tb_mux4_1_conditional_data);

end
endmodule