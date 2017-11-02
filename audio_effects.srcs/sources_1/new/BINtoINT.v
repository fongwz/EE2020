`timescale 1ns / 1ps

//turns a 12bit input into 4 3bit outputs
//so a 4digit number input into Thousands, Hundreds, Tens and Ones outputs
module BINtoINT(
    input [11:0] BIN,
    output [3:0] Thou,
    output [3:0] Hund,
    output [3:0] Tens,
    output [3:0] Ones
    );
    
    assign Thou = BIN/1000;
    assign Hund = (BIN%1000)/100;
    assign Tens = (BIN%100)/10;
    assign Ones = (BIN%10);
    
endmodule
