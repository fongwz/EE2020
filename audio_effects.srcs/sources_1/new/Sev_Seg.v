`timescale 1ns / 1ps

//sets each respective number to their anode
module Sev_Seg(
    input clk_700hz,
    input [6:0] Thou,
    input [6:0] Hund,
    input [6:0] Tens,
    input [6:0] Ones,
    input pulseC, pulseD, pulseE, pulseF, pulseG,
    input switch,
    output reg [6:0] seg,
    output reg [3:0] an
    );
    
    wire [6:0] seg_piano;
    reg [1:0] COUNT = (switch)? 0 : 3; 
    reg [2:0] segShow;
    
    assign seg_piano = (segShow==1)?7'b0110001:(segShow==2)?7'b1000010:(segShow==3)?7'b0110000:(segShow==4)?7'b0111000:(segShow==5)?7'b00000100:0;
    
    always @ (posedge clk_700hz) begin
        if(switch==0)begin
            COUNT = 3;
        end
        COUNT = COUNT + switch;
        case (COUNT) 
            2'b00 : 
                begin 
                seg = Thou; 
                an = 4'b0111;
                end
            2'b01 : 
                begin
                seg = Hund; 
                an = 4'b1011;
                end
            2'b10 : 
                begin 
                seg = Tens; 
                an = 4'b1101;
                end
            2'b11 : 
                begin
                an = 4'b1110;
                if (switch) begin
                    seg = Ones;
                end           
                else begin
                    if (pulseC) begin
                        segShow = 1;
                    end
                    if (pulseD) begin
                        segShow = 2;
                    end
                    if (pulseE) begin
                        segShow = 3;
                    end
                    if (pulseF) begin
                        segShow = 4;
                    end
                    if (pulseG) begin
                        segShow = 5;
                    end
                    seg = seg_piano;
                end
                end
        endcase
    end      
endmodule
