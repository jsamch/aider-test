# Verilog Counter Project

This project implements a simple 8-bit counter using Verilog. The counter can be reset and is designed to increment on each clock cycle. The project includes a testbench to validate the counter's functionality under various conditions.

## Project Structure

- `counter.v`: Contains the Verilog code for the 8-bit counter module.
- `counter_tb.v`: Contains the testbench for simulating and verifying the counter's behavior.
- `compile.sh`: A script to compile and run the Verilog files using Icarus Verilog.
- `Dockerfile`: Defines a Docker image to set up the environment for compiling and running the Verilog project.

## Counter Details

The counter is a simple 8-bit counter that increments on each positive edge of the clock signal. It can be reset to zero using the reset signal.

## Testbench Details

The testbench simulates the counter's operation, providing a clock signal and testing the reset functionality. It monitors the counter's output to ensure it behaves as expected.

## Building and Running the Project

To build and run the project using Docker, follow these steps:

1. Build the Docker image:
   ```bash
   docker build -t verilog-counter .
   ```

2. Run the Docker container to compile and simulate the Verilog code:
   ```bash
   docker run --rm verilog-counter
   ```

These commands will compile the Verilog files and run the simulation, displaying the output in the terminal.
