---
layout: publication
title: "Eureka: Human-Level Reward Design via Coding Large Language Models"
authors: "Yecheng Jason Ma, William Liang, Guanzhi Wang, De-An Huang, Osbert Bastani, Dinesh Jayaraman, Yuke Zhu, Linxi Fan&dagger;, Anima Anandkumar&dagger;"
pub_info_name: "International Conference on Learning Representations (ICLR)"
pub_info_date: May 2024
excerpt: text text text
images:
  thumb: ma-arxiv23-eureka.png
  main: ma-arxiv23-eureka.png
paper_link: "https://arxiv.org/abs/2310.12931"
webpage_link: "https://eureka-research.github.io"
code_link: "https://github.com/eureka-research/Eureka"
blog_link: "https://blogs.nvidia.com/blog/2023/10/20/eureka-robotics-research/"
---
Large Language Models (LLMs) have excelled as high-level semantic planners for sequential decision-making tasks. However, harnessing them to learn complex low-level manipulation tasks, such as dexterous pen spinning, remains an open problem. We bridge this fundamental gap and present Eureka, a human-level reward design algorithm powered by LLMs. Eureka exploits the remarkable zero-shot generation, code-writing, and in-context improvement capabilities of state-of-the-art LLMs, such as GPT-4, to perform evolutionary optimization over reward code. The resulting rewards can then be used to acquire complex skills via reinforcement learning. Without any task-specific prompting or pre-defined reward templates, Eureka generates reward functions that outperform expert human-engineered rewards. In a diverse suite of 29 open-source RL environments that include 10 distinct robot morphologies, Eureka outperforms human experts on 83% of the tasks, leading to an average normalized improvement of 52%. The generality of Eureka also enables a new gradient-free in-context learning approach to reinforcement learning from human feedback (RLHF), readily incorporating human inputs to improve the quality and the safety of the generated rewards without model updating. Finally, using Eureka rewards in a curriculum learning setting, we demonstrate for the first time, a simulated Shadow Hand capable of performing pen spinning tricks, adeptly manipulating a pen in circles at rapid speed.
