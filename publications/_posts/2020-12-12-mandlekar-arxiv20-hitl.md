---
layout: publication
title: "Human-in-the-Loop Imitation Learning using Remote Teleoperation"
authors: "Ajay Mandlekar, Danfei Xu, Roberto Martín-Martín, Yuke Zhu, Li Fei-Fei, Silvio Savarese"
pub_info_name: "Technical report arXiv:2012.06733"
pub_info_date: December 2020
excerpt: text text text
images:
  thumb: mandlekar-arxiv20-hitl.png
  main: mandlekar-arxiv20-hitl.png
paper_link: "https://arxiv.org/abs/2012.06733"
webpage_link: "https://sites.google.com/stanford.edu/iwr"
video_link: "https://www.youtube.com/watch?v=J7yE_UqerDI"
---
Imitation Learning is a promising paradigm for learning complex robot manipulation skills by reproducing behavior from human demonstrations. However, manipulation tasks often contain bottleneck regions that require a sequence of precise actions to make meaningful progress, such as a robot inserting a pod into a coffee machine to make coffee. Trained policies can fail in these regions because small deviations in actions can lead the policy into states not covered by the demonstrations. Intervention-based policy learning is an alternative that can address this issue -- it allows human operators to monitor trained policies and take over control when they encounter failures. In this paper, we build a data collection system tailored to 6-DoF manipulation settings, that enables remote human operators to monitor and intervene on trained policies. We develop a simple and effective algorithm to train the policy iteratively on new data collected by the system that encourages the policy to learn how to traverse bottlenecks through the interventions. We demonstrate that agents trained on data collected by our intervention-based system and algorithm outperform agents trained on an equivalent number of samples collected by non-interventional demonstrators, and further show that our method outperforms multiple state-of-the-art baselines for learning from the human interventions on a challenging robot threading task and a coffee making task.