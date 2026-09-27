---
layout: publication
title: "Vesta: A Generalist Embodied Reasoning Model"
authors: "Johan Bjorck*, Zhiqi Li*, Yunze Man*, Jing Wang*, An-Chieh Cheng, Sifei Liu, Shihao Wang, Zhiding Yu, Abhishek Badki, Stan Birchfield, Valts Blukis, Yevgen Chebotar, Siyi Chen, Sicong Leng, Yu-Cheng Chou, Tianli Ding, Boyi Li, Zhengyi Luo, Hang Su, Jonathan Tremblay, Tingwu Wang, Bowen Wen, Jimmy Wu, Xianghui Xie, Hanrong Ye, Hongxu Yin, K. R. Zentner, Liangyan Gui, Yu-Xiong Wang, Yuke Zhu&dagger;, Linxi \"Jim\" Fan&dagger;, Jan Kautz&dagger;"
pub_info_name: "Technical report arXiv:2606.20905"
pub_info_date: June 2026
excerpt: text text text
images:
  thumb: bjorck-arxiv26-vesta.png
  main: bjorck-arxiv26-vesta.png
paper_link: "https://arxiv.org/abs/2606.20905"
webpage_link: "https://research.nvidia.com/labs/gear/vesta/"
---
Robots operating in open-world environments must seamlessly integrate localization, spatial reasoning, navigation, and long-horizon planning. While specialist models excel at individual tasks, deploying a multi-model stack is computationally expensive and prone to cascading errors. We present Vesta, a unified embodied generalist that consolidates these capabilities into a single foundation model. Our approach combines a diverse and massive curated corpus designed to induce spatial grounding and a simple multimodal memory harness that enables reasoning over extended time horizons. Across diverse benchmarks, Vesta on average beats individual SOTA baselines by more than 20% and beats an ensemble of per-category-best baselines by more than 10%—thus demonstrating that a generalist model can match or exceed specialists. On real-world robotic tasks requiring memory and reasoning, Vesta improves task success by more than 35%. Our work thus demonstrates that a single generalist is a feasible, scalable, and arguably preferable alternative to combining specialists.
