# TDM Encoder Project

This project is a Time-Division Multiplexing (TDM) encoder. It takes three channels of 8 bits each and transforms them into a serial bus. The output includes a timing sync pulse indicating the first channel, followed by 24 bits of data from the three parallel channels.

## Features

- **3 Channels**: Each channel consists of 8 bits.
- **Serial Bus Output**: Combines the channels into a single serial data stream.
- **Timing Sync Pulse**: Indicates the start of the first channel.

## Usage

The TDM encoder is designed for applications requiring efficient data transmission over a single line, reducing the number of physical connections needed.

## Implementation

The encoder logic is implemented to ensure accurate timing and synchronization across the channels, providing reliable data transmission.
