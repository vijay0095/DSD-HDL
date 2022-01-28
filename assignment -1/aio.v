module aio_str(output out , input [4:0]i);
wire y1,y2;

and G1(y1,i[0],i[1]);
and G2(y2,i[2],i[3],i[4]);
nor G3(out,y1,y2);

endmodule