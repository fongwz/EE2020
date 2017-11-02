`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2017 15:47:09
// Design Name: 
// Module Name: FLEXIBLE_CLK_DIVIDER
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


module FLEXIBLE_CLK_DIVIDER(
    input CLK,
    input [31:0] desired_freq,
    output desired_clk
    );
    
    wire [31:0] COUNT_NUM;
    TARGET_FREQ_CALC(desired_freq, COUNT_NUM);
    CLK_VAR(CLK, COUNT_NUM, desired_clk);
    
endmodule
