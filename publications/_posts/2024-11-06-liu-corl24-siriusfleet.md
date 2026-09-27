---
layout: publication
title: "Multi-Task Interactive Robot Fleet Learning with Visual World Models"
authors: "Huihan Liu, Yu Zhang, Vaarij Betala, Evan Zhang, James Liu, Crystal Ding, Yuke Zhu"
pub_info_name: "Conference on Robot Learning (CoRL)"
pub_info_date: November 2024
excerpt: text text text
images:
  thumb: liu-corl24-siriusfleet.jpg
  main: liu-corl24-siriusfleet.jpg
paper_link: "https://arxiv.org/abs/2410.22689"
webpage_link: "https://ut-austin-rpl.github.io/sirius-fleet/"
code_link: "https://github.com/UT-Austin-RPL/sirius-fleet"
---
Recent advancements in large-scale multi-task robot learning offer the potential for deploying robot fleets in household and industrial settings, enabling them to perform diverse tasks across various environments. However, AI-enabled robots often face challenges with generalization and robustness when exposed to real-world variability and uncertainty. We introduce Sirius-Fleet, a multi-task interactive robot fleet learning framework to address these challenges. Sirius-Fleet monitors robot performance during deployment and involves humans to correct the robot's actions when necessary. We employ a visual world model to predict the outcomes of future actions and build anomaly predictors to predict whether they will likely result in anomalies. As the robot autonomy improves, the anomaly predictors automatically adapt their prediction criteria, leading to fewer requests for human intervention and gradually reducing human workload over time. Evaluations on large-scale benchmarks demonstrate Sirius-Fleet's effectiveness in improving multi-task policy performance and monitoring accuracy. We demonstrate Sirius-Fleet's performance in both RoboCasa in simulation and Mutex in the real world, two diverse, large-scale multi-task benchmarks.         
