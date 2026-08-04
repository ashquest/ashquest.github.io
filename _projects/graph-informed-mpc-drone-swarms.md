---
layout: page
title: Graph-Informed MPC for Drone Swarms
description: Collaborative multi-drone payload transport with learned residual modeling
img: assets/project/gnn/thumb.png
importance: 1
category: work
---

I worked on a research project focused on collaborative multi-drone payload transport using model predictive control. The goal was to improve stability and reduce swing during coordinated transport by combining classical control with learned correction terms.

<div class="row mt-3">
     <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/TpN3sVhJ7hM"
            title="Outdoor"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">Outdoor</div>
    </div>
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/fElO1r7gm_s"
            title="Indoor"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">Indoor</div>
    </div>
</div>



### What I built
- Designed a model predictive control framework for collaborative drone swarms.
- Trained a graph neural network to predict nonlinear MPC residuals and cable tension forces.
- Generalized the learned model across variable swarm sizes and payload weights.
- Improved robustness of transport trajectories under dynamic load conditions.

### Why it matters
This work sits at the intersection of robotics, control, and machine learning. The learned graph-based component helps the controller adapt to changing topology and physical conditions, which is especially important for aerial multi-agent systems.
