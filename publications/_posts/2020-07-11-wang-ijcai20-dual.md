---
layout: publication
title: "DualSMC: Tunneling Differentiable Filtering and Planning under Continuous POMDPs"
authors: "Yunbo Wang*, Bo Liu*, Jiajun Wu, Yuke Zhu, Simon S. Du, Li Fei-Fei, Joshua B. Tenenbaum"
pub_info_name: "International Joint Conference on Artificial Intelligence (IJCAI)"
pub_info_date: July 2020
excerpt: text text text
images:
  thumb: wang-ijcai20-dual.png
  main: wang-ijcai20-dual.png
paper_link: "https://arxiv.org/abs/1909.13003"
webpage_link: "http://people.csail.mit.edu/yunbo/dualsmc/"
code_link: "https://github.com/Cranial-XIX/DualSMC"
note: "* indicates equal contribution"
---
We present the DualSMC network that solves continuous POMDPs by learning belief representations and then leveraging them for planning. It is based on the fact that filtering, i.e. state estimation, and planning can be viewed as two related sequential Monte Carlo processes, with one in the belief space and the other in the future planning trajectory space. In particular, we first introduce a novel particle filter network that makes better use of the adversarial relationship between the proposer model and the observation model. We then introduce a new planning algorithm over the belief representations, which learns uncertainty-dependent policies. We allow these two parts to be trained jointly with each other. We testify the effectiveness of our approach on three continuous control and planning tasks: the floor positioning, the 3D light-dark navigation, and a modified Reacher task.