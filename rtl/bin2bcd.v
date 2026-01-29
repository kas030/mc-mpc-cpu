module bin2bcd (
    input  [7:0] bin,
    output reg sign,
    output reg [3:0] bcd_h,
    output reg [3:0] bcd_t,
    output reg [3:0] bcd_o
);
    integer i;
    reg [7:0] abs_bin;
    reg [19:0] shift;

    always @(*) begin
        if (bin[7] == 1'b1) begin
            sign = 1'b1;
            abs_bin = (~bin) + 1'b1;
        end else begin
            sign = 1'b0;
            abs_bin = bin;
        end

        shift = 20'd0;
        shift[7:0] = abs_bin;

        for (i = 0; i < 8; i = i + 1) begin
            if (shift[11:8] >= 5) shift[11:8] = shift[11:8] + 4'd3;
            if (shift[15:12] >= 5) shift[15:12] = shift[15:12] + 4'd3;
            if (shift[19:16] >= 5) shift[19:16] = shift[19:16] + 4'd3;
            shift = shift << 1;
        end

        bcd_o = shift[11:8];
        bcd_t = shift[15:12];
        bcd_h = shift[19:16];
    end
endmodule
