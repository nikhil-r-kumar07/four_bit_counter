# 4-Bit Up/Down Counter

A parameterizable 4-bit synchronous counter with bidirectional counting, 
synchronous load, asynchronous reset, and a registered overflow/underflow 
flag. Built as part of self-directed RTL learning alongside ECE 2020 at 
Georgia Institute of Technology.

## How It Works
The counter increments or decrements on each clock edge based on the 
direction input. When counting up and reaching 15, or counting down and 
reaching 0, the counter wraps around and pulses the flowtype flag for 
one cycle on the next clock edge.

## Features
- Bidirectional counting (up/down) controlled by direction input
- Synchronous load for setting arbitrary start value
- Asynchronous reset
- Registered overflow/underflow flag (flowtype) that pulses one cycle 
  after wraparound
- Verified with 8-case self-checking cocotb testbench

## Files
- `four_bit_counter.v` — RTL design
- `four_bit_counter_tb.py` — cocotb Python verification testbench
- `Makefile` — cocotb simulation build

## How to Simulate
```bash
make
```

## Tools
Icarus Verilog, cocotb, GTKWave

## Status
Simulated and verified. FPGA deployment on Basys3 in progress.
