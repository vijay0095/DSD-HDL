module mux4_1_conditional_data(output out, input [3:0]A ,input s0,s1);

 assign out = s0?(s1?A[3]:A[2]):(s1?A[1]:A[0]);
endmodule