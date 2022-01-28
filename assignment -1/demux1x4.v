module demux1x4(output [3:0]y,input [1:0]s, input i);
  wire t0,t1;
  and G1(y[0],i,t1,t0);
  and G2(y[1],i,t1,s[0]);
  and G3(y[2],i,s[1],t0);
  and G4(y[3],i,s[1],s[0]);
  not G5(t0,s[0]);
  not G6(t1,s[1]);

endmodule
