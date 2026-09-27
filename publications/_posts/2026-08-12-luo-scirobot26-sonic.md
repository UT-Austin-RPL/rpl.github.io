---
layout: publication
title: "SONIC: Supersizing Motion Tracking for Natural Humanoid Whole-Body Control"
authors: "Zhengyi Luo*, Ye Yuan*, Tingwu Wang*, Chenran Li*, Sirui Chen, Fernando Castañeda, Zi-Ang Cao, Jiefeng Li, David Minor, Qingwei Ben, Xingye Da, Runyu Ding, Cyrus Hogg, Lina Song, Edy Lim, Eugene Jeong, Tairan He, Haoru Xue, Wenli Xiao, Zi Wang, Simon Yuen, Jan Kautz, Yan Chang, Umar Iqbal, Linxi Fan&dagger;, Yuke Zhu&dagger;"
pub_info_name: "Science Robotics"
pub_info_date: August 2026
excerpt: text text text
images:
  thumb: luo-scirobot26-sonic.jpg
  main: luo-scirobot26-sonic.jpg
paper_link: "https://arxiv.org/abs/2511.07820"
journal_link: "https://www.science.org/doi/10.1126/scirobotics.aed4592"
webpage_link: "https://nvlabs.github.io/SONIC/"
code_link: "https://github.com/NVlabs/GR00T-WholeBodyControl"
demo_link: "https://nvlabs.github.io/GEAR-SONIC/demo.html"
---
Despite the rise of billion-parameter foundation models trained across thousands of GPUs, similar scaling gains have not been shown for humanoid control. Current neural controllers for humanoids remain modest in size, target a limited behavior set, and are trained on a handful of GPUs over several days. We show that scaling up model capacity, data, and compute yields a generalist humanoid controller capable of creating natural and robust whole-body movements. Specifically, we posit motion tracking as a natural and scalable task for humanoid control, leverageing dense supervision from diverse motion-capture data to acquire human motion priors without manual reward engineering. We build a foundation model for motion tracking by scaling along three axes: network size (from 1.2M to 42M parameters), dataset volume (over 100M frames, 700 hours of high-quality motion data), and compute (9k GPU hours). Beyond demonstrating the benefits of scale, we show the practical utility of our model through two mechanisms: (1) a real-time universal kinematic planner that bridges motion tracking to downstream task execution, enabling natural and interactive control, and (2) a unified token space that supports various motion input interfaces, such as VR teleoperation devices, human videos, and vision-language-action (VLA) models, all using the same policy. Scaling motion tracking exhibits favorable properties: performance improves steadily with increased compute and data diversity, and learned representations generalize to unseen motions, establishing motion tracking at scale as a practical foundation for humanoid control.