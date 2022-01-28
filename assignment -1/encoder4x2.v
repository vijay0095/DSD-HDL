module d_encod_4x2(output wire [1:0]bout,input [3:0]bin,input enable);
assign bout = (bin==4'b1000) ? (enable==1?2'b00:2'bzz) :
 (bin==4'b0100) ? (enable==1?2'b01:2'bzz) :
 (bin==4'b0010) ? (enable==1?2'b10:2'bzz) :
 (bin==4'b0001) ? (enable==1?2'b11:2'bzz) :
 2'bzz;
endmodule