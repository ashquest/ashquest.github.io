---
layout: page
title: Multi-Task Diffusion Policy for Robotic Manipulation
description: A single conditional diffusion model trained to solve Push-T, Lift, and Can tasks
img: assets/project/diffusion_policy/thumb.png
importance: 1
category: work
---

I explored and extended a state-based diffusion policy to a multi-task setting. The goal was to train a single shared model to perform three distinct robotic manipulation tasks—Push-T, Lift, and PickPlaceCan—by combining per-task processing with a unified noise-prediction network.

<!-- <div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0 text-center">
        <video 
            class="rounded z-depth-1" 
            style="width: 100%; aspect-ratio: 16/9; border: 0;" 
            controls 
            muted 
            loop>
            <source src="{{ '/assets/video/push_t_multitask.mp4' | relative_url }}" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <div class="caption mt-2">Push-T Environment</div>
    </div>
    <div class="col-sm mt-3 mt-md-0 text-center">
        <video 
            class="rounded z-depth-1" 
            style="width: 100%; aspect-ratio: 16/9; border: 0;" 
            controls 
            muted 
            loop>
            <source src="{{ '/assets/video/lift_multitask.mp4' | relative_url }}" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <div class="caption mt-2">Robosuite: Lift</div>
    </div>
    <div class="col-sm mt-3 mt-md-0 text-center">
        <video 
            class="rounded z-depth-1" 
            style="width: 100%; aspect-ratio: 16/9; border: 0;" 
            controls 
            muted 
            loop>
            <source src="{{ '/assets/video/can_multitask.mp4' | relative_url }}" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <div class="caption mt-2">Robosuite: PickPlaceCan</div>
    </div>
</div> -->

Source code: <a href="https://github.com/ashquest/unified_diffusion_policy" target="_blank" rel="noopener noreferrer">Github</a>


### What I built
* Extended a diffusion policy to solve the PyMunk Push-T task and the Robosuite Lift and Can tasks using a single shared 1D U-Net.
* Designed per-task linear projection heads to map native observation features (ranging from 5 to 23 dimensions) into a shared 64-dimensional space.
* Implemented task conditioning by concatenating a one-hot task label to the projected observations.
* Built per-task action encoders and decoders to manage varying action spaces across different robots and environments.
* Created a custom collate function and uniform/weighted sampling strategies to combine and batch training data across the multiple tasks.
* Utilized action chunking during live environment rollouts to execute a horizon of multiple predicted actions without replanning.

### Why it matters
Training a single architecture to handle multiple disparate tasks is a major step toward generalist robot agents. By using task-conditioned diffusion models with shared representations, the network learns robust, unified features while seamlessly bridging task-specific observation and action spaces.