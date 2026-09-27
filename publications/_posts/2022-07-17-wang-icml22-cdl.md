---
layout: publication
title: "Causal Dynamics Learning for Task-Independent State Abstraction"
authors: "Zizhao Wang, Xuesu Xiao, Zifan Xu, Yuke Zhu, Peter Stone"
pub_info_name: "International Conference on Machine Learning (ICML)"
pub_info_date: July 2022
pub_info_highlight: Long Presentation
excerpt: text text text
images:
  thumb: wang-icml22-cdl.png
  main: wang-icml22-cdl.png
paper_link: "https://arxiv.org/abs/2206.13452"
---

Learning dynamics models accurately is an important goal for Model-Based Reinforcement Learning (MBRL), but most MBRL methods learn a dense dynamics model which is vulnerable to spurious correlations and therefore generalizes poorly to unseen states. In this paper, we introduce Causal Dynamics Learning for Task-Independent State Abstraction (CDL), which first learns a theoretically proved causal dynamics model that removes unnecessary dependencies between state variables and the action, thus generalizing well to unseen states. A state abstraction can then be derived from the learned dynamics, which not only improves sample efficiency but also applies to a wider range of tasks than existing state abstraction methods. Evaluated on two simulated environments and downstream tasks, both the dynamics model and policies learned by the proposed method generalize well to unseen states and the derived state abstraction improves sample efficiency compared to learning without it.
