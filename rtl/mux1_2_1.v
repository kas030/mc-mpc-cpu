module mux1_2_1(a, b, s, y);
	input a, b, s;
	output y;
	assign y = (s == 0) ? a : b;
endmodule
