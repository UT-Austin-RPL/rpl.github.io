---
layout: publication
title: "LOTUS: Continual Imitation Learning for Robot Manipulation Through Unsupervised Skill Discovery"
authors: "Weikang Wan, Yifeng Zhu*, Rutav Shah*, Yuke Zhu"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2024
excerpt: 
images:
  thumb: wan-arxiv23-lotus.png
  main: wan-arxiv23-lotus.png
paper_link: "https://arxiv.org/abs/2311.02058"
webpage_link: "https://ut-austin-rpl.github.io/Lotus/"
---
We introduce LOTUS, a continual imitation learning algorithm that empowers a physical robot to continuously and efficiently learn to solve new manipulation tasks throughout its lifespan. The core idea behind LOTUS is constructing an ever-growing skill library from a sequence of new tasks with a small number of corresponding task demonstrations. LOTUS starts with a continual skill discovery process using an open-vocabulary vision model, which extracts skills as recurring patterns presented in unstructured demonstrations. Continual skill discovery updates existing skills to avoid catastrophic forgetting of previous tasks and adds new skills to exhibit novel behaviors. LOTUS trains a meta-controller that flexibly composes various skills to tackle vision-based manipulation tasks in the lifelong learning process. Our comprehensive experiments show that LOTUS outperforms state-of-the-art baselines by over 11% in average success rates, showing its superior knowledge transfer ability compared to prior methods.
