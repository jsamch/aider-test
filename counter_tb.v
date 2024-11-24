`timescale 1ns / 1ps

module counter_tb;

    reg clk;
    reg reset;
    wire [7:0] count;

    // Instantiate the counter
    counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz clock
    end

    // Test sequence
    initial begin
        // Initialize reset
        reset = 1;
        #10;
        reset = 0;

        // Wait for some time and then reset again
        #100;
        reset = 1;
        #10;
        reset = 0;

        // Finish the simulation after some time
        #200;
        $finish;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t, count = %d", $time, count);
    end

endmodule
