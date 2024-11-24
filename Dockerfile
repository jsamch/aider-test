# Use an official Icarus Verilog image
FROM yosyshq/iverilog:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Make the compile script executable
RUN chmod +x compile.sh

# Run the compile script by default
CMD ["./compile.sh"]
