module updown_counter_mod13(output reg [3:0] count ,input clk , rst , up) ;
       always@(posedge clk)
            begin
               if(rst || count == 12)
                   count <= 0 ;
               else if(up)
                   count <= count+1 ;
               else 
                   count <= count-1 ;
            end
endmodule