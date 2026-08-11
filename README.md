Automatic Street Light using Verilog

📌 Project Overview

This project implements an Automatic Street Light System using Verilog HDL.

The system automatically turns the street light ON during darkness and OFF during daylight. A light sensor is represented by a digital input called "dark".

This project demonstrates how a simple sensor-based control system can be designed and verified using Verilog.

🎯 Objectives

- Design an automatic street light controller using Verilog HDL.
- Turn the street light ON when it is dark.
- Turn the street light OFF when there is sufficient light.
- Verify the design using a Verilog testbench.
- Generate simulation results and waveforms.

⚙️ Working Principle

The system uses a light sensor input:

- "dark = 1" → Darkness detected → Street light ON
- "dark = 0" → Daylight detected → Street light OFF

Truth Table

Dark Sensor| Street Light
0| OFF
1| ON

🔌 Inputs and Outputs

Input

- "dark" – Digital signal representing the light sensor.

Output

- "street_light" – Controls the street light.

🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- GitHub

📂 Project Files

File| Description
"README.md"| Project documentation
"automatic_street_light.v"| Verilog design code
"automatic_street_light_tb.v"| Testbench
"simulation_output.txt"| Expected simulation output

🧪 Simulation

The testbench provides different light conditions to the design.

Test Cases

1. Daylight condition
2. Darkness condition
3. Daylight condition again
4. Darkness condition again

The output is checked for each condition.

🚀 How to Run

Using Icarus Verilog:

iverilog -o street_light_sim automatic_street_light.v automatic_street_light_tb.v
vvp street_light_sim

To view the waveform:

gtkwave street_light.vcd

🌍 Applications

- Automatic street lighting
- Smart cities
- Energy-saving systems
- Road lighting systems
- Parking-area lighting
- Home and garden lighting

✅ Advantages

- Saves electrical energy.
- Automatically controls street lights.
- Reduces manual operation.
- Simple and low-cost design.
- Can be extended using real sensors.

🔮 Future Improvements

The project can be improved by adding:

- PIR motion sensors
- PWM-based brightness control
- Multiple street lights
- Real LDR sensor interface
- FPGA implementation
- Night-time dimming based on vehicle detection

👩‍💻 Author

Pavithra

B.Tech – Electronics and Communication Engineering
