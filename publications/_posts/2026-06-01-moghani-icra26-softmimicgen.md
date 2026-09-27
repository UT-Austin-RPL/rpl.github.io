---
layout: publication
title: "SoftMimicGen: A Data Generation System for Scalable Robot Learning in Deformable Object Manipulation"
authors: "Masoud Moghani, Mahdi Azizian, Animesh Garg, Yuke Zhu, Sean Huver&dagger;, Ajay Mandlekar&dagger;"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: June 2026
excerpt: text text text
images:
  thumb: moghani-icra26-softmimicgen.jpg
  main: moghani-icra26-softmimicgen.jpg
paper_link: "https://arxiv.org/abs/2603.25725"
webpage_link: "https://softmimicgen.github.io/"
code_link: "https://github.com/NVlabs/SoftMimicGen"
---
Large-scale robot datasets have facilitated the learning of a wide range of robot manipulation skills, but these datasets remain difficult to collect and scale further, owing to the intractable amount of human time, effort, and cost required. Simulation and synthetic data generation have proven to be an effective alternative to fuel this need for data, especially with the advent of recent work showing that such synthetic datasets can dramatically reduce real-world data requirements and facilitate generalization to novel scenarios unseen in real-world demonstrations. However, this paradigm has been limited to rigid-body tasks, which are easy to simulate. Deformable object manipulation encompasses a large portion of real-world manipulation and remains a crucial gap to address towards increasing adoption of the synthetic simulation data paradigm. In this paper, we introduce SoftMimicGen, an automated data generation pipeline for deformable object manipulation tasks. We introduce a suite of high-fidelity simulation environments that encompasses a wide range of deformable objects (stuffed animal, rope, tissue, towel) and manipulation behaviors (high-precision threading, dynamic whipping, folding, pick-and-place), across four robot embodiments: a single-arm manipulator, bimanual arms, a humanoid, and a surgical robot. We apply SoftMimicGen to generate datasets across the task suite, train high-performing policies from the data, and systematically analyze the data generation system.
