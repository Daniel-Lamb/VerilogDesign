`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2023 12:28:58 PM
// Design Name: 
// Module Name: clock_enable
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