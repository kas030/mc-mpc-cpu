module reg5(clk, ld, a, x);
	input clk;
	input ld;
	input [4:0] a;
	output reg [4:0] x;
	initial x = 5'b0;
	always @(negedge clk) begin
		if(ld) x <= a;
	end
endmodule
