# Use an official Icarus Verilog image
FROM esolang/verilog

# Set the working directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Make the compile script executable
RUN chmod +x compile.sh

# Run the compile script by default and redirect output to a file
CMD ["./compile.sh", "> simulation_output.txt"]
