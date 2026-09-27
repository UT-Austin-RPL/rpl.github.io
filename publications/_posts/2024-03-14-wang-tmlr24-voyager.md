---
layout: publication
title: "Voyager: An Open-Ended Embodied Agent with Large Language Models"
authors: "Guanzhi Wang, Yuqi Xie, Yunfan Jiang, Ajay Mandlekar, Chaowei Xiao, Yuke Zhu, Linxi Fan&dagger;, Anima Anandkumar&dagger;"
pub_info_name: "Transactions on Machine Learning Research (TMLR)"
pub_info_date: March 2024
excerpt: text text text
images:
  thumb: wang-tmlr24-voyager.png
  main: wang-tmlr24-voyager.png
paper_link: "https://arxiv.org/abs/2305.16291"
webpage_link: "https://voyager.minedojo.org"
code_link: "https://github.com/MineDojo/Voyager"
---
We introduce Voyager, the first LLM-powered embodied lifelong learning agent in Minecraft that continuously explores the world, acquires diverse skills, and makes novel discoveries without human intervention. Voyager consists of three key components: 1) an automatic curriculum that maximizes exploration, 2) an ever-growing skill library of executable code for storing and retrieving complex behaviors, and 3) a new iterative prompting mechanism that incorporates environment feedback, execution errors, and self-verification for program improvement. Voyager interacts with GPT-4 via blackbox queries, which bypasses the need for model parameter fine-tuning. The skills developed by Voyager are temporally extended, interpretable, and compositional, which compounds the agent's abilities rapidly and alleviates catastrophic forgetting. Empirically, Voyager shows strong in-context lifelong learning capability and exhibits exceptional proficiency in playing Minecraft. It obtains 3.3x more unique items, travels 2.3x longer distances, and unlocks key tech tree milestones up to 15.3x faster than prior SOTA. Voyager is able to utilize the learned skill library in a new Minecraft world to solve novel tasks from scratch, while other techniques struggle to generalize.
