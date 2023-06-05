`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Daniel Lamb
// 
// Create Date: 03/19/2023 10:49:57 PM
// Design Name: anode_driver
// Module Name: anode_driver

// Description: 
// Anode driver module that drives a multiplexed display.
// For use with other modules on Xilinx Spartan3E PFGA Basys2 board.
//////////////////////////////////////////////////////////////////////////////////


module anode_driver(input enable, output reg [1:0] choice, output reg [3:0] anode);
    initial begin
        choice = 0;
        anode = 0;
    end
    always @(posedge enable) begin
        choice = choice + 1;
        case(choice)
            4'b00: anode = 4'b0111;
            4'b01: anode = 4'b1011;
            4'b10: anode = 4'b1101;
            4'b11: anode = 4'b1110;
        endcase
    end
endmodule
