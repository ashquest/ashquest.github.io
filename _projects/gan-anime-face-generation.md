---
layout: page
title: GAN for Anime Face Generation
description: A PyTorch DCGAN for generating anime-style faces from random noise
img: assets/project/gan_logo.png
importance: 9
category: work
---

This project implements a Deep Convolutional GAN in PyTorch to generate anime-style face images. The model uses a convolutional generator and discriminator trained adversarially on the [Anime Face Dataset](https://www.kaggle.com/datasets/splcher/animefacedataset), with generated samples and checkpoints saved throughout training.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0 text-center">
        <iframe
            src="https://www.youtube.com/embed/uN2PvSUeISI"
            title="GAN Training Video"
            class="rounded z-depth-1"
            style="width: 70%; aspect-ratio: 16/9; border: 0;"
            allowfullscreen
        ></iframe>
        <div class="caption mt-2">GAN Training Video</div>
    </div>
</div>

Source code: <a href="https://github.com/ashquest/GANs-anime-faces" target="_blank" rel="noopener noreferrer">Github</a>


### How the model works
A GAN is built from two competing neural networks that improve through adversarial training.
- The generator takes a random latent vector and learns to transform it into a realistic 64x64 anime face. At first, it produces noisy images, but over time it learns to create structure such as eyes, hair, and facial contours.
- The discriminator acts as a classifier that tries to distinguish real images from generated ones. It learns to assign high scores to authentic samples and low scores to synthetic ones.
- During training, the generator and discriminator are optimized against each other: the generator tries to fool the discriminator, while the discriminator tries to become better at spotting fakes. This competition drives both networks to improve over time.

### What I built
- Trained a DCGAN architecture for 64x64 anime-face generation.
- Used a latent vector of size 128 with Adam optimizers and binary cross-entropy loss.
- Saved generated sample images, model weights, and a training video from the image sequence.

### Project files
- gan.ipynb — main training notebook
- G.pth and D.pth — saved generator and discriminator weights
- generated/ — sample outputs produced during training
- anime_gans_training.avi — video of training progression

### Notes
The notebook was designed for the Anime Face Dataset and can be run locally with PyTorch, torchvision, matplotlib, tqdm, numpy, pandas, and OpenCV.
