module usr(
    input wire clk, reset,
    input wire [1:0]ctrl,
    input wire [7:0]d,
    output wire [7:0]q);
    
reg [7:0]r_reg,r_next;
always @(posedge clk, posedge reset )

if (reset)
r_reg<=0;
else 
r_reg<=r_next;

//next state logic
always @*  //here * means comninational logix
case(ctrl)
2'b00: r_next=r_reg ;             //hold
2'b01: r_next={r_reg[6:0],d[0]};  // left shift
2'b10: r_next={d[7],r_reg[7:1]};  // right shift
2'b11: r_next=d;                  // parallel load
endcase 

//output logic
assign q=r_reg ;
endmodule