`timescale 1ns / 1ps

//turns an 3bit integer input into its seven segment display equivalent
module INTtoSEG(
    input CLK,
    input [3:0] INT,
    output reg [6:0] SEG
    );
    
always @ (posedge CLK) begin	
    case (INT)
        0 : SEG = 7'b0000001;
        1 : SEG = 7'b1001111;
        2 : SEG = 7'b0010010;
        3 : SEG = 7'b0000110;
        4 : SEG = 7'b1001100;
        5 : SEG = 7'b0100100;
        6 : SEG = 7'b0100000;
        7 : SEG = 7'b0001111;
        8 : SEG = 7'b0000000;
        9 : SEG = 7'b0000100;
        default : SEG = 7'b1111110;
    endcase
end
endmodule
