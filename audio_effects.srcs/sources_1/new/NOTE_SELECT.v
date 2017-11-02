`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2017 15:07:23
// Design Name: 
// Module Name: NOTE_SELECT
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


module NOTE_SELECT(
    input pulseC, pulseD, pulseE, pulseF, pulseG,
    input [11:0] clk_1047,
    input [11:0] clk_1175,
    input [11:0] clk_1319,
    input [11:0] clk_1397,
    input [11:0] clk_1568,
    output [11:0] note_out
    );
    
    assign note_out = (pulseC)?clk_1047:(pulseD)?clk_1175:(pulseE)?clk_1319:(pulseF)?clk_1397:(pulseG)?clk_1568:0;
endmodule
