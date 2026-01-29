module mux2_1(a, b, s, y);
	input [7:0] a;
	input [7:0] b;
	input s;
	output [7:0] y;
	
	assign y = (s == 0) ? a : b;
endmodule
