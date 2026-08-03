---
layout: page
title: Cart-Pole Stabilization System
description: Energy-based swing-up control and LQR balancing for a pendulum system
img: assets/img/9.jpg
importance: 4
category: work
---

This project involved controlling a cart-pole system by first swinging a resting pendulum upright and then stabilizing it near the vertical position. I implemented both an energy-based swing-up strategy and an LQR-based balancing controller.

### Hardware setup
For the physical testbed, I used pre-assembled N-Motion components rather than building the motion hardware from scratch. N-Motion is a modular motion-control platform designed for rapid integration of actuators, sensors, and control interfaces in electromechanical systems. Its components are intended to be easy to connect and reconfigure, which made the cart-pole setup practical for experiments without spending excessive time on low-level mechanical integration.

A key advantage of the platform was its compatibility with USB-based communication to a laptop. Through the N-Motion interface chain, the hardware could be connected to a host computer over USB, allowing me to send commands, monitor state, and log data directly from software while keeping the setup compact and relatively easy to operate. This made it possible to focus more on controller development and validation and less on wiring complexity.

### Contributions
- Designed an energy-based control algorithm to dynamically swing the pendulum upright.
- Implemented an LQR controller to catch and stabilize the pendulum at the top.
- Built and tested the control logic for a nonlinear underactuated system.
- Used a modular N-Motion hardware platform with USB connectivity to interface the cart-pole system with a laptop.

### Outcome
The project gave me strong hands-on experience in classic control design, system modeling, balancing controller tuning, and working with modular hardware for experimental control systems.
