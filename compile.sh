#!/bin/bash

# Compile the Verilog files using Icarus Verilog
iverilog -o counter_tb.vvp counter.v counter_tb.v

# Run the simulation and redirect output to a file
vvp counter_tb.vvp > simulation_output.txt
