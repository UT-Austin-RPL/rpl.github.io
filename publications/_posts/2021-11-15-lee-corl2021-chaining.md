---
layout: publication
title: "Adversarial Skill Chaining for Long-Horizon Robot Manipulation via Terminal State Regularization"
authors: "Youngwoon Lee, Joseph J. Lim, Anima Anandkumar, Yuke Zhu"
pub_info_name: Conference on Robot Learning (CoRL)
pub_info_date: November 2021
excerpt: text text text
images:
  thumb: lee-corl21-chaining.png
  main: lee-corl21-chaining.png
paper_link: "https://arxiv.org/abs/2111.07999"
webpage_link: "https://clvrai.github.io/skill-chaining/"
code_link: "https://github.com/clvrai/skill-chaining"
---
Skill chaining is a promising approach for synthesizing complex behaviors by sequentially combining previously learned skills. Yet, a naive composition of skills fails when a policy encounters a starting state never seen during its training. For successful skill chaining, prior approaches attempt to widen the policy's starting state distribution. However, these approaches require larger state distributions to be covered as more policies are sequenced, and thus are limited to short skill sequences. In this paper, we propose to chain multiple policies without excessively large initial state distributions by regularizing the terminal state distributions in an adversarial learning framework. We evaluate our approach on two complex long-horizon manipulation tasks of furniture assembly. Our results have shown that our method establishes the first model-free reinforcement learning algorithm to solve these tasks; whereas prior skill chaining approaches fail.
