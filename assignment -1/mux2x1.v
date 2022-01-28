module mux2_1_conditional_data(out,a,b,sel);
 output out;
 input a,b,sel;
 assign out = sel?a:b;
endmodule