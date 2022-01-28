module mux4x1_str(output out, input [3:0]A,input s0,s1);

  wire sb1,sb2,o1,o2,o3,o4;

   and D1(o1,sb1,sb2,A[0]);
   and D2(o2,sb1,s1,A[1]);
   and D3(o3,s0,sb2,A[2]);
   and D4(o4,s0,s1,A[3]);
   not INV1(sb1,s0);
   not INV2(sb2,s1);
   or O1(out,o1,o2,o3,o4);

endmodule
