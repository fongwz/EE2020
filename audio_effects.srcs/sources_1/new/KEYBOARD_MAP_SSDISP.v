`timescale 1ns / 1ps

module KEYBOARD_MAP_SSDISP(
    //CLK
    input clk_700hz,
    
    //keyboard inputs
    input [7:0] key,
    input [3:0] clr,
    
    //MIC
    input [11:0] MIC_in,
    
    //Piano feature
    input a,b,c,d,e,f,g,
    input asharp,csharp,dsharp,fsharp,gsharp,
    
    //Playback feature
    input [11:0] playback_out,
    
    //Delay feature
    input [11:0] delay_out,
    
    output [6:0] seg,
    output [3:0] an
    );
   
   wire [3:0] Thou, Hund, Tens, Ones;
   wire [6:0] ThouSEG, HundSEG, TensSEG, OnesSEG;

   BINtoINT BTI (Binary, Thou, Hund, Tens, Ones); // Converts [11:0} Binary data into decimal integer values
    
endmodule