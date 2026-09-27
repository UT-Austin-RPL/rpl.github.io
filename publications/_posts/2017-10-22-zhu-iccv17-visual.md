---
layout: publication
title: "Visual Semantic Planning using Deep Successor Representations"
authors: "Yuke Zhu*, Daniel Gordon*, Eric Kolve, Dieter Fox, Li Fei-Fei, Abhinav Gupta, Roozbeh Mottaghi, Ali Farhadi"
pub_info_name: "International Conference on Computer Vision"
pub_info_date: October 2017
excerpt: text text text
images:
  thumb: zhu-iccv17-visual.png
  main: zhu-iccv17-visual.png
paper_link: "papers/zhu-iccv17-visual.pdf"
webpage_link: "https://ai.stanford.edu/~yukez/iccv2017.html"
code_link: "https://github.com/allenai/ai2thor"
note: "* indicates equal contribution"
---
A crucial capability of real-world intelligent agents is their ability to plan a sequence of actions to achieve their goals in the visual world. In this work, we address the problem of visual semantic planning: the task of predicting a sequence of actions from visual observations that transform a dynamic environment from an initial state to a goal state. Doing so entails knowledge about objects and their affordances, as well as actions and their preconditions and effects. We propose learning these through interacting with a visual and dynamic environment. Our proposed solution involves bootstrapping reinforcement learning with imitation learning. To ensure cross task generalization, we develop a deep predictive model based on successor representations. Our experimental results show near optimal results across a wide range of tasks in the challenging THOR environment.