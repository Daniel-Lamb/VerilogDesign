`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 12:32:12 PM
// Design Name: 
// Module Name: anode_driver
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
