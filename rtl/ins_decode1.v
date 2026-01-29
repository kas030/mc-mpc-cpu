module ins_decode1(
	input [2:0] m1,
	input en,
	output nop1,
	output arpc,
	output pcin,
	output rdrs,
	output arrs,
	output arrd,
	output rdpc,
	output pcrs
);
	assign nop1 = en && m1 == 3'b000;
	assign arpc = en && m1 == 3'b001;
	assign pcin = en && m1 == 3'b010;
	assign rdrs = en && m1 == 3'b011;
	assign arrs = en && m1 == 3'b100;
	assign arrd = en && m1 == 3'b101;
	assign rdpc = en && m1 == 3'b110;
	assign pcrs = en && m1 == 3'b111;
endmodule
