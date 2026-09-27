---
layout: publication
title: "AMAGO: Scalable In-Context Reinforcement Learning for Adaptive Agents"
authors: "Jake Grigsby, Linxi Fan, Yuke Zhu"
pub_info_name: "International Conference on Learning Representations (ICLR)"
pub_info_date: May 2024
pub_info_highlight: Spotlight Presentation
excerpt: text text text
images:
  thumb: grigsby-iclr23-amago.jpg
  main: grigsby-iclr23-amago.jpg
paper_link: "https://arxiv.org/abs/2310.09971"
webpage_link: "https://ut-austin-rpl.github.io/amago"
code_link: "https://github.com/UT-Austin-RPL/amago"
---
We introduce AMAGO, an in-context Reinforcement Learning (RL) agent that uses sequence models to tackle the challenges of generalization, long-term memory, and meta-learning. Recent works have shown that off-policy learning can make in-context RL with recurrent policies viable. Nonetheless, these approaches require extensive tuning and limit scalability by creating key bottlenecks in agents' memory capacity, planning horizon, and model size. AMAGO revisits and redesigns the off-policy in-context approach to successfully train long-sequence Transformers over entire rollouts in parallel with end-to-end RL. Our agent is uniquely scalable and applicable to a wide range of problems. We demonstrate its strong performance empirically in meta-RL and long-term memory domains. AMAGO's focus on sparse rewards and off-policy data also allows in-context learning to extend to goal-conditioned problems with challenging exploration. When combined with a novel hindsight relabeling scheme, AMAGO can solve a previously difficult category of open-world domains, where agents complete many possible instructions in procedurally generated environments. We evaluate our agent on three goal-conditioned domains and study how its individual improvements connect to create a generalist policy.
