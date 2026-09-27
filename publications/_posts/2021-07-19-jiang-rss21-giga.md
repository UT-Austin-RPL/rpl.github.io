---
layout: publication
title: "Synergies Between Affordance and Geometry: 6-DoF Grasp Detection via Implicit Representations"
authors: "Zhenyu Jiang, Yifeng Zhu, Maxwell Svetlik, Kuan Fang, Yuke Zhu"
pub_info_name: "Robotics: Science and Systems (RSS)"
pub_info_date: July 2021
excerpt: text text text
images:
  thumb: jiang-rss21-giga.png
  main: jiang-rss21-giga.png
paper_link: "https://arxiv.org/abs/2104.01542"
webpage_link: "https://sites.google.com/view/rpl-giga2021/"
code_link: "https://github.com/UT-Austin-RPL/GIGA"
video_link: "https://www.youtube.com/watch?v=Zb_TMsPv9uI"
---
Grasp detection in clutter requires the robot to reason about the 3D scene from incomplete and noisy perception. In this work, we draw insight that 3D reconstruction and grasp learning are two intimately connected tasks, both of which require a fine-grained understanding of local geometry details. We thus propose to utilize the synergies between grasp affordance and 3D reconstruction through multi-task learning of a shared representation. Our model takes advantage of deep implicit functions, a continuous and memory-efficient representation, to enable differentiable training of both tasks. We train the model on self-supervised grasp trials data in simulation. Evaluation is conducted on a clutter removal task, where the robot clears cluttered objects by grasping them one at a time. The experimental results in simulation and on the real robot have demonstrated that the use of implicit neural representations and joint learning of grasp affordance and 3D reconstruction have led to state-of-the-art grasping results. Our method outperforms baselines by over 10% in terms of grasp success rate.
