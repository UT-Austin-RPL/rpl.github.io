---
layout: publication
title: "A Mechanistic Analysis of Sim-and-Real Co-Training in Generative Robot Policies"
authors: "Yu Lei, Minghuan Liu, Abhiram Maddukuri, Zhenyu Jiang, Yuke Zhu"
pub_info_name: "International Conference on Machine Learning (ICML)"
pub_info_date: July 2026
excerpt: text text text
images:
  thumb: lei-icml26-cotraining.png
  main: lei-icml26-cotraining.png
paper_link: "https://arxiv.org/abs/2604.13645"
webpage_link: "https://science-of-co-training.github.io/"
---
Co-training, which combines limited in-domain real-world data with abundant surrogate data such as simulation or cross-embodiment robot data, is widely used for training generative robot policies. Despite its empirical success, the mechanisms that determine when and why co-training is effective remain poorly understood.

We investigate the mechanism of sim-and-real co-training through theoretical analysis and empirical study, and identify two intrinsic effects governing performance. The first, "structured representation alignment", reflects a balance between cross-domain representation alignment and domain discernibility, and plays a primary role in downstream performance. The second, the "importance reweighting effect", arises from domain-dependent modulation of action weighting and operates at a secondary level.

We validate these effects with controlled experiments on a toy model and extensive sim-and-sim and sim-and-real robot manipulation experiments. Our analysis offers a unified interpretation of recent co-training techniques and motivates a simple method that consistently improves upon prior approaches.

More broadly, our aim is to examine the inner workings of co-training and to facilitate research in this direction.
