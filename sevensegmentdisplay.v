`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 12:28:04 PM
// Design Name: 
// Module Name: seven
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
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