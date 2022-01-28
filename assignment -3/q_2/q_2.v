module des_edgedet #(parameter S0=1'b0, S1=1'b1) (output reg out,input in,clk,rst);
reg pstate,nstate;

always@(posedge clk)
begin
    if (rst)
        pstate<=S0;
    else
        pstate<=nstate;
end
reg count =0;
always@(posedge clk)
begin
    count=count+1;
    nstate<=pstate;
    out=1'b0;
    case(pstate)
    S0:if(in & count==1)
        begin
            nstate<=S1;
            out<=1'b1;
        end
    S1:nstate<=S0;
    endcase
end

endmodule