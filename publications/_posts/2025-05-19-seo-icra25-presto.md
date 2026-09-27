---
layout: publication
title: "PRESTO: Fast Motion Planning Using Diffusion Models Based on Key-Configuration Environment Representation"
authors: "Mingyo Seo*, Yoonyoung Cho*, Yoonchang Sung, Peter Stone, Yuke Zhu&dagger;, Beomjoon Kim&dagger;"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2025
excerpt: text text text
images:
  thumb: seo-arxiv24-presto.png
  main: seo-arxiv24-presto.png
paper_link: "https://arxiv.org/abs/2409.16012"
code_link: "https://github.com/kiwi-sherbet/PRESTO"
webpage_link: "https://kiwi-sherbet.github.io/PRESTO/"
---
We introduce a learning-guided motion planning framework that provides initial seed trajectories using a diffusion model for trajectory optimization. Given a workspace, our method approximates the configuration space (C-space) obstacles through a key-configuration representation that consists of a sparse set of task-related key configurations, and uses this as an input to the diffusion model. The diffusion model integrates regularization terms that encourage collision avoidance and smooth trajectories during training, and trajectory optimization refines the generated seed trajectories to further correct any colliding segments. Our experimental results demonstrate that using high-quality trajectory priors, learned through our C-space-grounded diffusion model, enables efficient generation of collision-free trajectories in narrow-passage environments, outperforming prior learning- and planning-based baselines.
