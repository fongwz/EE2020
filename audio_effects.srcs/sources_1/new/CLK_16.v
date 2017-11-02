`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 15:54:17
// Design Name: 
// Module Name: CLK_16
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


module CLK_16C(
    input CLK,
    output reg CLK16 = 0
    );
    
    reg [31:0] COUNT = 0;
    always @ (posedge CLK) begin
        COUNT <= (COUNT == 3124999) ? 0 : COUNT + 1;
        CLK16 <= (COUNT == 0) ? ~CLK16 : CLK16;
    end
endmodule
