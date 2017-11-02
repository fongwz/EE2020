`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2017 13:57:15
// Design Name: 
// Module Name: CLK_VAR
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


module CLK_VAR(
    input CLK,
    input [31:0] COUNTNUM,
    output reg CLKVAR = 0
    );
    
    reg [31:0] COUNT = 0;
    always @ (posedge CLK) begin
        COUNT <= (COUNT == COUNTNUM) ? 0 : COUNT + 1;
        CLKVAR <= (COUNT == 0) ? ~CLKVAR : CLKVAR;
    end
endmodule
