`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2024 20:29:01
// Design Name: 
// Module Name: lfsr_8bit
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


module lfsr_8bit(
    input clk,
    input rst,
    input clk_en,
    output data
    );
    
    lfsr_8bit uut ( .clk(clk), .rst(rst), .clk_en(clk_en), .data(data) ); initial begin // Initialize Inputs clk = 0; rst = 1; clk_en = 0; // Reset the LFSR #10; rst = 0; clk_en = 1; // Enable Clock #100; clk_en = 0; #10; clk_en = 1; // Continue the simulation #1000; $stop; end always #5 clk = ~clk; // Generate Clock Signal with 10ns period (100MHz) endmodule
endmodule
