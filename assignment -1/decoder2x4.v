module c_dec_2x4(output wire [3:0]X,input a0,a1,enable);
 assign X[0] = (a0==0&&a1==0)?(enable==1?1:1'bz):(enable==1?0:1'bz);
 assign X[1] = (a0==0&&a1==1)?(enable==1?1:1'bz):(enable==1?0:1'bz);
 assign X[2] = (a0==1&&a1==0)?(enable==1?1:1'bz):(enable==1?0:1'bz);
 assign X[3] = (a0==1&&a1==1)? (enable==1?1:1'bz):(enable==1?0:1'bz);
endmodule