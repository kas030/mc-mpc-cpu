module mux5_3_1(a, b, c, s, y);
	input [4:0] a;
	input [4:0] b;
	input [4:0] c;
	input [1:0] s;
	output [4:0] y;
	
	assign y = (s == 2'b00) ? a :
			   (s == 2'b01) ? b :
			   (s == 2'b10) ? c : a;
endmodule
