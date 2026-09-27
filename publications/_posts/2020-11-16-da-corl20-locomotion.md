---
layout: publication
title: "Learning a Contact-Adaptive Controller for Robust, Efficient Legged Locomotion"
authors: "Xingye Da, Zhaoming Xie, David Hoeller, Byron Boots, Anima Anandkumar, Yuke Zhu, Buck Babich, Animesh Garg"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2020
excerpt: text text text
images:
  thumb: da-corl20-locomotion.png
  main: da-corl20-locomotion.png
paper_link: "https://arxiv.org/abs/2009.10019"
video_link: "https://www.youtube.com/watch?v=JJOmFZKpYTo"
---
We present a hierarchical framework that combines model-based control and reinforcement learning (RL) to synthesize robust controllers for a quadruped (the Unitree Laikago). The system consists of a high-level controller that learns to choose from a set of primitives in response to changes in the environment and a low-level controller that utilizes an established control method to robustly execute the primitives. Our framework learns a controller that can adapt to challenging environmental changes on the fly, including novel scenarios not seen during training. The learned controller is up to 85% more energy efficient and is more robust compared to baseline methods. We also deploy the controller on a physical robot without any randomization or adaptation scheme.