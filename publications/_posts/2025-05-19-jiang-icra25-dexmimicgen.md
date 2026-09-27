---
layout: publication
title: "DexMimicGen: Automated Data Generation for Bimanual Dexterous Manipulation via Imitation Learning"
authors: "Zhenyu Jiang*, Yuqi Xie*, Kevin Lin*, Zhenjia Xu, Weikang Wan, Ajay Mandlekar&dagger;, Linxi Fan&dagger;, Yuke Zhu&dagger;"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2025
excerpt: text text text
images:
  thumb: jiang-arxiv24-dexmimicgen.jpg
  main: jiang-arxiv24-dexmimicgen.jpg
paper_link: "https://arxiv.org/abs/2410.24185"
webpage_link: "https://dexmimicgen.github.io/"
code_link: "https://github.com/NVlabs/dexmimicgen/"
blog_link: "https://www.cs.utexas.edu/news/2025/researchers-reduce-human-effort-robot-training"
---
Imitation learning from human demonstrations is an effective means to teach robots manipulation skills. But data acquisition is a major bottleneck in applying this paradigm more broadly, due to the amount of cost and human effort involved. There has been significant interest in imitation learning for bimanual dexterous robots, like humanoids. Unfortunately, data collection is even more challenging here due to the challenges of simultaneously controlling multiple arms and multi-fingered hands. Automated data generation in simulation is a compelling, scalable alternative to fuel this need for data. To this end, we introduce DexMimicGen, a large-scale automated data generation system that synthesizes trajectories from a handful of human demonstrations for humanoid robots with dexterous hands. We present a collection of simulation environments in the setting of bimanual dexterous manipulation, spanning a range of manipulation behaviors and different requirements for coordination among the two arms. We generate 21K demos across these tasks from just 60 source human demos and study the effect of several data generation and policy learning decisions on agent performance. Finally, we present a real-to-sim-to-real pipeline and deploy it on a real-world humanoid can sorting task. Videos and more are at https://dexmimicgen.github.io/
