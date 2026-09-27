---
layout: publication
title: "Building Minimal and Reusable Causal State Abstractions for Reinforcement Learning"
authors: "Zizhao Wang*, Caroline Wang*, Xuesu Xiao, Yuke Zhu, Peter Stone"
pub_info_name: AAAI Conference on Artificial Intelligence (AAAI)
pub_info_date: February 2024
pub_info_highlight: Oral Presentation
excerpt: text text text
images:
  thumb: wang-aaai24-building.png
  main: wang-aaai24-building.png
paper_link: "https://arxiv.org/abs/2401.12497"

---

Two desiderata of reinforcement learning (RL) algorithms are the ability to learn from relatively little experience and the ability to learn policies that generalize to a range of problem specifications. In factored state spaces, one approach towards achieving both goals is to learn state abstractions, which only keep the necessary variables for learning the tasks at hand. This paper introduces Causal Bisimulation Modeling (CBM), a method that learns the causal relationships in the dynamics and reward functions for each task to derive a minimal, task-specific abstraction. CBM leverages and improves implicit modeling to train a high-fidelity causal dynamics model that can be reused for all tasks in the same environment. Empirical validation on manipulation environments and DeepMind Control Suite reveals that CBM's learned implicit dynamics models identify the underlying causal relationships and state abstractions more accurately than explicit ones. Furthermore, the derived state abstractions allow a task learner to achieve near-oracle levels of sample efficiency and outperform baselines on all tasks.	