---
layout: publication
title: "Hierarchical Planning for Long-Horizon Manipulation with Geometric and Symbolic Scene Graphs"
authors: "Yifeng Zhu, Jonathan Tremblay, Stan Birchfield, Yuke Zhu"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2021
excerpt: text text text
images:
  thumb: zhu-icra21-scene-graph.png
  main: zhu-icra21-scene-graph.png
paper_link: "https://arxiv.org/abs/2012.07277"
webpage_link: "https://zhuyifengzju.github.io/projects/hierarchical-scene-graph/"
video_link: "https://www.youtube.com/watch?v=GCfs3DJ4aO4"
---
We present a visually grounded hierarchical planning algorithm for long-horizon manipulation tasks. Our algorithm offers a joint framework of neuro-symbolic task planning and low-level motion generation conditioned on the specified goal. At the core of our approach is a two-level scene graph representation, namely geometric scene graph and symbolic scene graph. This hierarchical representation serves as a structured, object-centric abstraction of manipulation scenes. Our model uses graph neural networks to process these scene graphs for predicting high-level task plans and low-level motions. We demonstrate that our method scales to long-horizon tasks and generalizes well to novel task goals. We validate our method in a kitchen storage task in both physical simulation and the real world. Our experiments show that our method achieved over 70% success rate and nearly 90% of subgoal completion rate on the real robot while being four orders of magnitude faster in computation time compared to standard search-based task-and-motion planner.