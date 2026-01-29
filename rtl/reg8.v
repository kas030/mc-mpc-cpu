module reg8(clk, ld, a, x);
	input clk;
	input ld;
	input [7:0] a;
	output reg [7:0] x;
	initial x = 8'b0;
	always @(negedge clk) begin
		if(ld) x <= a;
	end
endmodule
