---
layout: publication
title: "LLM-GROP: Visually Grounded Robot Task and Motion Planning with Large Language Models"
authors: "Xiaohan Zhang*, Yan Ding*, Yohei Hayamizu*, Zainab Altaweel*, Yifeng Zhu, Yuke Zhu, Peter Stone, Chris Paxton, Shiqi Zhang"
pub_info_name: "International Journal of Robotics Research (IJRR)"
pub_info_date: October 2025
excerpt: text text text
images:
  thumb: zhang-ijrr25-llmgrop.png
  main: zhang-ijrr25-llmgrop.png
paper_link: "https://arxiv.org/abs/2511.07727"
---
Task planning and motion planning are two of the most important problems in robotics, where task planning methods help robots achieve high-level goals and motion planning methods maintain low-level feasibility. Task and motion planning (TAMP) methods interleave the two processes of task planning and motion planning to ensure goal achievement and motion feasibility. Within the TAMP context, we are concerned with the mobile manipulation (MoMa) of multiple objects, where it is necessary to interleave actions for navigation and manipulation. In particular, we aim to compute where and how each object should be placed given underspecified goals, such as “set up dinner table with a fork, knife and plate.” We leverage the rich common sense knowledge from large language models (LLMs), for example, about how tableware is organized, to facilitate both task-level and motion-level planning. In addition, we use computer vision methods to learn a strategy for selecting base positions to facilitate MoMa behaviors, where the base position corresponds to the robot’s “footprint” and orientation in its operating space. Altogether, this article provides a principled TAMP framework for MoMa tasks that accounts for common sense about object rearrangement and is adaptive to novel situations that include many objects that need to be moved. We performed quantitative experiments in both real-world settings and simulated environments. We evaluated the success rate and efficiency in completing long-horizon object rearrangement tasks. While the robot completed 84.4% real-world object rearrangement trials, subjective human evaluations indicated that the robot’s performance is still lower than experienced human waiters.
