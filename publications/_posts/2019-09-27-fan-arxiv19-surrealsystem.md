---
layout: publication
title: "SURREAL-System: Fully-Integrated Stack for Distributed Deep Reinforcement Learning"
authors: "Linxi Fan*, Yuke Zhu*, Jiren Zhu, Zihua Liu, Orien Zeng, Anchit Gupta, Joan Creus-Costa, Silvio Savarese, Li Fei-Fei"
pub_info_name: "Technical report arXiv:1909.12989"
pub_info_date: September 2019
excerpt: text text text
images:
  thumb: fan-arxiv19-surrealsystem.png
  main: fan-arxiv19-surrealsystem.png
paper_link: "papers/fan-arxiv19-surrealsystem.pdf"
webpage_link: "http://surreal.stanford.edu"
code_link: "https://github.com/SurrealAI"
note: "* indicates equal contribution"
---
We present an overview of SURREAL-System, a reproducible, flexible, and scalable framework for distributed reinforcement learning (RL). The framework consists of a stack of four layers: Provisioner, Orchestrator, Protocol, and Algorithms. The Provisioner abstracts away the machine hardware and node pools across different cloud providers. The Orchestrator provides a unified interface for scheduling and deploying distributed algorithms by high-level description, which is capable of deploying to a wide range of hardware from a personal laptop to full-fledged cloud clusters. The Protocol provides network communication primitives optimized for RL. Finally, the SURREAL algorithms, such as Proximal Policy Optimization (PPO) and Evolution Strategies (ES), can easily scale to 1000s of CPU cores and 100s of GPUs. The learning performances of our distributed algorithms establish new state-of-the-art on OpenAI Gym and Robotics Suites tasks.