`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Engineer: Daniel Lamb
// 
// Create Date: 03/17/2023 12:28:04 PM
// Design Name: Seven Segment Display
// Module Name: seven

// Description: 
// Seven segment display for use with other modules on Xilinx Spartan3E PFGA Basys2 board.
//////////////////////////////////////////////////////////////////////////////////


module seven(
    input clock,
    input [3:0] digit_1, input [3:0] digit_2,
    input [3:0] digit_3, input [3:0] digit_4,
    output [3:0] anode, output [6:0] display
    );
    wire [1:0] choice;
    wire [3:0] decision;
    clock_enable inst_clock_enable(clock, enable);
    anode_driver inst_anode_driver(enable, choice, anode);
    mux inst_mux(digit_1, digit_2, digit_3, digit_4, choice, decision);
    decoder inst_decoder(decision, display);
endmodule
