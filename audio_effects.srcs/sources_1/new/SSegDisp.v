`timescale 1ns / 1ps

//Turns 12bit input binary number to seven segment display
//Excludes the 7th bit dot on seven segment display
module SSegDisp(
    input [11:0] Binary,//Inupt what number you want displayed in binary
    input clk_700hz,
    input [15:0] key,
    output [6:0] seg,   //Shows number in seven segment
    output [3:0] an     //Selects which segment to show
    );
    
    wire [3:0] Thou, Hund, Tens, Ones;
    wire [6:0] ThouSEG, HundSEG, TensSEG, OnesSEG;
    
    BINtoINT BTI (Binary, Thou, Hund, Tens, Ones);      // Converts [11:0} Binary data into decimal integer values
    
    INTtoSEG THOUSAND (clk_700hz, Thou, ThouSEG);             // Converts Thousands Position Integer into Equivalent 7-segment Code
    INTtoSEG HUNDREDS (clk_700hz, Hund, HundSEG);             // Converts Hundreds Position Integer into Equivalent 7-segment Code
    INTtoSEG TENS (clk_700hz, Tens, TensSEG);                 // Converts Tens Position Integer into Equivalent 7-segment Code
    INTtoSEG ONES (clk_700hz, Ones, OnesSEG);                 // Converts Ones Position Integer into Equivalent 7-segment Code
    
    Sev_Seg DisplayOut (clk_700hz, ThouSEG, HundSEG, TensSEG, OnesSEG, key[15:12], key[7:0], seg, an);  //Sends out the appropriate 7-segment code corrected with clock timing
      
endmodule
