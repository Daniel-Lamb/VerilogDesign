`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 12:31:05 PM
// Design Name: 
// Module Name: mux
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