`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Daniel Lamb
// 
// Create Date: 05/28/2023 11:36:37 PM
// Design Name: TripleCaesarDecipher
// Module Name: TripleCaesarDecipher

// Description: 
// Triple Layer Caesar Decipher
// For use with other modules on the Xilinx Spartan3E PFGA Basys2 board.
//////////////////////////////////////////////////////////////////////////////////


module TripleCaesarDecipher(
  input wire [7:0] ciphertext,
  input wire [7:0] key,
  output wire [7:0] plaintext
);

  reg [7:0] intermediate;
  reg [7:0] intermediate2;
  reg [7:0] intermediate3;

  always @* begin
    intermediate3 = ciphertext ^ key;
    intermediate2 = intermediate3 ^ (intermediate3 >> 4);
    intermediate = intermediate2 - key;
    plaintext = intermediate ^ key;
  end

endmodule
