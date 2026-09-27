---
layout: publication
title: "Pretrained Vision-Language-Action Models are Surprisingly Resistant to Forgetting in Continual Learning"
authors: "Huihan Liu, Changyeon Kim, Bo Liu, Minghuan Liu, Yuke Zhu"
pub_info_name: "International Conference on Machine Learning (ICML)"
pub_info_date: July 2026
pub_info_highlight: Oral Presentation
excerpt: text text text
images:
  thumb: liu-icml26-continual.png
  main: liu-icml26-continual.png
paper_link: "https://arxiv.org/abs/2603.03818"
webpage_link: "https://continual-vlas.github.io/forget-me-not/"
code_link: "https://github.com/Continual-VLAs"
---
Continual learning is a long-standing challenge in robot policy learning, where a policy must acquire new skills over time without catastrophically forgetting previously learned ones. While prior work has extensively studied continual learning in relatively small behavior cloning (BC) policy models trained from scratch, its behavior in modern large-scale pretrained Vision-Language-Action (VLA) models remains underexplored. In this work, we find that pretrained VLAs are remarkably resistant to forgetting compared with smaller policy models trained from scratch. Simple Experience Replay (ER) works surprisingly well on VLAs, sometimes achieving zero forgetting even with a small replay data size. Our analysis reveals that pretraining plays a critical role in downstream continual learning performance: large pretrained models mitigate forgetting with a small replay buffer size while maintaining strong forward learning capabilities. Furthermore, we find that VLAs can retain relevant knowledge from prior tasks despite performance degradation during learning new tasks. This knowledge retention enables rapid recovery of seemingly forgotten skills through finetuning. Together, these insights imply that large-scale pretraining fundamentally changes the dynamics of continual learning, enabling models to continually acquire new skills over time with simple replay.
