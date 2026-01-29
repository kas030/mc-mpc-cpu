module pc(clk, ld_pc, in_pc, a, c);
	input clk, ld_pc, in_pc;
	input [7:0] a;
	output reg [7:0] c;
	initial c = 8'b0;
	always @(negedge clk) begin
		if(in_pc == 1'b1 && ld_pc == 1'b0) c <= c + 1'b1;
		else if(in_pc == 1'b0 && ld_pc == 1'b1) c <= a;
	end
endmodule
