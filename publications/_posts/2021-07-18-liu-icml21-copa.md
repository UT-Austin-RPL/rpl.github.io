---
layout: publication
title: "Coach-Player Multi-Agent Reinforcement Learning for Dynamic Team Composition"
authors: "Bo Liu, Qiang Liu, Peter Stone, Animesh Garg, Yuke Zhu, Anima Anandkumar"
pub_info_name: "International Conference on Machine Learning (ICML)"
pub_info_date: July 2021
pub_info_highlight: Long Talk
excerpt: text text text
images:
  thumb: liu-icml21-copa.png
  main: liu-icml21-copa.png
paper_link: "https://arxiv.org/abs/2105.08692"
---
In real-world multiagent systems, agents with different capabilities may join or leave without altering the team's overarching goals. Coordinating teams with such dynamic composition is challenging: the optimal team strategy varies with the composition. We propose COPA, a coach-player framework to tackle this problem. We assume the coach has a global view of the environment and coordinates the players, who only have partial views, by distributing individual strategies. Specifically, we 1) adopt the attention mechanism for both the coach and the players; 2) propose a variational objective to regularize learning; and 3) design an adaptive communication method to let the coach decide when to communicate with the players. We validate our methods on a resource collection task, a rescue game, and the StarCraft micromanagement tasks. We demonstrate zero-shot generalization to new team compositions. Our method achieves comparable or better performance than the setting where all players have a full view of the environment. Moreover, we see that the performance remains high even when the coach communicates as little as 13% of the time using the adaptive communication strategy.
