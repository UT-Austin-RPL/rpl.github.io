---
layout: publication
title: "T-Rex: Tactile-Reactive Dexterous Manipulation"
authors: "Dantong Niu*, Zhuoyang Liu*, Zekai Wang*, Boning Shao, Zhao-Heng Yin, Anirudh Pai, Yuvan Sharma, Stefano Saravalle, Ruijie Zheng, Jing Wang, Ryan Punamiya, Mengda Xu, Yuqi Xie, Yunfan Jiang, Letian Fu, Konstantinos Kallidromitis, Matteo Gioia, Junyi Zhang, Jiaxin Ge, Haiwen Feng, Fabio Galasso, Wei Zhan, David M. Chan, Yutong Bai, Roei Herzig, Jiahui Lei, Li Fei-Fei, Ken Goldberg, Jitendra Malik, Pieter Abbeel, Yuke Zhu, Danfei Xu, Linxi \"Jim\" Fan, Trevor Darrell"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2026
images:
  thumb: niu-corl26-trex-thumb.webp
  main: niu-corl26-trex.png
paper_link: "https://arxiv.org/abs/2606.17055"
webpage_link: "https://tactile-rex.github.io/"
code_link: "https://github.com/ZhuoyangLiu2005/T-Rex"
---
The ability to react dynamically to tactile signals has long been considered crucial to agile human-level dexterity. Yet contemporary learning-based Vision-Language-Action (VLA) models for robotic manipulation generally either overlook the tactile modality or are limited to encoders with static cues, due in part to the scarcity of diverse training data and standardized evaluation, architectural constraints in current VLA models, and limitations of static tactile encoders. In this paper, we push the frontier of tactile-reactive manipulation by addressing all of these limitations. We propose a large-scale, 100-hour tactile-rich dataset collected via a novel, data-efficient recipe that prioritizes elementary motor primitives. To effectively exploit naturally high-frequency touch signals without sacrificing the existing capabilities of existing VLAs, we introduce a variable-rate Mixture-of-Transformers (MoT) architecture equipped with a novel temporal tactile VQ-VAE encoder. We demonstrate the effectiveness of tactile-reactive policies on 12 manipulation tasks requiring delicate force control and deformable object manipulation, achieving over 30% higher average success rate than the strongest baseline.
