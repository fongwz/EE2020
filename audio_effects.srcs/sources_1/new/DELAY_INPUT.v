`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2017 15:21:02
// Design Name: 
// Module Name: DELAY_INPUT
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


module DELAY_INPUT(
    input CLK,
    input [11:0]MIC_in,
    output [11:0]delay_out
    );
    
    reg [20:0] i;
    reg [11:0] mem [0:4999];
    
    assign delay_out = mem[4999];
    
    always @ (posedge CLK) begin
        mem[0] <= MIC_in;
        for ( i = 0; i < 4999; i = i + 1) begin
            mem[i+1] <= mem[i];
        end 
    end
    
endmodule
