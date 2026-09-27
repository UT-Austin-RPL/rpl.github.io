---
layout: publication
title: "DreamGen: Unlocking Generalization in Robot Learning through Video World Models"
authors: "Joel Jang*, Seonghyeon Ye*, Zongyu Lin*, Jiannan Xiang*, Johan Bjorck, Yu Fang, Fengyuan Hu, Spencer Huang, Kaushil Kundalia, Yen-Chen Lin, Loic Magne, Ajay Mandlekar, Avnish Narayan, You Liang Tan, Guanzhi Wang, Jing Wang, Qi Wang, Yinzhen Xu, Xiaohui Zeng, Kaiyuan Zheng, Ruijie Zheng, Ming-Yu Liu, Luke Zettlemoyer, Dieter Fox, Jan Kautz, Scott Reed&dagger;, Yuke Zhu&dagger;, Linxi Fan&dagger;"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: September 2025
excerpt: text text text
images:
  thumb: jang-corl25-dreamgen.png
  main: jang-corl25-dreamgen.png
paper_link: "https://arxiv.org/abs/2505.12705"
webpage_link: "https://research.nvidia.com/labs/gear/dreamgen"
code_link: "https://github.com/nvidia/GR00T-dreams"
---
We introduce DreamGen, a simple yet highly effective 4-stage pipeline for training robot policies that generalize across behaviors and environments through neural trajectories - synthetic robot data generated from video world models. DreamGen leverages state-of-the-art image-to-video generative models, adapting them to the target robot embodiment to produce photorealistic synthetic videos of familiar or novel tasks in diverse environments. Since these models generate only videos, we recover pseudo-action sequences using either a latent action model or an inverse-dynamics model (IDM). Despite its simplicity, DreamGen unlocks strong behavior and environment generalization: a humanoid robot can perform 22 new behaviors in both seen and unseen environments, while requiring teleoperation data from only a single pick-and-place task in one environment. To evaluate the pipeline systematically, we introduce DreamGen Bench, a video generation benchmark that shows a strong correlation between benchmark performance and downstream policy success. Our work establishes a promising new axis for scaling robot learning well beyond manual data collection.			