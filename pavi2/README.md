# Automatic Street Light using Verilog HDL

## Overview

This project implements an **Automatic Street Light System** using Verilog HDL.

The system automatically turns the street light ON when it becomes dark and turns it OFF when there is sufficient light.

A simple sensor input is used to represent the surrounding light condition.

## Working Principle

- When it is **dark**, the street light turns **ON**.
- When it is **bright**, the street light turns **OFF**.

## Inputs

- `clk` - Clock signal
- `reset` - Active-high reset
- `dark` - Light sensor input

### Sensor Condition

| dark | Condition |
|------|-----------|
| 0 | Bright |
| 1 | Dark |

## Output

- `street_light` - Street light control

| dark | street_light |
|------|--------------|
| 0 | 0 (OFF) |
| 1 | 1 (ON) |

## Files Included

| File | Description |
|------|-------------|
| `automatic_street_light.v` | Main Verilog design |
| `automatic_street_light_tb.v` | Testbench |
| `simulation_output.png` | Simulation waveform |
| `README.md` | Project documentation |

## Software Used

- Verilog HDL
- ModelSim / QuestaSim
- Vivado Simulator

## How It Works

The light sensor provides the `dark` signal.

If:

```text
dark = 1
```

the system turns the street light ON.

If:

```text
dark = 0
```

the system turns the street light OFF.

## Applications

- Smart street lighting
- Energy-saving systems
- Automatic outdoor lighting
- Smart city applications
- Road and highway lighting

## Expected Result

The street light automatically turns ON during darkness and OFF during daylight.

## Author

Your Name

B.Tech – Electronics and Communication Engineering