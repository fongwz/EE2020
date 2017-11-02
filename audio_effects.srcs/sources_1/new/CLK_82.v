`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 16:21:13
// Design Name: 
// Module Name: CLK_82
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


module CLK_82E(
    input CLK,
    output reg CLK82 = 0
    );
    
    reg [31:0] COUNT = 0;
    always @ (posedge CLK) begin
        COUNT <= (COUNT == 609755) ? 0 : COUNT + 1;
        CLK82 <= (COUNT == 0) ? ~CLK82 : CLK82;
    end
endmodule
