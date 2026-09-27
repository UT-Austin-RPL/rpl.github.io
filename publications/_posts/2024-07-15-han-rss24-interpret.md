---
layout: publication
title: "InterPreT: Interactive Predicate Learning from Language Feedback for Generalizable Task Planning"
authors: "Muzhi Han, Yifeng Zhu, Song-Chun Zhu, Ying Nian Wu, Yuke Zhu"
pub_info_name: "Robotics: Science and Systems (RSS)"
pub_info_date: July 2024
excerpt: text text text
images:
  thumb: han-rss24-InterPreT.png
  main: han-rss24-InterPreT.png
paper_link: "https://arxiv.org/abs/2405.19758"
webpage_link: "https://interpret-robot.github.io/"
code_link: "https://github.com/hmz-15/interactive-predicate-learning"
video_link: "https://www.youtube.com/watch?v=yGdT_0SX8c8&t=5s"
---
Learning abstract state representations and knowledge is crucial for long-horizon robot planning. We present InterPreT, an LLM-powered framework for robots to learn symbolic predicates from language feedback of human non-experts during embodied interaction. The learned predicates provide relational abstractions of the environment state, facilitating the learning of symbolic operators that capture action preconditions and effects. By compiling the learned predicates and operators into a PDDL domain file on-the-fly, InterPreT allows effective planning toward arbitrary in-domain goals using a PDDL planner. In both simulated and real-world robot manipulation domains, we demonstrate that InterPreT reliably uncovers the key predicates and operators governing the environment dynamics. Although learned from simple training tasks, these predicates and operators exhibit strong generalization to novel tasks with significantly higher complexity. In the most challenging generalization setting, InterPreT attains success rates of 73% in simulation and 40% in the real world, substantially outperforming baseline methods.	













