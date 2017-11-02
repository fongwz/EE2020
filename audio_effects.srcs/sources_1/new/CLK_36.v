`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2017 16:18:20
// Design Name: 
// Module Name: CLK_36
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


module CLK_36D(
    input CLK,
    output reg CLK36 = 0
    );
    
    reg [31:0] COUNT = 0;
    always @ (posedge CLK) begin
        COUNT <= (COUNT == 1388887) ? 0 : COUNT + 1;
        CLK36 <= (COUNT == 0) ? ~CLK36 : CLK36;
    end
endmodule
