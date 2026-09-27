---
layout: publication
title: "ASPIRE: Agentic /Skills Discovery for Robotics"
authors: "Runyu Lu*, Yubo Wu*, Ethan Kou*, Letian Fu, Wenli Xiao, Ajay Mandlekar, Yinzhen Xu, Guanya Shi, Ken Goldberg, Ang Chen, Mosharaf Chowdhury, Yuke Zhu&dagger;, Linxi \"Jim\" Fan&dagger;, Guanzhi Wang&dagger;"
pub_info_name: "Technical report arXiv:2607.00272"
pub_info_date: June 2026
excerpt: text text text
images:
  thumb: lu-arxiv26-aspire.png
  main: lu-arxiv26-aspire.png
paper_link: "https://arxiv.org/abs/2607.00272"
webpage_link: "https://research.nvidia.com/labs/gear/aspire/"
---
Traditional robot programming is challenging: it requires orchestrating multimodal perception, managing physical contact dynamics, and handling diverse configurations and execution failures. We introduce ASPIRE (Agentic Skill Programming through Iterative Robot Exploration), a continual learning system that autonomously writes and refines robot control programs in a code-as-policy paradigm while compounding experience into a reusable skill library. ASPIRE discovers skills that persist across tasks, simulation and real-world settings, and embodiments. It operates in an open-ended loop with three components: (1) a closed-loop robot execution engine that exposes fine-grained multimodal traces, enabling autonomous failure diagnosis, repair synthesis, and validation; (2) a continually expanding skill library that distills validated fixes into reusable, transferable knowledge; and (3) evolutionary search that generates diverse task sequences and control programs to explore beyond single-trajectory refinement. ASPIRE surpasses prior methods by up to 77% on LIBERO-Pro manipulation under perturbation, 72% on Robosuite bimanual handover, and 32% on BEHAVIOR-1K long-horizon household tasks. Its accumulated library also enables zero-shot generalization to unseen long-horizon tasks: on LIBERO-Pro Long, ASPIRE achieves 31% success versus 4% for prior methods despite their use of test-time reasoning and retries. Finally, simulation-discovered skills provide initial evidence of sim-to-real transfer, substantially reducing real-robot programming effort across different embodiments and robot APIs.
