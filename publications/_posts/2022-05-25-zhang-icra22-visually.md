---
layout: publication
title: "Visually Grounded Task and Motion Planning for Mobile Manipulation"
authors: "Xiaohan Zhang, Yifeng Zhu, Yan Ding, Yuke Zhu, Peter Stone, Shiqi Zhang"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2022
excerpt: text text text
images:
  thumb: zhang-icra22-visually.png
  main: zhang-icra22-visually.png
webpage_link: "https://sites.google.com/view/grop-tamp"
paper_link: https://arxiv.org/abs/2202.10667
code_link: https://github.com/keke-220/segbot-ur5
---
Task and motion planning (TAMP) algorithms aim to help robots achieve task-level goals, while maintaining motion-level feasibility. This paper focuses on TAMP domains that involve robot behaviors that take extended periods of time (e.g., long-distance navigation). In this paper, we develop a visual grounding approach to help robots probabilistically evaluate action feasibility, and introduce a TAMP algorithm, called GROP, that optimizes both feasibility and efficiency. We have collected a dataset that includes 96,000 simulated trials of a robot conducting mobile manipulation tasks, and then used the dataset to learn to ground symbolic spatial relationships for action feasibility evaluation. Compared with competitive TAMP baselines, GROP exhibited a higher task-completion rate while maintaining lower or comparable action costs. In addition to these extensive experiments in simulation, GROP is fully implemented and tested on a real robot system. 
