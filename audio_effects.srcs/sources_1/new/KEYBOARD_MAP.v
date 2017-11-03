`timescale 1ns / 1ps

module KEYBOARD_MAP(
    input [7:0] key,
    input [3:0] clr,
    
    //Paino feature
    input a,b,c,d,e,f,g,
    input asharp,csharp,dsharp,fsharp,gsharp,
    
    //Playback feature
    input [11:0] playback_out,
    
    //Delay feature
    //input [11:0] delay_out,
    
    output [11:0] final_out
    );
   
   reg playback, 
        //delay,
        paino;
   wire [11:0] temp_out;

    //for paino
    assign temp_out = (clr == 4'b1111) ? 0 
               : (key == 'h1C) ? c
               : (key == 'h1B) ? d
               : (key == 'h23) ? e 
               : (key == 'h2B) ? f 
               : (key == 'h34) ? g 
               : (key == 'h33) ? a
               : (key == 'h3B) ? b
               : (key == 'h1D) ? csharp
               : (key == 'h24) ? dsharp
               : (key == 'h2C) ? fsharp
               : (key == 'h35) ? gsharp
               : (key == 'h3C) ? asharp
               : 0;
    
    always @ (*) begin
        if (key == 'h16) begin //key 1 playback
            playback <= 1;
            //delay <= 0;
            paino <= 0;
        end
//        if (key == 'h1E) begin //key 2 delay
//            playback <= 0;
//            delay <= 1;
//            paino <= 0;   
//        end
        if (key == 'h26) begin //key 3 paino
            playback <= 0;
            //delay <= 0;
            paino <= 1;    
        end
    end
    
    assign final_out = playback ? playback_out //key 1
               //: delay ? delay_out //key 2
               : paino ? temp_out //key 3
               : 0;
    
endmodule
