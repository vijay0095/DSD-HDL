module Data_converter( input [15:0] datain ,input rst,clk,output reg [7:0] dataout);
       reg count = 0 ;
      always@(posedge clk)
           begin
              count = count+1 ;
              if(rst)
                  dataout <= 0 ;
              else
                  if(count%2==0)
                     dataout <= {datain[7:0]}  ;
                  else
                  dataout <= {datain[15:8]}  ;
           end
      
endmodule