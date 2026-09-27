---
layout: publication
title: "The PokeAgent Challenge: Competitive and Long-Context Learning at Scale"
authors: "Seth Karten, Jake Grigsby, Stephanie Milani, Kiran Vodrahalli, Amy Zhang, Fei Fang, Yuke Zhu, Chi Jin"
authors_full: "Seth Karten, Jake Grigsby, Tersoo Upaa Jr., Junik Bae, Seonghun Hong, Hyunyoung Jeong, Jaeyoon Jung, Kun Kerdthaisong, Gyungbo Kim, Hyeokgi Kim, Yujin Kim, Eunju Kwon, Dongyu Liu, Patrick Mariglia, Sangyeon Park, Benedikt Schink, Xianwei Shi, Anthony Sistilli, Joseph Twin, Arian Urdu, Matin Urdu, Qiao Wang, Ling Wu, Wenli Zhang, Kunsheng Zhou, Stephanie Milani, Kiran Vodrahalli, Amy Zhang, Fei Fang, Yuke Zhu, Chi Jin"
pub_info_name: "NeurIPS 2025 Competition Track"
pub_info_date: December 2025
excerpt: text text text
images:
  thumb: karten-neurips25-pokeagent.png
  main: karten-neurips25-pokeagent.png
paper_link: "https://arxiv.org/abs/2603.15563"
webpage_link: "https://pokeagentchallenge.com"
---
We present the PokéAgent Challenge, a large-scale benchmark for decision-making research built on Pokémon’s multi-agent battle system and expansive role-playing game (RPG) environment. Partial observability, game-theoretic reasoning, and long-horizon planning remain open problems for frontier AI, yet few benchmarks stress all three simultaneously under realistic conditions. PokéAgent targets these limitations at scale through two complementary tracks: our Battling Track, which calls for strategic reasoning and generalization under partial observability in competitive Pokémon battles, and our Speedrunning Track, which requires long-horizon planning and sequential decision-making in the Pokémon RPG. Our Battling Track supplies a dataset of 20M+ battle trajectories alongside a suite of heuristic, RL, and LLM-based baselines capable of high-level competitive play. Our Speedrunning Track provides the first standardized evaluation framework for RPG speedrunning, including an open-source multi-agent orchestration system that enables modular, reproducible comparisons of harness-based LLM approaches. Our NeurIPS 2025 competition validates both the quality of our resources and the research community’s interest in Pokémon, with more than 100 teams competing across both tracks and winning solutions detailed in our paper. Participant submissions and our own baselines reveal considerable gaps between generalist (LLM), specialist (RL), and elite human performance. Analysis against the BenchPress evaluation matrix shows that Pokémon battling is nearly orthogonal to standard LLM benchmarks, measuring capabilities not captured by existing evaluation suites and positioning Pokémon as an unsolved benchmark that can drive RL and LLM research forward. We transition from the NeurIPS 2025 competition to a living benchmark by releasing a live leaderboard for Battling and self-contained evaluation for Speedrunning at https://pokeagentchallenge.com.
