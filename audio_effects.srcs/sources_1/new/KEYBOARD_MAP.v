`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2017 23:52:00
// Design Name: 
// Module Name: KEYBOARD_MAP
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


module KEYBOARD_MAP(
    input [7:0] key,
    input [3:0] clr,
    input a,b,c,d,e,f,g,
    input asharp,csharp,dsharp,fsharp,gsharp,
    output [11:0] out
    );
    
    assign out = (clr == 4'b1111) ? 0 
               : (key == 'h1C) ? c
               : (key == 'h1B) ? d
               : (key == 'h23) ? e 
               : (key == 'h2B) ? f 
               : (key == 'h34) ? g 
               : (key == 'h33) ? a
               : (key == 'h3B) ? b
               : (key == 'h1D) ? csharp
               : (key == 'h24) ? dsharp
               : (key == 'h2C) ? fsharp
               : (key == 'h35) ? gsharp
               : (key == 'h3C) ? asharp
               : 0;
endmodule
