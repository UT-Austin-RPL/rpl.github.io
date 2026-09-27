---
layout: publication
title: "Human-Level Competitive Pokémon via Scalable Offline Reinforcement Learning with Transformers"
authors: "Jake Grigsby, Yuqi Xie*, Justin Sasek*, Steven Zheng*, Yuke Zhu"
pub_info_name: "Reinforcement Learning Conference (RLC)"
pub_info_date: August 2025
excerpt: text text text
images:
  thumb: grigsby-arxiv25-metamon.png
  main: grigsby-arxiv25-metamon.png 
paper_link: "https://arxiv.org/abs/2504.04395"
webpage_link: "https://metamon.tech/"
code_link: "https://github.com/UT-Austin-RPL/metamon"
---
Competitive Pokémon Singles (CPS) is a popular strategy game where players learn to exploit their opponent based on imperfect information in battles that can last more than one hundred stochastic turns. AI research in CPS has been led by heuristic tree search and online self-play, but the game may also create a platform to study adaptive policies trained offline on large datasets. We develop a pipeline to reconstruct the first-person perspective of an agent from logs saved from the third-person perspective of a spectator, thereby unlocking a dataset of real human battles spanning more than a decade that grows larger every day. This dataset enables a black-box approach where we train large sequence models to adapt to their opponent based solely on their input trajectory while selecting moves without explicit search of any kind. We study a progression from imitation learning to offline RL and offline fine-tuning on self-play data in the hardcore competitive setting of Pokémon's four oldest (and most partially observed) game generations. The resulting agents outperform a recent LLM Agent approach and a strong heuristic search engine. While playing anonymously in online battles against humans, our best agents climb to rankings inside the top 10% of active players.
