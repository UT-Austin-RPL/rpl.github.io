---
layout: publication
title: "Fast Uncertainty Quantification for Deep Object Pose Estimation"
authors: "Guanya Shi, Yifeng Zhu, Jonathan Tremblay, Stan Birchfield, Fabio Ramos, Anima Anandkumar, Yuke Zhu"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2021
excerpt: text text text
images:
  thumb: shi-icra21-uncertainty.png
  main: shi-icra21-uncertainty.png
paper_link: "https://arxiv.org/abs/2011.07748"
webpage_link: "https://sites.google.com/view/fastuq"
video_link: "https://www.youtube.com/watch?v=7g91v6yAYwA"
code_link: "https://github.com/NVlabs/DOPE-Uncertainty"
blog_link: "https://developer.nvidia.com/blog/nvidia-research-fast-uncertainty-quantification-for-deep-object-pose-estimation/"
---
Deep learning-based object pose estimators are often unreliable and overconfident especially when the input image is outside the training domain, for instance, with sim2real transfer. Efficient and robust uncertainty quantification (UQ) in pose estimators is critically needed in many robotic tasks. In this work, we propose a simple, efficient, and plug-and-play UQ method for 6-DoF object pose estimation. We ensemble 2-3 pre-trained models with different neural network architectures and/or training data sources, and compute their average pairwise disagreement against one another to obtain the uncertainty quantification. We propose four disagreement metrics, including a learned metric, and show that the average distance (ADD) is the best learning-free metric and it is only slightly worse than the learned metric, which requires labeled target data. Our method has several advantages compared to the prior art: 1) our method does not require any modification of the training process or the model inputs; and 2) it needs only one forward pass for each model. We evaluate the proposed UQ method on three tasks where our uncertainty quantification yields much stronger correlations with pose estimation errors than the baselines. Moreover, in a real robot grasping task, our method increases the grasping success rate from 35% to 90%.
