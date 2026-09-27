---
layout: publication
title: "HOVER: Versatile Neural Whole-Body Controller for Humanoid Robots"
authors: "Tairan He*, Wenli Xiao*, Toru Lin, Zhengyi Luo, Zhenjia Xu, Zhenyu Jiang, Jan Kautz, Changliu Liu, Guanya Shi, Xiaolong Wang, Linxi Fan&dagger;, Yuke Zhu&dagger;"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2025
excerpt: text text text
images:
  thumb: he-arxiv24-hover.png
  main: he-arxiv24-hover.png
paper_link: "https://arxiv.org/abs/2410.21229"
webpage_link: "https://hover-versatile-humanoid.github.io/"
code_link: "https://github.com/NVlabs/HOVER/"
---
Humanoid whole-body control requires adapting to diverse tasks such as navigation, loco-manipulation, and tabletop manipulation, each demanding a different mode of control. For example, navigation relies on root velocity tracking, while tabletop manipulation prioritizes upper-body joint angle tracking. Existing approaches typically train individual policies tailored to a specific command space, limiting their transferability across modes. We present the key insight that full-body kinematic motion imitation can serve as a common abstraction for all these tasks and provide general-purpose motor skills for learning multiple modes of whole-body control. Building on this, we propose HOVER (Humanoid Versatile Controller), a multi-mode policy distillation framework that consolidates diverse control modes into a unified policy. HOVER enables seamless transitions between control modes while preserving the distinct advantages of each, offering a robust and scalable solution for humanoid control across a wide range of modes. By eliminating the need for policy retraining for each control mode, our approach improves efficiency and flexibility for future humanoid applications.
