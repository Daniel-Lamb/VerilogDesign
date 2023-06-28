`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Daniel Lamb
// 
// Create Date: 05/28/2023 10:45:31 PM
// Design Name: TripleCaesarCipher
// Module Name: TripleCaesarCipher

// Description: 
// Triple Layer Caesar Cipher
// For use with other modules on Xilinx Spartan3E PFGA Basys2 board.
//////////////////////////////////////////////////////////////////////////////////


module TripleCaesarCipher(
  input wire [7:0] plaintext,
  input wire [7:0] key,
  output wire [7:0] ciphertext
);

  reg [7:0] intermediate;
  reg [7:0] intermediate2;
  reg [7:0] intermediate3;

  always @* begin
    intermediate = plaintext ^ key;
    intermediate2 = intermediate + key;
    intermediate3 = intermediate2 ^ (intermediate >> 4);
    ciphertext = intermediate3 ^ key;
  end

endmodule