module au(au_en, ac, a, b, t, gf);
	input au_en;
	input [3:0] ac;
	input [7:0] a, b;
	output [7:0] t;
	output gf;
	
	reg [7:0] t;
	reg gf;
	always @(*) begin
		if(au_en == 1) begin
			case(ac)
				4'b1000: begin t = a + b; gf = 0;     end
				4'b1001: begin t = b - a; gf = b > a; end
				4'b0100,
				4'b0101,
				4'b1101: begin t = a;     gf = 0;     end
				default: begin t = 8'hZZ; gf = 0;     end
			endcase
		end else begin
			t = 8'hZZ;
			gf = 0;
		end
	end
endmodule
