---
layout: page
title: Multi-Task Diffusion Policy for Robotic Manipulation
description: A single conditional diffusion model trained to solve Push-T and Block-Push tasks
img: assets/project/diffusion_policy/thumb.png
importance: 1
category: work
---

I explored and extended a state-based diffusion policy to a multi-task setting. The goal was to train a single shared model to perform two distinct robotic manipulation tasks—Push-T (2D PyMunk) and Block-Push (PyBullet XArm)—by combining per-task processing with a unified noise-prediction network.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0 text-center">
        <img 
            class="rounded z-depth-1" 
            style="width: 70%; border: 30;" 
            src="{{'/assets/project/diffusion_policy/pusht_ep01_success_True_coverage_0.985.gif' | relative_url }}"
            alt="Push-T environment GIF">
        <div class="caption mt-2">Push-T Environment</div>
    </div>
    <div class="col-sm mt-3 mt-md-0 text-center">
        <img 
            class="rounded z-depth-1" 
            style="width: 70%; border: 30;" 
            src="{{ '/assets/project/diffusion_policy/blockpush_ep04_success_True_reward_1.000.gif' | relative_url }}"
            alt="Block-Push environment GIF">
        <div class="caption mt-2">Block-Push Environment</div>
    </div>
</div>

Source code: <a href="https://github.com/ashquest/unified_diffusion_policy" target="_blank" rel="noopener noreferrer">Github</a>


### What I built
* Extended a diffusion policy to solve the PyMunk Push-T task and the PyBullet Block-Push task using a single shared 1D U-Net backbone.
* Designed per-task linear projection heads to map native observation features (5-dim for Push-T, 16-dim for Block-Push) into a shared 64-dimensional space.
* Implemented task conditioning by concatenating a one-hot task label to the projected observations to form a 130-dimensional global conditioning vector.
* Built per-task action encoders and decoders to manage action spaces across different environments.
* Created a custom collate function and weighted sampling strategies to balance heterogeneous datasets (24k Push-T samples vs 107k Block-Push samples).
* Utilized action chunking during live environment rollouts to execute a horizon of multiple predicted actions without replanning.

### Why it matters
Training a single architecture to handle multiple disparate tasks is a major step toward generalist robot agents. By using task-conditioned diffusion models with shared representations, the network learns robust, unified features while seamlessly bridging task-specific observation and action spaces.
