---
layout: page
title: Vision-Guided Aerial Manipulator
description: Autonomous grasping and placement using quadrotor motion planning and vision
img: assets/project/vision-aerial_manipulator/logo.jpg
importance: 1
category: work
---

This project focused on enabling a quadrotor to perform grasp-and-place tasks with visual feedback. The system combined motion planning, control, and perception so the aerial platform could execute smooth, stable manipulation actions.

<div class="row mt-3">
     <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/vision_aerial_manipulator_img_1.jpg" title="Minimum Snap Trajectory" class="img-fluid rounded z-depth-1" %}
        <div class="caption mt-2">Minimum Snap Trajectory</div>
    </div>
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/piGTbQdZyzY"
            title="Grabbing: Aerial Manipulator"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">Grabbing: Aerial Manipulator</div>
    </div>
</div>

### What I worked on
- Implemented minimum-snap trajectory optimization for smooth quadrotor motion profiles.
- Integrated motion controllers with VLM outputs to support LiDAR-free autonomous manipulation.
- Stabilized grasping and placing behaviors using the manipulator system.

### Key takeaway
The project demonstrated how visual guidance and optimized motion generation can be combined to enable semi-autonomous aerial manipulation in practical scenarios.






