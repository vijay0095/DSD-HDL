module mux4x1_str(output out, input i0,i1,i2,i3,s1,s2);

  wire sb1,sb2,o1,o2,o3,o4;

   and D1(o1,sb1,sb2,i0);
   and D2(o2,sb1,s2,i1);
   and D3(o3,s1,sb2,i2);
   and D4(o4,s1,s2,i3);
   not INV1(sb1,s1);
   not INV2(sb2,s2);
   or O1(out,o1,o2,o3,o4);

endmodule
