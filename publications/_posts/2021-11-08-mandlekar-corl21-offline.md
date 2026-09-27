---
layout: publication
title: "What Matters in Learning from Offline Human Demonstrations for Robot Manipulation"
authors: "Ajay Mandlekar, Danfei Xu, Josiah Wong, Soroush Nasiriany, Chen Wang, Rohun Kulkarni, Li Fei-Fei, Silvio Savarese, Yuke Zhu, Roberto Martín-Martín"
pub_info_name: Conference on Robot Learning (CoRL)
pub_info_date: November 2021
pub_info_highlight: Oral Presentation
excerpt: text text text
images:
  thumb: mandlekar-corl21-offline.png
  main: mandlekar-corl21-offline.png
paper_link: "https://arxiv.org/abs/2108.03298"
webpage_link: "https://arise-initiative.github.io/robomimic-web/"
video_link: "https://www.youtube.com/watch?v=qg_IVo4rB8k"
code_link: "https://github.com/ARISE-Initiative/robomimic"
blog_link: "https://ai.stanford.edu/blog/robomimic/"
---
Imitating human demonstrations is a promising approach to endow robots with various manipulation capabilities. While recent advances have been made in imitation learning and batch (offline) reinforcement learning, a lack of open-source human datasets and reproducible learning methods make assessing the state of the field difficult. In this paper, we conduct an extensive study of six offline learning algorithms for robot manipulation on five simulated and three real-world multi-stage manipulation tasks of varying complexity, and with datasets of varying quality. Our study analyzes the most critical challenges when learning from offline human data for manipulation. Based on the study, we derive a series of lessons including the sensitivity to different algorithmic design choices, the dependence on the quality of the demonstrations, and the variability based on the stopping criteria due to the different objectives in training and evaluation. We also highlight opportunities for learning from human datasets, such as the ability to learn proficient policies on challenging, multi-stage tasks beyond the scope of current reinforcement learning methods, and the ability to easily scale to natural, real-world manipulation scenarios where only raw sensory signals are available. We have open-sourced our datasets and all algorithm implementations to facilitate future research and fair comparisons in learning from human demonstration data. Codebase, datasets, trained models, and more available at https://arise-initiative.github.io/robomimic-web/
