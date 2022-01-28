module dec2x4(output [3:0]y,input [1:0]i,input EN);
  wire t0,t1;
  
  and G1(y[0],t0,t1,EN);
  and G2(y[1],t0,i[1],EN);
  and G3(y[2],i[0],t1,EN);
  and G4(y[3],i[0],i[1],EN);
  not G5(t0,i[0]);
  not G6(t1,i[1]);

endmodule

