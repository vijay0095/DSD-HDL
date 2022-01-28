module mux2x1(output out,input a,b,s);
  
   wire and_1,and_2,s_c;

   not (s_c,s);
   and (and_1,a,s_c);
   and (and_2,b,s);
   or (out,and_1,and_2);

endmodule

module mux4x2x1_str(output out, input [3:0]i,input [2:1]s);

  wire mux1, mux2;

   mux2x1 mux_1(mux1,i[1],i[0],s[2]);
   mux2x1 mux_2(mux2,i[3],i[2],s[2]);
   mux2x1 mux_3(out,mux1,mux2,s[1]);
   
endmodule
