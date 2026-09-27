---
layout: publication
title: "DrEureka: Language Model Guided Sim-To-Real Transfer"
authors: "Jason Ma*, William Liang*, Hungju Wang, Sam Wang, Yuke Zhu, Linxi Fan, Osbert Bastani, Dinesh Jayaraman"
pub_info_name: "Robotics: Science and Systems (RSS)"
pub_info_date: July 2024
excerpt: text text text
images:
  thumb: ma-rss24-dreureka.png
  main: ma-rss24-dreureka.png
paper_link: "https://eureka-research.github.io/dr-eureka/assets/dreureka-paper.pdf"
webpage_link: "https://eureka-research.github.io/dr-eureka/"
code_link: "https://github.com/eureka-research/DrEureka"
---
Transferring policies learned in simulation to the real world is a promising strategy for acquiring robot skills at scale. However, sim-to-real approaches typically rely on manual design and tuning of the task reward function as well as the simulation physics parameters, rendering the process slow and human-labor intensive. In this paper, we investigate using Large Language Models (LLMs) to automate and accelerate sim-to-real design. Our LLM-guided sim-to-real approach requires only the physics simulation for the target task and automatically constructs suitable reward functions and domain randomization distributions to support real-world transfer. We first demonstrate our approach can discover sim-to-real configurations that are competitive with existing human-designed ones on quadruped locomotion and dexterous manipulation tasks. Then, we showcase that our approach is capable of solving novel robot tasks, such as quadruped balancing and walking atop a yoga ball, without iterative manual design.