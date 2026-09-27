---
layout: publication
title: "SCIZOR: A Self-Supervised Approach to Data Curation for Large-Scale Imitation Learning"
authors: "Yu Zhang*, Yuqi Xie*, Huihan Liu, Rutav Shah, Michael Wan, Linxi Fan, Yuke Zhu"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: June 2026
pub_info_highlight: "Oral Presentation"
excerpt: text text text
images:
  thumb: zhang-icra26-scizor.png
  main: zhang-icra26-scizor.png
paper_link: "https://arxiv.org/abs/2505.22626"
webpage_link: "https://ut-austin-rpl.github.io/SCIZOR/"
code_link: "https://github.com/UT-Austin-RPL/SCIZOR"
---
Imitation learning advances robot capabilities by enabling the acquisition of diverse behaviors from human demonstrations. However, large-scale datasets used for policy training often introduce substantial variability in quality, which can negatively impact performance. As a result, automatically curating datasets by filtering low-quality samples to improve quality becomes essential. Existing robotic curation approaches rely on costly manual annotations and perform curation at a coarse granularity, such as the dataset or trajectory level, failing to account for the quality of individual state-action pairs. To address this, we introduce SCIZOR, a self-supervised data curation framework that filters out low-quality state-action pairs to improve the performance of imitation learning policies. SCIZOR targets two complementary sources of low-quality data: suboptimal data, which hinders learning with undesirable actions, and redundant data, which dilutes training with repetitive patterns. SCIZOR leverages a self-supervised task progress predictor for suboptimal data to remove samples lacking task progression, and a deduplication module operating on joint state-action representation for samples with redundant patterns. Empirically, we show that SCIZOR enables imitation learning policies to achieve higher performance with less data, yielding an average improvement of 15.4% across multiple benchmarks. More information is available at: https://ut-austin-rpl.github.io/SCIZOR/				
