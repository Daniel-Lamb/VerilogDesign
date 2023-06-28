`timescale 1ns / 1ps

module halfadder(
    input a,
    input b,
    output s_out,
    output c_out
    );

assign s_out = ((a + b) & ~(a & b));
assign c_out = (a & b);

endmodule
