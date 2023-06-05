`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Daniel Lamb
// 
// Create Date: 03/19/2023 10:49:57 PM
// Design Name: mux
// Module Name: mux

// Description: 
// Multiplexex for use with other modules on Xilinx Spartan3E PFGA Basys2 board.
//////////////////////////////////////////////////////////////////////////////////


module mux(
    input [3:0] digit_1, input [3:0] digit_2,
    input [3:0] digit_3, input [3:0] digit_4,
    input [1:0] choice, output reg [3:0] decision
    );
    always @(*) begin
        case(choice)
            4'b00: decision = digit_1;
            4'b01: decision = digit_2;
            
            4'b10: decision = digit_3;
            4'b11: decision = digit_4;
        endcase
    end
endmodule
