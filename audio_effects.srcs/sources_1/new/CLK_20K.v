`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 14:33:38
// Design Name: 
// Module Name: CLK_20K
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


module CLK_20K(
    input CLK,
    output reg CLK20K = 0
    );
    
    reg [31:0] COUNT = 0;
    always @ (posedge CLK) begin
        COUNT <= (COUNT == 2499) ? 0 : COUNT + 1;
        CLK20K <= (COUNT == 0) ? ~CLK20K : CLK20K;
    end
    
endmodule
