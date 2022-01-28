module sr(output wire [7:0]q,input clk,i);
reg [7:0]temp;

always @(posedge clk)
begin
    temp = {temp[6:0],i};
end

//output logic
assign q=temp;
endmodule