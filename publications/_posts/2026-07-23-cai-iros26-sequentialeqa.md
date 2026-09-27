---
layout: publication
title: "Beyond Episodic Evaluation: Memory Architectural Bottlenecks in Sequential Embodied Question Answering"
authors: "Zikui Cai*, Kaushal Janga*, Tan Dat Dao*, Seungjae Lee*, Shivin Dass, Mingyo Seo, Kaiyu Yue, Mintong Kang, Nandhu Pillai, Monte Hoover, Aadi Palnitkar, Ruchit Rawal, Ruijie Zheng, Bo Li, Yuke Zhu, Roberto Martín-Martín, Tom Goldstein, Furong Huang"
pub_info_name: "IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS 2026)"
pub_info_date: July 2026
excerpt: text text text
images:
  thumb: cai-iros26-sequentialeqa.png
  main: cai-iros26-sequentialeqa.png
paper_link: "https://arxiv.org/abs/2607.21571"
webpage_link: "https://sequential-eqa.github.io/"
code_link: "https://github.com/jangablox/sequential-eqa"
---
Embodied question answering (EQA) is usually evaluated episodically, with every task solved independently and internal state reset between episodes. Real robots instead operate continuously and must retain and selectively reuse knowledge from earlier interactions. We study how several memory architectures behave in a sequential EQA protocol, where an agent answers multiple questions in the same scene while carrying memory across queries. Simply leaving memory enabled is not enough: 2D occupancy maps preserve traversability but lose visual-semantic evidence, while policies trained on short episodic histories suffer from temporal distribution shift when exposed to long, multi-query context. Structured, spatially grounded memory overcomes this bottleneck by anchoring persistent visual observations to metric 3D geometry. Across simulated environments, this representation improves answer accuracy while reducing navigation cost. Real-world experiments on a mobile robot further show that spatially grounded visual memory is essential for continuous embodied reasoning.
