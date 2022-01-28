module t_l (input clk, L, R, H, output reg [2:0] TL, TR);
	always @(posedge clk) begin
		if (1 == H) begin
			if (TL == 3'b000 && TR == 3'b000) begin
				TL <= 3'b000;TR <= 3'b000;#10;
				TL <= 3'b100;TR <= 3'b001;#10;
				TL <= 3'b110;TR <= 3'b011;#10;
				TL <= 3'b111;TR <= 3'b111;#10;
				TL <= 3'b110;TR <= 3'b011;#10;
				TL <= 3'b100;TR <= 3'b001;#10;
				TL <= 3'b000;TR <= 3'b000;#10;
			end
			else begin
				TL <= 3'b000;
				TR <= 3'b000;
			end
		end
		else if (1 == L) begin
			TR <= 3'b000;#10;
			TL <=3'b100;#10;
			TL <=3'b110;#10;
      TL <=3'b111;#10;	
			TL <=3'b000;
    end
		else if (1 == R) begin
			TL <= 3'b000;#10;
			TR <=3'b001;#10;
			TR <=3'b011;#10;
      TR <=3'b111;#10;	
			TR <=3'b000;
		end
		else begin
			TL <= 3'b000;
			TR <= 3'b000;
		end
	end
endmodule