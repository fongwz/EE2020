`timescale 1ns / 1ps

module volume_indicator(
    input CLK,
    input [11:0] MIC_IN,
    output reg [15:0] led
    );
    
    //led[x] will light up as long as MIC_IN is above range
    //eg. if led[5] lights up, led[0 to 4] will light up as well
    always @ (posedge CLK) begin
        led[0]  <= (MIC_IN > 1900) ? 1 : 0;
        led[1]  <= (MIC_IN > 2200) ? 1 : 0;
        led[2]  <= (MIC_IN > 2350) ? 1 : 0;
        led[3]  <= (MIC_IN > 2500) ? 1 : 0;
        led[4]  <= (MIC_IN > 2625) ? 1 : 0;
        led[5]  <= (MIC_IN > 2750) ? 1 : 0;
        led[6]  <= (MIC_IN > 2875) ? 1 : 0;
        led[7]  <= (MIC_IN > 3000) ? 1 : 0;
        led[8]  <= (MIC_IN > 3125) ? 1 : 0;
        led[9]  <= (MIC_IN > 3250) ? 1 : 0;
        led[10] <= (MIC_IN > 3375) ? 1 : 0;
        led[11] <= (MIC_IN > 3500) ? 1 : 0;
        led[12] <= (MIC_IN > 3625) ? 1 : 0;
        led[13] <= (MIC_IN > 3750) ? 1 : 0;
        led[14] <= (MIC_IN > 3875) ? 1 : 0;
        led[15] <= (MIC_IN > 4000) ? 1 : 0;
    end
endmodule
