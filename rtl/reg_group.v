module reg_group(clk, we, sr, dr, i, s, d);
	input clk, we;
	input [1:0] sr, dr;
	input [7:0] i;
	output reg [7:0] s, d;
	reg [7:0] r0, r1, r2, r3;
	initial begin
		r3 = 8'h07;
		r0 = 8'h01;
	end
	always @(*) begin
		if(sr == 2'b00) s = r0;
		else if(sr == 2'b01) s = r1;
		else if(sr == 2'b10) s = r2;
		else s = r3;
		
		if(dr == 2'b00) d = r0;
		else if(dr == 2'b01) d = r1;
		else if(dr == 2'b10) d = r2;
		else d = r3;
	end
	
	always @(negedge clk) begin
		if(we) begin
			if(dr == 2'b00) r0 <= i;
			else if(dr == 2'b01) r1 <= i;
			else if(dr == 2'b10) r2 <= i;
			else r3 <= i;
		end
	end
endmodule
