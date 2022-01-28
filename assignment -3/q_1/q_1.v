module des_moore #(parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100) (output reg y, input in,rst,clk);

reg [2:0] pstate,nstate;

//Sequential circuit
always@(posedge clk)
begin
    if (rst)
        pstate<=S0;
    else
        pstate<=nstate;
end
//Combinational circuit
always@(in,pstate)
begin
    case(pstate)
    S0:nstate<=in ? S1:S0;
    S1:nstate<=in ? S0:S2;
    S2:nstate<=in ? S3:S2;
    S3:nstate<=in ? S4:S1;
    S4:nstate<=in ? S0:S1;
    default:nstate<=S0;
    endcase
end

//Output
always@(pstate)
begin
    case (pstate)
    S0:y<=1'b0;
    S1:y<=1'b0;
    S2:y<=1'b0;
    S3:y<=1'b0;
    S4:y<=1'b1;
    default:y<=1'b0;
    endcase
end
endmodule