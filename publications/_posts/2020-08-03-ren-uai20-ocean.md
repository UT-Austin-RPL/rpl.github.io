---
layout: publication
title: "OCEAN: Online Task Inference for Compositional Tasks with Context Adaptation"
authors: "Hongyu Ren, Yuke Zhu, Jure Leskovec, Anima Anandkumar, Animesh Garg"
pub_info_name: "Conference on Uncertainty in Artificial Intelligence (UAI)"
pub_info_date: August 2020
excerpt: text text text
images:
  thumb: ren-uai20-ocean.png
  main: ren-uai20-ocean.png
paper_link: "http://www.auai.org/uai2020/proceedings/569_main_paper.pdf"
webpage_link: "http://snap.stanford.edu/ocean/"
code_link: "https://github.com/pairlab/ocean"
---
Real-world tasks often exhibit a compositional structure that contains a sequence of simpler sub-tasks. For instance, opening a door requires reaching, grasping, rotating, and pulling the door knob. Such compositional tasks require an agent to reason about the sub-task at hand while orchestrating global behavior accordingly. This can be cast as an online task inference problem, where the current task identity, represented by a context variable, is estimated from the agent’s past experiences with probabilistic inference. Previous approaches have employed simple latent distributions, e.g., Gaussian, to model a single context for the entire task. However, this formulation lacks the expressiveness to capture the composition and transition of the sub-tasks. We propose a variational inference framework OCEAN to perform online task inference for compositional tasks. OCEAN models global and local context variables in a joint latent space, where the global variables represent a mixture of subtasks required for the task, while the local variables capture the transitions between the subtasks. Our framework supports flexible latent distributions based on prior knowledge of the task structure and can be trained in an unsupervised manner. Experimental results show that OCEAN provides more effective task inference with sequential context adaptation and thus leads to a performance boost on complex, multi-stage tasks.