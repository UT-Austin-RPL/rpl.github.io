---
layout: publication
title: "Bongard-HOI: Benchmarking Few-Shot Visual Reasoning for Human-Object Interactions"
authors: "Huaizu Jiang∗ , Xiaojian Ma*, Weili Nie, Zhiding Yu, Yuke Zhu, Anima Anandkumar"
pub_info_name: "IEEE Conference on Computer Vision and Pattern Recognition (CVPR)"
pub_info_date: June 2022
pub_info_highlight: Oral Presentation
excerpt: text text text
images:
  thumb: jiang-cvpr22-bongard-hoi.png
  main: jiang-cvpr22-bongard-hoi.png
paper_link: "https://arxiv.org/abs/2205.13803"
code_link: "https://github.com/NVlabs/Bongard-HOI"
---
A significant gap remains between today's visual pattern recognition models and human-level visual cognition especially when it comes to few-shot learning and compositional reasoning of novel concepts. We introduce Bongard-HOI, a new visual reasoning benchmark that focuses on compositional learning of human-object interactions (HOIs) from natural images. It is inspired by two desirable characteristics from the classical Bongard problems (BPs): 1) few-shot concept learning, and 2) context-dependent reasoning. We carefully curate the few-shot instances with hard negatives, where positive and negative images only disagree on action labels, making mere recognition of object categories insufficient to complete our benchmarks. We also design multiple test sets to systematically study the generalization of visual learning models, where we vary the overlap of the HOI concepts between the training and test sets of few-shot instances, from partial to no overlaps. Bongard-HOI presents a substantial challenge to today's visual recognition models. The state-of-the-art HOI detection model achieves only 62% accuracy on few-shot binary prediction while even amateur human testers on MTurk have 91% accuracy. With the Bongard-HOI benchmark, we hope to further advance research efforts in visual reasoning, especially in holistic perception-reasoning systems and better representation learning.