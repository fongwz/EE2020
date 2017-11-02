`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2017 14:30:17
// Design Name: 
// Module Name: SINGLE_PULSE_DFF
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


module SINGLE_PULSE_DFF(
    input DFF_CLOCK,
    input button,
    output pulse
    );
    
    wire Q1,Q2;
    
    my_dff dff1(DFF_CLOCK,button,Q1);
    my_dff dff2(DFF_CLOCK,Q1,Q2);
    
    assign pulse = Q1 & ~Q2;
endmodule
