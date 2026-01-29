module con_unit(
	input [7:0] ir,
	input nop1,
	input arpc,
	input pcin,
	input rdrs,
	input arrs,
	input arrd,
	input rdpc,
	input pcrs,
	input nop2,
	input irm,
	input mrs,
	input rdm,
	input plus,
	input minu,
	input rdin,
	input otrs,
	output ld_ar,
	output ld_pc, in_pc,
	output [1:0] s,
	output wr, re,
	output ld_ir,
	output s0,
	output we,
	output au_en,
	output g_en,
	output in_en, out_en,
	output [1:0] sr, dr,
	output [3:0] ac
);
	assign ld_ar = arpc | arrs | arrd;
	assign ld_pc = pcrs;
	assign in_pc = pcin;
	assign s = {arrd, arrs};
	assign wr = mrs;
	assign re = irm | rdm;
	assign ld_ir = irm;
	assign s0 = rdrs | rdm | plus | minu | rdin;
	assign we = rdrs | rdpc | rdm | plus | minu | rdin;
	assign au_en = rdrs | mrs | plus | minu | otrs;
	assign g_en = minu;
	assign in_en = rdin;
	assign out_en = otrs;
	assign sr = ir[1:0];
	assign dr = ir[3:2];
	assign ac = ir[7:4];
endmodule
