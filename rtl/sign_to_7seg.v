module sign_to_7seg (
    input sign,
    output [6:0] seg
);
    assign seg = {6'b0, sign};
endmodule
