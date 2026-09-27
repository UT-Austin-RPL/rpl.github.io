---
layout: publication
title: "Opening the Sim-to-Real Door for Humanoid Pixel-to-Action Policy Transfer"
authors: "Haoru Xue*, Tairan He*, Zi Wang*, Qingwei Ben, Wenli Xiao, Zhengyi Luo, Xingye Da, Fernando Castañeda, Guanya Shi, Shankar Sastry, Linxi Fan&dagger;, Yuke Zhu&dagger;"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: June 2026
excerpt: text text text
images:
  thumb: xue-arxiv25-doorman.png
  main: xue-arxiv25-doorman.png
paper_link: "https://arxiv.org/abs/2512.01061"
webpage_link: "https://doorman-humanoid.github.io/"
code_link: "https://github.com/NVlabs/GR00T-VisualSim2Real"
---
Recent progress in GPU-accelerated, photorealistic simulation has opened a scalable data-generation path for robot learning, where massive physics and visual randomization allow policies to generalize beyond curated environments. Building on these advances, we develop a teacher-student-bootstrap learning framework for vision-based humanoid loco-manipulation, using articulated-object interaction as a representative high-difficulty benchmark. Our approach introduces a staged-reset exploration strategy that stabilizes long-horizon privileged-policy training, and a GRPO-based fine-tuning procedure that mitigates partial observability and improves closed-loop consistency in sim-to-real RL. Trained entirely on simulation data, the resulting policy achieves robust zero-shot performance across diverse door types and outperforms human teleoperators by up to 31.7% in task completion time under the same whole-body control stack. This represents the first humanoid sim-to-real policy capable of diverse articulated loco-manipulation using pure RGB perception.
