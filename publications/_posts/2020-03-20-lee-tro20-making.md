---
layout: publication
title: "Making Sense of Vision and Touch: Learning Multimodal Representations for Contact-Rich Tasks"
authors: "Michelle A. Lee, Yuke Zhu, Peter Zachares, Matthew Tan, Krishnan Srinivasan, Silvio Savarese, Li Fei-Fei, Animesh Garg, Jeannette Bohg"
pub_info_name: "IEEE Transactions on Robotics (T-RO)"
pub_info_date: March 2020
excerpt: text text text
images:
  thumb: lee-tro20-making.png
  main: lee-tro20-making.png
paper_link: "https://ieeexplore.ieee.org/document/9043710"
webpage_link: "https://sites.google.com/view/visionandtouch"
---
Contact-rich manipulation tasks in unstructured environments often require both haptic and visual feedback. It is nontrivial to manually design a robot controller that combines these modalities, which have very different characteristics. While deep reinforcement learning has shown success in learning control policies for high-dimensional inputs, these algorithms are generally intractable to train directly on real robots due to sample complexity. In this article, we use self-supervision to learn a compact and multimodal representation of our sensory inputs, which can then be used to improve the sample efficiency of our policy learning. Evaluating our method on a peg insertion task, we show that it generalizes over varying geometries, configurations, and clearances, while being robust to external perturbations. We also systematically study different self-supervised learning objectives and representation learning architectures. Results are presented in simulation and on a physical robot.
