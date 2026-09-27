---
layout: publication
title: "B-spline Policy: Accelerating Manipulation Policies via B-spline Action Representations"
authors: "Xiaoshen Han*, Haoyu Xiong*, Haonan Chen, Chaoqi Liu, Antonio Torralba, Yuke Zhu, Yilun Du"
pub_info_name: "Technical report arXiv:2607.09648"
pub_info_date: July 2026
excerpt: text text text
images:
  thumb: han-arxiv26-bspline.png
  main: han-arxiv26-bspline.png
paper_link: "https://arxiv.org/abs/2607.09648"
webpage_link: "https://b-spline-policy.github.io/"
code_link: "https://github.com/B-spline-policy/bspline-policy"
---
In this work, we present B-spline Policy (BSP), an action representation designed for accelerating robot manipulation policies. Rather than predicting discrete-time action chunks, BSP parameterizes actions as continuous B-spline curves defined by a set of knots and control points. This representation yields smooth, time-continuous trajectories that can be temporally scaled and executed by low-level controllers at higher frequencies and speeds. We show that B-spline-parameterized actions can be seamlessly integrated into standard policy learning pipelines by directly predicting B-spline parameters. Experiments on simulated and real-world tasks demonstrate that BSP significantly reduces task completion time, achieving substantial improvements over baseline methods while maintaining strong success rates.
