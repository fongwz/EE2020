`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2017 15:25:42
// Design Name: 
// Module Name: TARGET_FREQ_CALC
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


module TARGET_FREQ_CALC(
    input [31:0] target_freq,
    output [31:0] count_max
    );
    
    assign count_max = (100000000/(2*target_freq)) - 1;
endmodule
