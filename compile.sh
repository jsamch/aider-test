#!/bin/bash

# Compile the Verilog files using Icarus Verilog
iverilog -o counter_tb.vvp counter.v counter_tb.v

# Run the simulation, dump all signals to a VCD file, and redirect output to a file
vvp -v counter_tb.vvp > simulation_output.txt
