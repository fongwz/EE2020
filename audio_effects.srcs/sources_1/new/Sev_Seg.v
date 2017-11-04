`timescale 1ns / 1ps

//sets each respective number to their anode
module Sev_Seg(
    input clk_700hz,
    input [6:0] Thou,
    input [6:0] Hund,
    input [6:0] Tens,
    input [6:0] Ones,
    input [3:0] key_clear,
    input [7:0] key_in,
    output reg [6:0] seg,
    output reg [3:0] an
    );
    
    reg [1:0] COUNT;
    wire CLEAR_PIANO;
    reg MODE_VOLUME = 1;
        
    always @ (key_in) begin
        if (key_in == 'h16 || key_in  == 'h1E) begin
            MODE_VOLUME <= 1;
        end else if (key_in == 'h26) begin
            MODE_VOLUME <= 0;
        end
    end
     
    always @ (posedge clk_700hz) begin
        COUNT = COUNT + 1;
        case (COUNT) 
            2'b00 : 
                begin 
                    if (MODE_VOLUME) begin
                        seg = Thou;
                    end else begin
                        seg = 7'b11111111;
                    end
                    an = 4'b0111;
                end
            2'b01 : 
                begin
                    if (MODE_VOLUME) begin
                        seg = Hund;
                    end else begin
                        seg = 7'b11111111; 
                    end
                    an = 4'b1011;
                end
            2'b10 : 
                begin
                    if (MODE_VOLUME) begin 
                        seg = Tens;
                    end else if (key_in == 'h1D && MODE_VOLUME ==0) begin
                        seg = 7'b0110001; //C
                    end else if (key_in == 'h24 && MODE_VOLUME ==0) begin
                        seg = 7'b1000010; //D
                    end else if (key_in == 'h2C && MODE_VOLUME ==0) begin
                        seg = 7'b0111000; //E
                    end else if (key_in == 'h35 && MODE_VOLUME ==0) begin
                        seg = 7'b0000100; //G
                    end else if (key_in == 'h3C && MODE_VOLUME ==0) begin
                        seg = 7'b0001000; //A
                    end else begin
                        seg = 7'b1111111;
                    end 
                an = 4'b1101;
                end
            2'b11 : 
                begin
                    if (MODE_VOLUME) begin
                        seg = Ones;
                    end else if (key_in == 'h1D && MODE_VOLUME ==0) begin 
                        seg = 7'b0100100; //sharp
                    end else if (key_in == 'h24 && MODE_VOLUME ==0) begin
                        seg = 7'b0100100; //sharp
                    end else if (key_in == 'h2C && MODE_VOLUME ==0) begin
                        seg = 7'b0100100; //sharp
                    end else if (key_in == 'h35 && MODE_VOLUME ==0) begin
                        seg = 7'b0100100; //sharp
                    end else if (key_in == 'h3C && MODE_VOLUME ==0) begin
                        seg = 7'b0100100; //sharp
                    end else if (key_in == 'h1C && MODE_VOLUME ==0) begin
                        seg = 7'b0110001; //C
                    end else if (key_in == 'h1B && MODE_VOLUME ==0) begin
                        seg = 7'b1000010; //D
                    end else if (key_in == 'h23 && MODE_VOLUME ==0) begin
                        seg = 7'b0110000; //E
                    end else if (key_in == 'h2B && MODE_VOLUME ==0) begin
                        seg = 7'b0111000; //F
                    end else if (key_in == 'h34 && MODE_VOLUME ==0) begin
                        seg = 7'b000100; //G
                    end else if (key_in == 'h33 && MODE_VOLUME ==0) begin
                        seg = 7'b0001000; //A
                    end else if (key_in == 'h3B && MODE_VOLUME ==0) begin
                        seg = 7'b1100000; //B
                    end else begin
                        seg = 7'b1111111;
                    end
                an = 4'b1110;
                end
        endcase
    end      
endmodule
