module seg8_scan (
    input clk,
    input [6:0] seg7, seg6, seg5, seg4,
    input [6:0] seg3, seg2, seg1, seg0,
    output reg [6:0] seg,
    output reg [7:0] cs
);
    reg [11:0] cnt;
    reg [2:0] scan;

    always @(negedge clk) begin
        if (cnt >= 3000) begin
            cnt <= 12'd0;
            scan <= scan + 3'd1;
        end else begin
            cnt <= cnt + 12'd1;
        end
    end

    always @(*) begin
		case (scan)
			3'd0: begin seg = seg0; cs = 8'b11111110; end
			3'd1: begin seg = seg1; cs = 8'b11111101; end
			3'd2: begin seg = seg2; cs = 8'b11111011; end
			3'd3: begin seg = seg3; cs = 8'b11110111; end
			3'd4: begin seg = seg4; cs = 8'b11101111; end
			3'd5: begin seg = seg5; cs = 8'b11011111; end
			3'd6: begin seg = seg6; cs = 8'b10111111; end
			default: begin seg = seg7; cs = 8'b01111111; end
		endcase
	end
endmodule
