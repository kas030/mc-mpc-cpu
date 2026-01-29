module mir(clk, uins, addr, m1, m2, bt, cond_sel);
	input clk;
	input [12:0] uins;
	output reg [4:0] addr;
	output reg [2:0] m1, m2;
	output reg bt;
	output reg cond_sel;
	initial begin
		addr = 5'b0;
		m1 = 3'b0;
		m2 = 3'b0;
		bt = 1'b0;
		cond_sel = 1'b0;
	end
	always @(negedge clk) begin
		addr <= uins[10:6];
		m1 <= uins[5:3];
		m2 <= uins[2:0];
		bt <= uins[11];
		cond_sel <= uins[12];
	end
endmodule
