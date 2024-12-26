# Traffic-Light-Controller

This project implements a Traffic Light Controller for a 4-way intersection using Verilog HDL. The design ensures smooth traffic flow by cycling through different traffic light states for the East-West and North-South directions.

# Project Overview

The traffic light controller is modeled as a Finite State Machine (FSM) with four states:

* S0: East-West Green, North-South Red

* S1: East-West Yellow, North-South Red

* S2: East-West Red, North-South Green

* S3: East-West Red, North-South Yellow

# Features

* State transitions controlled by a clock signal.

* Reset functionality to return to the initial state.

* Realistic traffic light sequences ensuring safe transitions.

# Code Description

### Inputs

* clk: Clock signal to drive the FSM.

* rst: Reset signal to initialize the FSM to the first state (S0).

### Outputs

* EW: 3-bit signal representing the traffic light for the East-West direction.

* 3'b100 (Green), 3'b010 (Yellow), 3'b001 (Red).

* NS: 3-bit signal representing the traffic light for the North-South direction.

* 3'b100 (Green), 3'b010 (Yellow), 3'b001 (Red).

### State Transitions

* The FSM transitions occur as follows:

* S0 ➔ S1: East-West Green to Yellow.

* S1 ➔ S2: East-West Yellow to North-South Green.

* S2 ➔ S3: North-South Green to Yellow.

* S3 ➔ S0: North-South Yellow to East-West Green.

# Simulation

To simulate the design:

Use any Verilog simulator such as ModelSim, Vivado, or iverilog.

Compile the Design.v file and run the Testbench.v testbench.

Observe the state transitions and traffic light outputs for correctness.

# State Diagram


![image](https://github.com/user-attachments/assets/df2c40ae-0f38-487a-afda-1a9aa44e715e)

# Contributing

Feel free to fork this repository, make changes, and submit a pull request. Contributions are welcome!

