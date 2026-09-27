---
layout: publication
title: "Sim-and-Real Co-Training: A Simple Recipe for Vision-Based Robotic Manipulation"
authors: "Abhiram Maddukuri*, Zhenyu Jiang*, Lawrence Yunliang Chen*, Soroush Nasiriany*, Yuqi Xie, Yu Fang, Wenqi Huang, Zu Wang, Zhenjia Xu, Nikita Chernyadev, Scott Reed, Ken Goldberg, Ajay Mandlekar&dagger;, Linxi Fan&dagger;, Yuke Zhu&dagger;"
pub_info_name: "Robotics: Science and Systems (RSS)"
pub_info_date: June 2025
excerpt: text text text
images:
  thumb: maddukuri-arxiv25-simreal.png
  main: maddukuri-arxiv25-simreal.png
paper_link: "https://arxiv.org/abs/2503.24361"
webpage_link: "https://co-training.github.io/"
---
Large real-world robot datasets hold great potential to train generalist robot models, but scaling real-world human data collection is time-consuming and resource-intensive. Simulation has great potential in supplementing large-scale data, especially with recent advances in generative AI and automated data generation tools that enable scalable creation of robot behavior datasets. However, training a policy solely in simulation and transferring it to the real world often demands substantial human effort to bridge the reality gap. A compelling alternative is to co-train the policy on a mixture of simulation and real-world datasets. Preliminary studies have recently shown this strategy to substantially improve the performance of a policy over one trained on a limited amount of real-world data. Nonetheless, the community lacks a systematic understanding of sim-and-real co-training and what it takes to reap the benefits of simulation data for real-robot learning. This work presents a simple yet effective recipe for utilizing simulation data to solve vision-based robotic manipulation tasks. We derive this recipe from comprehensive experiments that validate the co-training strategy on various simulation and real-world datasets. Using two domains--a robot arm and a humanoid--across diverse tasks, we demonstrate that simulation data can enhance real-world task performance by an average of 38%, even with notable differences between the simulation and real-world data.	
