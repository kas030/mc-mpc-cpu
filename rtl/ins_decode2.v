module ins_decode2(
	input [2:0] m2,
	input en,
	output nop2,
	output irm,
	output mrs,
	output rdm,
	output plus,
	output minu,
	output rdin,
	output otrs
);
	assign nop2 = en && m2 == 3'b000;
	assign irm = en && m2 == 3'b001;
	assign mrs = en && m2 == 3'b010;
	assign rdm = en && m2 == 3'b011;
	assign plus = en && m2 == 3'b100;
	assign minu = en && m2 == 3'b101;
	assign rdin = en && m2 == 3'b110;
	assign otrs = en && m2 == 3'b111;
endmodule
