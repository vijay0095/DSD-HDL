module ud(output wire[3:0]count, input clk,reset,m);
reg[3:0]temp=4'b0000;

always @(posedge clk, m)
begin
    if(reset==1)
    temp<=0;
    else
    begin
        if(m==1) //up counter
        begin
            if(temp==15)
            temp<=0;
            else
            temp<=temp+1;
        end
        else
        begin
            if(temp==0)
            temp<=15;
            else
            temp<=temp-1;
        end
    end
end

//ouput logic
assign count =temp;

endmodule
