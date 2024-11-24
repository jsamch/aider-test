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

    // VCD dump
    initial begin
        $dumpfile("counter_tb.vcd");
        $dumpvars(0, counter_tb);
    end
    initial begin
        $display("Starting test: Initial reset");
        reset = 1;
        #10;
        reset = 0;
        $display("Initial reset complete, counter should start counting");

        #100;
        $display("Applying second reset");
        reset = 1;
        #10;
        reset = 0;
        $display("Second reset complete, counter should restart");

        #200;
        $display("Test complete, finishing simulation");
        $finish;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t, count = %d", $time, count);
    end

endmodule
