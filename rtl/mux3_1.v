module mux3_1(a, b, c, s, y);
	input [7:0] a;
	input [7:0] b;
	input [7:0] c;
	input [1:0] s;
	output [7:0] y;
	
	assign y = (s == 2'b00) ? a :
			   (s == 2'b01) ? b :
			   (s == 2'b10) ? c : a;
endmodule
