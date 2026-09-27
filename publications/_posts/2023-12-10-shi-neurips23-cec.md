---
layout: publication
title: "Cross-Episodic Curriculum for Transformer Agents"
authors: "Lucy Xiaoyang Shi*, Yunfan Jiang*, Jake Grigsby, Linxi Fan&dagger;, Yuke Zhu&dagger;"
pub_info_name: "Conference on Neural Information Processing Systems (NeurIPS)"
pub_info_date: December 2023
excerpt: text text text
images:
  thumb: shi-neurips23-cec.png
  main: shi-neurips23-cec.png
paper_link: "https://arxiv.org/abs/2310.08549"
webpage_link: "https://cec-agent.github.io"
code_link: "https://github.com/CEC-Agent/CEC"
---
We present a new algorithm, Cross-Episodic Curriculum (CEC), to boost the learning efficiency and generalization of Transformer agents. Central to CEC is the placement of cross-episodic experiences into a Transformer's context, which forms the basis of a curriculum. By sequentially structuring online learning trials and mixed-quality demonstrations, CEC constructs curricula that encapsulate learning progression and proficiency increase across episodes. Such synergy combined with the potent pattern recognition capabilities of Transformer models delivers a powerful cross-episodic attention mechanism. The effectiveness of CEC is demonstrated under two representative scenarios: one involving multi-task reinforcement learning with discrete control, such as in DeepMind Lab, where the curriculum captures the learning progression in both individual and progressively complex settings; and the other involving imitation learning with mixed-quality data for continuous control, as seen in RoboMimic, where the curriculum captures the improvement in demonstrators' expertise. In all instances, policies resulting from CEC exhibit superior performance and strong generalization.