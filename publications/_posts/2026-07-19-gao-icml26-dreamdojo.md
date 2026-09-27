---
layout: publication
title: "DreamDojo: A Generalist Robot World Model from Large-Scale Human Videos"
authors: "Shenyuan Gao*, William Liang*, Kaiyuan Zheng, Ayaan Malik, Seonghyeon Ye, Sihyun Yu, Wei-Cheng Tseng, Yuzhu Dong, Kaichun Mo, Chen-Hsuan Lin, Qianli Ma, Seungjun Nah, Loic Magne, Jiannan Xiang, Yuqi Xie, Ruijie Zheng, Dantong Niu, You Liang Tan, K.R. Zentner, George Kurian, Suneel Indupuru, Pooya Jannaty, Jinwei Gu, Jun Zhang, Jitendra Malik, Pieter Abbeel, Ming-Yu Liu, Yuke Zhu†, Joel Jang†, Linxi \"Jim\" Fan†"
pub_info_name: "International Conference on Machine Learning (ICML)"
pub_info_date: July 2026
pub_info_highlight: Spotlight Presentation
excerpt: A foundation world model trained on 44k hours of egocentric human videos for diverse interactions and dexterous robotics controls
images:
  thumb: gao-icml26-dreamdojo.jpg
  main: gao-icml26-dreamdojo.jpg
paper_link: "https://arxiv.org/abs/2602.06949"
webpage_link: "https://dreamdojo-world.github.io/"
code_link: "https://github.com/NVIDIA/DreamDojo"
---
Being able to simulate the outcomes of actions in varied environments will revolutionize the development of generalist agents at scale. However, modeling these world dynamics, especially for dexterous robotics tasks, poses significant challenges due to limited data coverage and scarce action labels. As an endeavor towards this end, we introduce DreamDojo, a foundation world model that learns diverse interactions and dexterous controls from 44k hours of egocentric human videos. Our data mixture represents the largest video dataset to date for world model pretraining, spanning a wide range of daily scenarios with diverse objects and skills. To address the scarcity of action labels, we introduce continuous latent actions as unified proxy actions, enhancing interaction knowledge transfer from unlabeled videos. After post-training on small-scale target robot data, DreamDojo demonstrates a strong understanding of physics and precise action controllability. We also devise a distillation pipeline that accelerates DreamDojo to a real-time speed of 10.81 FPS and further improves context consistency. Our work enables several important applications based on generative world models, including live teleoperation, policy evaluation, and model-based planning. Systematic evaluation on multiple challenging out-of-distribution (OOD) benchmarks verifies the significance of our method for simulating open-world, contact-rich tasks, paving the way for general-purpose robot world models.