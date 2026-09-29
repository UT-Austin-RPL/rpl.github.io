---
layout: publication
title: "Adaptive Procedural Task Generation for Hard-Exploration Problems"
authors: "Kuan Fang, Yuke Zhu, Silvio Savarese, Li Fei-Fei"
pub_info_name: "International Conference on Learning Representations (ICLR)"
pub_info_date: May 2021
excerpt: text text text
images:
  thumb: fang-iclr21-apt-gen.png
  main: fang-iclr21-apt-gen.png
paper_link: "https://arxiv.org/abs/2007.00350"
webpage_link: "https://apt-gen.github.io/"
---
We introduce Adaptive Procedural Task Generation (APT-Gen), an approach for progressively generating a sequence of tasks as curricula to facilitate reinforcement learning in hard-exploration problems. At the heart of our approach, a task generator learns to create tasks via a black-box procedural generation module by adaptively sampling from the parameterized task space. To enable curriculum learning in the absence of a direct indicator of learning progress, the task generator is trained by balancing the agent's expected return in the generated tasks and their similarities to the target task. Through adversarial training, the similarity between the generated tasks and the target task is adaptively estimated by a task discriminator defined on the agent's behaviors. In this way, our approach can efficiently generate tasks of rich variations for target tasks of unknown parameterization or not covered by the predefined task space. Experiments demonstrate the effectiveness of our approach through quantitative and qualitative analysis in various scenarios.
