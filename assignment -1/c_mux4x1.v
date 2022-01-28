module mux4_1_conditional_data(zout,d0,d1,d2,d3,sela,selc);
 output zout;
 input d0,d1,d2,d3,sela,selc;

 assign zout = selc?(sela?d3:d2):(sela?d1:d0);
endmodule