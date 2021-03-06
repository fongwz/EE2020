`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 15:48:04
// Design Name: 
// Module Name: CLK_50M
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


module CLK_50M(
    input CLK,
    output reg CLK50M = 0
    );
    
    reg [31:0] COUNT = 0;
    always @ (posedge CLK) begin
        COUNT <= (COUNT == 0) ? 0 : COUNT + 1;
        CLK50M <= (COUNT == 0) ? ~CLK50M : CLK50M;
    end
endmodule
