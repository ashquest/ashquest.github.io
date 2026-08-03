---
layout: page
title: Holonomic Motion
description: Demonstration of Holonomic Motion + Robotic Arm
img: assets/project/holonomic/holonomic_logo.png
importance: 3
category: work
---

I developed a holonomic motion system for an omnidirectional mobile platform paired with a robotic arm. The project combined kinematic modeling, motion control, and workspace coordination to enable smooth, field-oriented base motion while preserving arm stability.

<div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/gQBZSh8sFnw"
            title="Cartpole Hardware"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">Cartpole Hardware</div>
    </div>

### What I implemented
- Designed holonomic drive kinematics for a four-wheel omnidirectional base.
- Implemented motion control that translates user velocity commands into wheel setpoints while maintaining stable arm positioning.
- Integrated base motion with the robotic arm so the system could reposition without disturbing end-effector pose.

### Why it was useful
This project improved platform agility and made the robot capable of precise, omni-directional repositioning in constrained environments, which is essential for applications like mobile manipulation, assembly, and human-robot collaboration.
