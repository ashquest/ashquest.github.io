---
layout: page
title: World Model Vision Component for Autonomous Racing
description: Analyzing real-time visual reconstruction and latent space modeling for reinforcement learning
img: assets/project/worldmodel/thumb.png
importance: 1
category: work
---

I explored and analyzed a public research implementation focused on the Vision Component of a World Model in the CarRacing-v3 environment. The goal of the project was to understand how to generate comprehensive datasets of environment observations and use a Variational Autoencoder (VAE) to compress complex visual data into a compact latent space representation.


<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/xory--FfAIA"
            title="CMA-ES Controller Training"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">CMA-ES Controller Training</div>
    </div>
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/5Doy2RCmO1Q"
            title="Latent Space Dimension Exploration"
            class="rounded z-depth-1"
            style="width: 100%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">Latent Space Dimension Exploration</div>
    </div>
</div>





Source code: <a href="https://github.com/ashquest/car_driving_v3_world_model" target="_blank" rel="noopener noreferrer">Github</a>


### What I explored and analyzed
* Evaluated a highly parallelized data collection pipeline utilizing multiprocessing and HDF5 to efficiently generate and merge large-scale datasets (e.g., 10,000 episodes).
* Studied a pseudo-random action strategy designed to ensure balanced driving data and prevent the agent from spinning off the track during data collection.
* Analyzed the architecture of a Variational Autoencoder (VAE) built in PyTorch, breaking down how it compresses 96x96x3 RGB environment observations into a 32-dimensional latent space.
* Ran interactive visualization tools to manipulate individual latent dimensions and evaluate the VAE's image generation capabilities.
* Mapped the high-dimensional latent space distribution into 2D using Uniform Manifold Approximation and Projection (UMAP) to better understand the model's learned spatial representations.

### Why it matters
This work establishes the foundational Vision Model required for a full World Model framework. By effectively compressing high-dimensional pixel data into a low-dimensional latent distribution, it removes visual noise and creates a meaningful state representation. Understanding this process is critical, as it makes it significantly easier for a downstream Memory Model (LSTM-MDN) and a reinforcement learning agent to learn dynamic driving behaviors.