---
layout: publication
title: "Learning Generalizable Manipulation Policies with Object-Centric 3D Representations"
authors: "Yifeng Zhu, Zhenyu Jiang, Peter Stone, Yuke Zhu"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2023
excerpt: 
images:
  thumb: zhu-corl-groot.png
  main: zhu-corl-groot.png
paper_link: "https://arxiv.org/abs/2310.14386"
webpage_link: "https://ut-austin-rpl.github.io/GROOT/"
code_link: "https://github.com/UT-Austin-RPL/GROOT"
---
We introduce GROOT, an imitation learning method for learning robust policies with object-centric and 3D priors. GROOT builds policies that generalize beyond their initial training conditions for vision-based manipulation. It constructs object-centric 3D representations that are robust toward background changes and camera views and reason over these representations using a transformer-based policy. Furthermore, we introduce a segmentation correspondence model that allows policies to generalize to new objects at test time. Through comprehensive experiments, we validate the robustness of GROOT policies against perceptual variations in simulated and real-world environments. GROOT's performance excels in generalization over background changes, camera viewpoint shifts, and the presence of new object instances, whereas both state-of-the-art end-to-end learning methods and object proposal-based approaches fall short. We also extensively evaluate GROOT policies on real robots, where we demonstrate the efficacy under very wild changes in setup.