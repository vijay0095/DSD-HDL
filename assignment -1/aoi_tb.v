`include "aoi.v"

module aio_str_tb();

 reg x_in1,x_in2,x_in3,x_in4,x_in5;
 wire y_out;
 aio_str DUT(y_out,x_in1,x_in2,x_in3,x_in4,x_in5);

 initial begin 
  $monitor("At time %t, x_in1=(%0d), x_in2=(%0d),x_in3=(%0d),x_in4=(%0d),x_in5=(%0d), y_out(%0d)",$time,x_in1,x_in2,x_in3,x_in4,x_in5,y_out);

 $dumpfile("aio_str_tb.vcd");
 $dumpvars(0,aio_str_tb);

 x_in1=0; x_in2=0; x_in3=0; x_in4=0; x_in5=0; #10;
 x_in1=0; x_in2=0; x_in3=0; x_in4=0; x_in5=1; #10;

 x_in1=0; x_in2=0; x_in3=0; x_in4=1; x_in5=0; #10;
 x_in1=0; x_in2=0; x_in3=0; x_in4=1; x_in5=1; #10;

 x_in1=0; x_in2=0; x_in3=1; x_in4=0; x_in5=0; #10;
 x_in1=0; x_in2=0; x_in3=1; x_in4=0; x_in5=1; #10;

 x_in1=0; x_in2=0; x_in3=1; x_in4=1; x_in5=0; #10;
 x_in1=0; x_in2=0; x_in3=1; x_in4=1; x_in5=1; #10;

 x_in1=0; x_in2=1; x_in3=0; x_in4=0; x_in5=0; #10;
 x_in1=0; x_in2=1; x_in3=0; x_in4=0; x_in5=1; #10;

 x_in1=0; x_in2=1; x_in3=0; x_in4=1; x_in5=0; #10;
 x_in1=0; x_in2=1; x_in3=0; x_in4=1; x_in5=1; #10;

 x_in1=0; x_in2=1; x_in3=1; x_in4=0; x_in5=0; #10;
 x_in1=0; x_in2=1; x_in3=1; x_in4=0; x_in5=1; #10;

 x_in1=1; x_in2=1; x_in3=1; x_in4=1; x_in5=0; #10;
 x_in1=1; x_in2=1; x_in3=1; x_in4=1; x_in5=1; #10;

 x_in1=1; x_in2=0; x_in3=0; x_in4=0; x_in5=0; #10;
 x_in1=1; x_in2=0; x_in3=0; x_in4=0; x_in5=1; #10;

 x_in1=1; x_in2=0; x_in3=0; x_in4=1; x_in5=0; #10;
 x_in1=1; x_in2=0; x_in3=0; x_in4=1; x_in5=1; #10;

 x_in1=1; x_in2=0; x_in3=1; x_in4=0; x_in5=0; #10;
 x_in1=1; x_in2=0; x_in3=1; x_in4=0; x_in5=1; #10;

 x_in1=1; x_in2=0; x_in3=1; x_in4=1; x_in5=0; #10;
 x_in1=1; x_in2=0; x_in3=1; x_in4=1; x_in5=1; #10;

 x_in1=1; x_in2=1; x_in3=0; x_in4=0; x_in5=0; #10;
 x_in1=1; x_in2=1; x_in3=0; x_in4=0; x_in5=1; #10;

 x_in1=1; x_in2=1; x_in3=0; x_in4=1; x_in5=0; #10;
 x_in1=1; x_in2=1; x_in3=0; x_in4=1; x_in5=1; #10;

 x_in1=1; x_in2=1; x_in3=1; x_in4=0; x_in5=0; #10;
 x_in1=1; x_in2=1; x_in3=1; x_in4=0; x_in5=1; #10;

 x_in1=1; x_in2=1; x_in3=1; x_in4=1; x_in5=1; #10;
 x_in1=1; x_in2=1; x_in3=1; x_in4=1; x_in5=0; #10;

 end

endmodule
 