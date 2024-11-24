`timescale 1ns / 1ps

module tdm_encoder_tb;

    reg clk;
    reg [7:0] channel1;
    reg [7:0] channel2;
    reg [7:0] channel3;
    wire serial_out;
    wire sync_pulse;

    tdm_encoder uut (
        .clk(clk),
        .channel1(channel1),
        .channel2(channel2),
        .channel3(channel3),
        .serial_out(serial_out),
        .sync_pulse(sync_pulse)
    );

    initial begin
        clk = 0;
        channel1 = 8'b10101010;
        channel2 = 8'b11001100;
        channel3 = 8'b11110000;

        #1000 $finish;
    end

    always #5 clk = ~clk;

endmodule
