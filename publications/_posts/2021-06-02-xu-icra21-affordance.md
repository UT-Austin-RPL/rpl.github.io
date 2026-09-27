---
layout: publication
title: "Deep Affordance Foresight: Planning Through What Can Be Done in the Future"
authors: "Danfei Xu, Ajay Mandlekar, Roberto Martín-Martín, Yuke Zhu, Silvio Savarese, Li Fei-Fei"
pub_info_name: "IEEE International Conference on Robotics and Automation (ICRA)"
pub_info_date: May 2021
excerpt: text text text
images:
  thumb: xu-icra21-affordance.png
  main: xu-icra21-affordance.png
paper_link: "https://arxiv.org/abs/2011.08424"
webpage_link: "https://sites.google.com/stanford.edu/daf"
video_link: "https://www.youtube.com/watch?v=3VD-YoF8jHk"
---
Planning in realistic environments requires searching in large planning spaces. Affordances are a powerful concept to simplify this search, because they model what actions can be successful in a given situation. However, the classical notion of affordance is not suitable for long horizon planning because it only informs the robot about the immediate outcome of actions instead of what actions are best for achieving a long-term goal. In this paper, we introduce a new affordance representation that enables the robot to reason about the long-term effects of actions through modeling what actions are afforded in the future, thereby informing the robot the best actions to take next to achieve a task goal. Based on the new representation, we develop a learning-to-plan method, Deep Affordance Foresight (DAF), that learns partial environment models of affordances of parameterized motor skills through trial-and-error. We evaluate DAF on two challenging manipulation domains and show that it can effectively learn to carry out multi-step tasks, share learned affordance representations among different tasks, and learn to plan with high-dimensional image inputs.