---
layout: publication
title: "VIRAL: Visual Sim-to-Real at Scale for Humanoid Loco-Manipulation"
authors: "Tairan He*, Zi Wang*, Haoru Xue*, Qingwei Ben*, Zhengyi Luo, Wenli Xiao, Ye Yuan, Xingye Da, Fernando Castañeda, Shankar Sastry, Changliu Liu, Guanya Shi, Linxi Fan&dagger;, Yuke Zhu&dagger;"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: June 2026
excerpt: text text text
images:
  thumb: he-arxiv25-viral.png
  main: he-arxiv25-viral.png
paper_link: "https://arxiv.org/abs/2511.15200"
webpage_link: "https://viral-humanoid.github.io/"
code_link: "https://github.com/NVlabs/GR00T-VisualSim2Real"
---
A key barrier to the real-world deployment of humanoid robots is the lack of autonomous loco-manipulation skills. We introduce VIRAL, a visual sim-to-real framework that learns humanoid loco-manipulation entirely in simulation and deploys it zero-shot to real hardware. VIRAL follows a teacher-student design: a privileged RL teacher, operating on full state, learns long-horizon loco-manipulation using a delta action space and reference state initialization. A vision-based student policy is then distilled from the teacher via large-scale simulation with tiled rendering, trained with a mixture of online DAgger and behavior cloning. We find that compute scale is critical: scaling simulation to tens of GPUs (up to 64) makes both teacher and student training reliable, while low-compute regimes often fail. To bridge the sim-to-real gap, VIRAL combines large-scale visual domain randomization over lighting, materials, camera parameters, image quality, and sensor delays--with real-to-sim alignment of the dexterous hands and cameras. Deployed on a Unitree G1 humanoid, the resulting RGB-based policy performs continuous loco-manipulation for up to 54 cycles, generalizing to diverse spatial and appearance variations without any real-world fine-tuning, and approaching expert-level teleoperation performance. Extensive ablations dissect the key design choices required to make RGB-based humanoid loco-manipulation work in practice.
