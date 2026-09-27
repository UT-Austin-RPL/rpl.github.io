---
layout: publication
title: "SPOT: SE(3) Pose Trajectory Diffusion for Object-Centric Manipulation"
authors: "Cheng-Chun Hsu, Bowen Wen, Jie Xu, Yashraj Narang, Xiaolong Wang, Yuke Zhu, Joydeep Biswas, Stan Birchfield"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2025
excerpt: text text text
images:
  thumb: hsu-arxiv24-spot.jpg
  main: hsu-arxiv24-spot.jpg
paper_link: "https://arxiv.org/abs/2411.00965"
webpage_link: "https://nvlabs.github.io/object_centric_diffusion/"
video_link: "https://www.youtube.com/watch?v=yktAPZ1ERnQ"
---
We introduce SPOT, an object-centric imitation learning framework. The key idea is to capture each task by an object-centric representation, specifically the SE(3) object pose trajectory relative to the target. This approach decouples embodiment actions from sensory inputs, facilitating learning from various demonstration types, including both action-based and action-less human hand demonstrations, as well as cross-embodiment generalization. Additionally, object pose trajectories inherently capture planning constraints from demonstrations without the need for manually crafted rules. To guide the robot in executing the task, the object trajectory is used to condition a diffusion policy. We show improvement compared to prior work on RLBench simulated tasks. In real-world evaluation, using only eight demonstrations shot on an iPhone, our approach completed all tasks while fully complying with task constraints.