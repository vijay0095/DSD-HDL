module aio_str(output y_out, input x_in1,x_in2,x_in3,x_in4,x_in5);

 wire y1,y2;

  and A1(y1,x_in1,x_in2);
  and A2(y2,x_in3,x_in4,x_in5);
  nor A3(y_out,y1,y2);

endmodule