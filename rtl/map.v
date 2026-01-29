module map(ir, ad);
	input [3:0] ir;
	output [4:0] ad;
	assign ad = {ir, 1'b0};
endmodule
