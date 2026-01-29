module ad_signal(cond, bt, s);
	input cond;
	input bt;
	output [1:0] s;
	assign s = {bt, (~bt) & cond};
endmodule
	