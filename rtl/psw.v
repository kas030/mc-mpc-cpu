module psw(input clk, g_en, g, output reg gf);
	initial gf = 1'b0;
	always @(negedge clk) begin
		if(g_en) gf <= g;
	end
endmodule
