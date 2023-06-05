`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Daniel Lamb
// 
// Create Date: 03/18/2023 10:45:01 PM
// Design Name: decoder
// Module Name: decoder

// Description: 
// Clock enable module that generates an enable signal based on a clock input.
// For use with other modules on Xilinx Spartan3E PFGA Basys2 board.
//////////////////////////////////////////////////////////////////////////////////



module clock_enable(input clock, output reg enable);
    reg [16:0] count;
    initial begin
        count = 0;
        enable = 0;
    end
    always @(posedge clock) begin
        if(count == 4095) begin
            count = 0;
            enable = 1;
        end
        else begin
        count = count + 1;
        enable = 0;
        end
    end
endmodule
