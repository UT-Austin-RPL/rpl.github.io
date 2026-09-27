---
layout: publication
title: "Self-Improving Vision-Language-Action Models with Data Generation via Residual RL"
authors: "Wenli Xiao*, Haotian Lin*, Andy Peng, Haoru Xue, Tairan He, Yuqi Xie, Fengyuan Hu, Jimmy Wu, Zhengyi Luo, Linxi \"Jim\" Fan, Guanya Shi, Yuke Zhu"
pub_info_name: "International Conference on Learning Representations (ICLR)"
pub_info_date: April 2026
excerpt: text text text
images:
  thumb: xiao-iclr26-pld.png
  main: xiao-iclr26-pld.png
paper_link: "https://arxiv.org/abs/2511.00091"
webpage_link: "https://www.wenlixiao.com/self-improve-VLA-PLD"
---
Supervised fine-tuning (SFT) has become the de facto post-training strategy for large vision-language-action (VLA) models, but its reliance on costly human demonstrations limits scalability and generalization. We propose Probe, Learn, Distill (PLD), a three-stage plug-and-play framework that improves VLAs through residual reinforcement learning (RL) and distribution-aware data collection. In Stage 1, we train lightweight residual actors to probe failure regions of the VLA generalist. In Stage 2, we use a hybrid rollout scheme that aligns collected trajectories with the generalist's deployment distribution while capturing recovery behaviors. In Stage 3, we distill the curated trajectories back into the generalist with standard SFT. PLD achieves near-saturated 99% task success on LIBERO, over 50% gains in SimplerEnv, and 100% success on real-world Franka and YAM arm manipulation tasks. Ablations show that residual probing and distribution-aware replay are key to collecting deployment-aligned data that improves both seen and unseen tasks, offering a scalable path toward self-improving VLA models.
