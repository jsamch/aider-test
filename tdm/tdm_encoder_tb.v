`timescale 1ns / 1ps

/**
 * Testbench for TDM Encoder
 * 
 * This testbench simulates the TDM encoder module by providing clock and
 * channel inputs, and observing the serial output and sync pulse.
 */
module tdm_encoder_tb;

    // Clock signal
    reg clk;
    // 8-bit input channels
    reg [7:0] channel1;
    reg [7:0] channel2;
    reg [7:0] channel3;
    // Outputs from the TDM encoder
    wire serial_out;
    wire sync_pulse;

    // Instantiate the TDM encoder module
    tdm_encoder uut (
        .clk(clk),
        .channel1(channel1),
        .channel2(channel2),
        .channel3(channel3),
        .serial_out(serial_out),
        .sync_pulse(sync_pulse)
    );

    // Initial block to set up the simulation
    initial begin
        // Open a VCD file to capture the simulation waveforms
        $dumpfile("tdm_encoder.vcd");
        $dumpvars(0, tdm_encoder_tb);

        clk = 0;
        channel1 = 8'b10101010;
        channel2 = 8'b11001100;
        channel3 = 8'b11110000;

        #1000 $finish;
    end

    // Clock generation with a period of 10 time units
    always #5 clk = ~clk;

endmodule
