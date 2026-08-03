---
layout: page
title: Vision-Guided Mechatronic Gantry System
description: AI-guided crane automation with perception and edge deployment
img: assets/project/gantry/gantry_thumb.png
importance: 5
category: work
---

I designed and automated a 3-DOF mechatronic gantry system for industrial steel coil loading and unloading. The project combined mechanical design, computer vision, and embedded systems to solve high-impact bottleneck issues in current facility operations.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/LYQ78xXP-xg"
            title="Loading: Automated Gantry Crane"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">Loading: Automated Gantry Crane</div>
    </div>
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/6-H6PV-oY5U"
            title="Unloading: Automated Gantry Crane"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">Unloading: Automated Gantry Crane</div>
    </div>
</div>




### Key work
- Designed and assembled a 3-DOF mechatronic crane and custom C-Hook lifting mechanism.
- Programmed a spatial perception pipeline using Canny edge detection and contour extraction to calculate payload coordinates and orientation.
- Fine-tuned a real-time YOLOv8 model for targeted object and wagon detection.
- Deployed a custom web interface and API on an Arduino UNO WiFi server to synchronize AI perception with real-time stepper motor actuation.



<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/gantry/1.jpg" title="Gantry system overview" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/gantry/2.jpg" title="Mechanical gantry setup" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/gantry/3.jpg" title="Payload handling view" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/gantry/4.jpg" title="Gantry control hardware" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/gantry/5.jpg" title="Vision-based perception setup" class="img-fluid rounded z-depth-1" %}
    </div>
     <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/project/gantry/7.jpg" title="Integrated gantry system" class="img-fluid rounded z-depth-1" %}
    </div>
</div>



### What this project demonstrates
It brought together mechanical engineering, robotics perception, embedded systems, and intelligent automation into a single integrated workflow.

Source code:
<a href="https://github.com/ashquest/gantry-crane-automation/blob/main/arduino_uno.ino" target="_blank" rel="noopener noreferrer">Arduino UNO</a>
<a href="https://github.com/ashquest/gantry-crane-automation/blob/main/esp32.ino" target="_blank" rel="noopener noreferrer">ESP32</a>