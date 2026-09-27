---
layout: publication
title: "DEAS: DEtached value learning with Action Sequence for Scalable Offline RL"
authors: "Changyeon Kim, Haeone Lee, Younggyo Seo, Kimin Lee†, Yuke Zhu†"
pub_info_name: "International Conference on Learning Representations (ICLR)"
pub_info_date: April 2026
excerpt: text text text
images:
  thumb: kim-iclr26-deas.png
  main: kim-iclr26-deas.png
paper_link: "https://arxiv.org/abs/2510.07730"
webpage_link: "https://changyeon.site/deas"
code_link: "https://github.com/csmile-1006/DEAS-Isaac-GR00T"
---
Offline reinforcement learning (RL) presents an attractive paradigm for training intelligent agents without expensive online interactions. However, current approaches still struggle with complex, long-horizon sequential decision making. In this work, we introduce DEtached value learning with Action Sequence (DEAS), a simple yet effective offline RL framework that leverages action sequences for value learning. These temporally extended actions provide richer information than single-step actions, enabling reduction of the effective planning horizon by considering longer sequences at once. However, directly adopting such sequences in actor-critic algorithms introduces excessive value overestimation, which we address through detached value learning that steers value estimates toward in-distribution actions that achieve high returns in the offline dataset. We demonstrate that DEAS consistently outperforms baselines on complex, long-horizon tasks from OGBench and can be applied to enhance the performance of large-scale Vision-Language-Action models that predict action sequences, significantly boosting performance in both RoboCasa Kitchen simulation tasks and real-world manipulation tasks.
