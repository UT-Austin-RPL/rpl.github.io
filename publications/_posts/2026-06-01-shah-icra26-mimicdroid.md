---
layout: publication
title: "MimicDroid: In-Context Learning for Humanoid Robot Manipulation from Human Play Videos"
authors: "Rutav Shah, Shuijing Liu*, Qi Wang*, Zhenyu Jiang*, Sateesh Kumar, Mingyo Seo, Roberto Martín-Martín, Yuke Zhu"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: June 2026
pub_info_highlight: "Oral Presentation"
excerpt: text text text
images:
  thumb: shah-arxiv25-mimicdroid.jpg
  main: shah-arxiv25-mimicdroid.jpg
paper_link: "https://arxiv.org/abs/2509.09769"
webpage_link: "https://ut-austin-rpl.github.io/MimicDroid/"
code_link: "https://github.com/UT-Austin-RPL/mimicdroid-robocasa/tree/latest"

---
We aim to enable humanoid robots to efficiently solve new manipulation tasks from a few video examples. In-context learning (ICL) is a promising framework for achieving this goal due to its test-time data efficiency and rapid adaptability. However, current ICL methods rely on labor-intensive teleoperated data for training, which restricts scalability. We propose using human play videos—continuous, unlabeled videos of people interacting freely with their environment—as a scalable and diverse training data source. We introduce MimicDroid, which enables humanoids to perform ICL using human play videos as the only training data MimicDroid extracts trajectory pairs with similar manipulation behaviors and trains the policy to predict the actions of one trajectory conditioned on the other. Through this process, the model acquired ICL capabilities for adapting to novel objects and environments at test time. To bridge the embodiment gap, MimicDroid first retargets human wrist poses estimated from RGB videos to the humanoid, leveraging kinematic similarity. It also applies random patch masking during training to reduce overfitting to human-specific cues and improve robustness to visual differences. To evaluate few-shot learning for humanoids, we introduce an open-source simulation benchmark with increasing levels of generalization difficulty. MimicDroid outperformed state-of-the-art methods and achieved nearly twofold higher success rates in the real world.