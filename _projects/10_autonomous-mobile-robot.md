---
layout: page
title: Autonomous Mobile Robot (Nav2 + SLAM)
description: ROS 2 navigation, SLAM, state estimation, and voice-controlled autonomy
img: assets/project/guide_bot/3.png
importance: 1
category: work
---

I contributed to the development of a mobile robot prototype that combined autonomous navigation, perception, and large-language-model integration. The system was designed to support natural-language command execution in indoor environments.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/guide_bot/3.png" title="CAD Front View" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/guide_bot/2.png" title="CAD Side View" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<div class="row">
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/Fi5uUrMUc3Q"
            title="SLAM + Teleop"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">SLAM + Teleop</div>
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/guide_bot/1.png" title="CAD Front View" class="img-fluid rounded z-depth-1" %}
    </div>

</div>

### Main work
- Designed an AMR chassis in CAD.
- Deployed ROS 2 Nav2 with LiDAR-based SLAM for real-time indoor mapping and navigation.
- Fused wheel odometry, IMU, and magnetometer data using a Kalman filter for robust state estimation.
- Integrated the Gemini LLM API with voice recognition and TTS for natural language–commanded control.

### Impact
This project showed how autonomous mobile robots can combine classical navigation stacks with modern language interfaces to make human-robot interaction more intuitive.
