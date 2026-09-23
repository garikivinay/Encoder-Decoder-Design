# Encoder-Decoder-Design
4-to-2 Priority Encoder and 2-to-4 Binary Decoder using Verilog HDL

## CodeTech VLSI Internship
## Intern id :- CITS2245

### Project Overview
This project implements a **4-to-2 Priority Encoder** and a **2-to-4 Binary Decoder** using **Verilog HDL**. The Priority Encoder converts a 4-bit input into a 2-bit binary code based on the highest-priority active input, while the Binary Decoder converts a 2-bit binary input into a one-hot 4-bit output. Both modules include an **Enable** control signal and are verified using a Verilog testbench.

---

## Features

- 4-to-2 Priority Encoder
- 2-to-4 Binary Decoder
- Enable control for both modules
- Valid output indication for the encoder
- Combinational logic implementation
- Verilog Testbench for functional verification

---

## Repository Contents

| File | Description |
|------|-------------|
| `encoder_decoder_design.v` | Verilog source code for the 4-to-2 Priority Encoder and 2-to-4 Binary Decoder |
| `tb_encoder_decoder.v` | Testbench used to verify the functionality of both modules |

---

## Priority Encoder

### Inputs

- **in_data[3:0]** – 4-bit input data
- **enable** – Enables encoder operation

### Outputs

- **out_code[1:0]** – 2-bit encoded output
- **valid_flag** – Indicates whether a valid input is detected

---

## Binary Decoder

### Inputs

- **in_code[1:0]** – 2-bit binary input
- **enable** – Enables decoder operation

### Outputs

- **out_data[3:0]** – One-hot decoded output

---

## Working Principle

### Priority Encoder

1. When **Enable = 1**, the encoder checks the inputs from the highest priority (`in_data[3]`) to the lowest (`in_data[0]`).
2. The highest active input is converted into a 2-bit binary code.
3. If no input is active, the **valid_flag** is cleared.

### Binary Decoder

1. When **Enable = 1**, the decoder converts the 2-bit input into the corresponding one-hot 4-bit output.
2. When **Enable = 0**, all outputs remain low.

---

## Simulation

The testbench verifies:

- Encoder enable and disable operation
- Priority selection among multiple active inputs
- Valid flag generation
- Decoder enable and disable operation
- Correct one-hot output generation for all binary inputs

---

## Tools Used

- Verilog HDL
- ModelSim / Vivado Simulator / Icarus Verilog (or any compatible Verilog simulator)

---

## Applications

- Interrupt controllers
- Address decoding
- Memory selection circuits
- Data routing systems
- Digital communication systems
- FPGA and ASIC designs

---
