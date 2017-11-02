`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2017 10:37:01
// Design Name: 
// Module Name: CHECK_LONG
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


module CHECK_LONG(
    input TOGGLE_LONG,  // switch
    input pulse,  //pulse from button
    input [11:0] clk_sound,   //output sound
    output reg [11:0] speaker = 0
    );
    
    reg [11:0] med = 0;
    always @ (pulse) begin
        if(TOGGLE_LONG == 1) begin
            speaker <= clk_sound;
        end
        else begin
            speaker <= (pulse) ? clk_sound : 0;
        end
    end
    
    //assign speaker = med;
    
endmodule
