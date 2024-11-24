/**
 * TDM Encoder Module
 * 
 * This module implements a Time-Division Multiplexing (TDM) encoder that takes
 * three 8-bit parallel channels and outputs a serial data stream. The output
 * includes a sync pulse to indicate the start of the first channel, followed
 * by 24 bits of data from the three channels.
 */
module tdm_encoder (
    input wire clk,
    input wire [7:0] channel1,
    input wire [7:0] channel2,
    input wire [7:0] channel3,
    output reg serial_out,
    output reg sync_pulse
);

    // State variable to track which channel is currently being processed
    reg [1:0] state;
    // Register to hold the current channel data being serialized
    reg [7:0] data_out;
    // Counter to track the number of bits processed
    reg [4:0] bit_counter;

    // Main logic to handle the serialization and sync pulse generation
    always @(posedge clk) begin
        if (bit_counter == 0) begin
            sync_pulse <= 1;
            state <= 0;
        end else begin
            sync_pulse <= 0;
        end

        case (state)
            2'b00: data_out <= channel1;
            2'b01: data_out <= channel2;
            2'b10: data_out <= channel3;
        endcase

        serial_out <= data_out[7 - bit_counter[2:0]];

        if (bit_counter == 23) begin
            bit_counter <= 0;
            state <= 0;
        end else begin
            bit_counter <= bit_counter + 1;
            if (bit_counter[2:0] == 7) begin
                state <= state + 1;
            end
        end
    end

endmodule
