#!/bin/bash

# Compile the Verilog files
iverilog -o counter_tb.vvp counter.v counter_tb.v

# Run the simulation
vvp counter_tb.vvp
